package oit.is.hondaken.scheduler.controller;

import java.security.Principal;
import java.sql.Time;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import oit.is.hondaken.scheduler.model.EventMapper;
import oit.is.hondaken.scheduler.model.Todo;
import oit.is.hondaken.scheduler.model.TodoMapper;
import oit.is.hondaken.scheduler.model.day;
import oit.is.hondaken.scheduler.model.event;
import oit.is.hondaken.scheduler.model.scheduleMapper;
import oit.is.hondaken.scheduler.model.timeTable;
import oit.is.hondaken.scheduler.model.TimeTableRecord;
import oit.is.hondaken.scheduler.model.timeTableMapper;
import oit.is.hondaken.scheduler.model.userSetting;
import oit.is.hondaken.scheduler.model.userSettingMapper;
import oit.is.hondaken.scheduler.model.week;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Controller
public class scheduleController {
  private static final Logger logger = LoggerFactory.getLogger(scheduleController.class);

  @Autowired
  private scheduleMapper scheduleMapper;

  @Autowired
  private EventMapper eventMapper;

  @Autowired
  private timeTableMapper timeTableMapper;

  @Autowired
  private userSettingMapper userSettingMapper;

  @Autowired
  TodoMapper todoMapper;

  @RequestMapping("/")
  public String home() {
    return "redirect:/index.html"; // `/index.html` を表示
  }

  @GetMapping("/calendar")
  public String calendar(
      @RequestParam(value = "year", required = false) Integer year,
      @RequestParam(value = "month", required = false) Integer month,
      Model model) {

    final Calendar calendar = Calendar.getInstance();

    if (year == null || month == null) {
      year = calendar.get(Calendar.YEAR);
      month = calendar.get(Calendar.MONTH);
    } else {

      month--;
      if (month < 0) {
        month = 11;
        year--;
      } else if (month > 11) {
        month = 0;
        year++;
      }
    }
    // 現在の日付を today 変数に設定
    Calendar today = Calendar.getInstance();
    int currentYear = today.get(Calendar.YEAR);
    int currentMonth = today.get(Calendar.MONTH) + 1; // 1月が0として扱われるため+1
    int toDay = today.get(Calendar.DAY_OF_MONTH);

    model.addAttribute("todayYear", currentYear);
    model.addAttribute("todayMonth", currentMonth);
    model.addAttribute("todayDay", toDay);
    calendar.clear();
    calendar.set(year, month, 1);

    final Calendar firstDayOfCalendar = (Calendar) calendar.clone();
    firstDayOfCalendar.add(Calendar.DATE, Calendar.SUNDAY - firstDayOfCalendar.get(Calendar.DAY_OF_WEEK));

    final Calendar lastDayOfCalendar = (Calendar) calendar.clone();
    lastDayOfCalendar.add(Calendar.MONTH, 1);
    lastDayOfCalendar.add(Calendar.DATE, -1);
    lastDayOfCalendar.set(Calendar.DAY_OF_WEEK, Calendar.SATURDAY);

    final List<List<day>> weekList = new ArrayList<>();
    final Calendar day = (Calendar) firstDayOfCalendar.clone();
    while (day.compareTo(lastDayOfCalendar) <= 0) {
      final List<day> weekDays = new ArrayList<>();
      for (int i = 0; i < 7; i++) {
        day currentDay = new day(day.get(Calendar.DAY_OF_MONTH));

        List<String> eventTitles = eventMapper.getEventTitleForDate(
            day.get(Calendar.YEAR),
            day.get(Calendar.MONTH) + 1,
            day.get(Calendar.DAY_OF_MONTH));
        for (String title : eventTitles) {
          currentDay.addEvent(title);
        }

        weekDays.add(currentDay);
        day.add(Calendar.DATE, 1);
      }
      weekList.add(weekDays);
    }
    week week = new week();
    week.setWeekList(weekList);

    model.addAttribute("week", week);
    model.addAttribute("year", year);
    model.addAttribute("month", month + 1);
    return "calendar.html";
  }

  @GetMapping("/calendar/event")
  public String eventDetails(
      @RequestParam("date") String date,
      Model model) {

    String[] dateParts = date.split("-");
    int year = Integer.parseInt(dateParts[0]);
    int month = Integer.parseInt(dateParts[1]);
    int day = Integer.parseInt(dateParts[2]);

    List<event> events = eventMapper.getEventsForDate(year, month, day);

    model.addAttribute("events", events);
    model.addAttribute("selectedDate", date);

    return "eventDetails.html";
  }

  @PostMapping("/calendar/addEvent")
  @Transactional
  public String addEvent(
      @RequestParam("date") String date,
      @RequestParam("title") String title,
      @RequestParam("description") String description,
      @RequestParam(value = "startTime", required = false) String startTime,
      @RequestParam(value = "endTime", required = false) String endTime,
      @RequestParam(value = "location", required = false) String location) {

    String[] dateParts = date.split("-");
    int startYear = Integer.parseInt(dateParts[0]);
    int startMonth = Integer.parseInt(dateParts[1]);
    int startDay = Integer.parseInt(dateParts[2]);
    event event = new event();
    event.setStartYear(startYear);
    event.setStartMonth(startMonth);
    event.setStartDay(startDay);
    event.setTitle(title);
    event.setDescription(description);

    logger.info(startTime);

    event.setStartTime(Time.valueOf(startTime + ":00")); // 時間のフォーマットを "HH:mm:ss" に変更
    event.setEndTime(Time.valueOf(endTime + ":00")); // 時間のフォーマットを "HH:mm:ss" に変更

    event.setLocation(location);
    eventMapper.addEvent(event);

    return "redirect:/calendar";
  }

  @GetMapping("/timetable")
  public String gotle(ModelMap model, Principal prin) {

    String loginUser = prin.getName();

    int id = userSettingMapper.selectIdByName(loginUser);
    timeTable timeTable = timeTableMapper.selectAllById(id);
    TimeTableRecord timeTableRecord = new TimeTableRecord(timeTable, scheduleMapper);

    model.addAttribute("loginUser", loginUser);
    model.addAttribute("id", id);
    model.addAttribute("timeTableRecord", timeTableRecord);
    return "timetable.html";
  }

  @GetMapping("/register")
  public String goreg() {
    return "register.html";
  }

  @PostMapping("/regfin")
  public String regfin(@RequestParam String gakuseki, @RequestParam String mail, @RequestParam String pass,
      ModelMap model) {
    ArrayList<String> Numbers = userSettingMapper.selectNumber();
    ArrayList<String> Mails = userSettingMapper.selectMail();

    int flag = 0;
    for (String num : Numbers) {
      if (gakuseki.equals(num)) {
        flag = 1;
      }
    }
    for (String addr : Mails) {
      if (mail.equals(addr)) {
        flag = 2;
      }
    }
    if (flag == 0) {
      userSetting user = new userSetting();
      user.setMyNumber(gakuseki);
      user.setMail(mail);
      BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
      String hashedPassword = encoder.encode(pass);
      user.setMyPass(hashedPassword);
      user.setUserRole("STUDENT");
      userSettingMapper.insertuserSetting(user);
      model.addAttribute("user", user);
    }
    model.addAttribute("flag", flag);
    return "regfin.html";

  }

  @GetMapping("/todolist")
  public String getTodoList(Model model, Principal prin) {

    List<Todo> todos = todoMapper.getAllTodos();
    model.addAttribute("todos", todos);
    model.addAttribute("newTodo", new Todo());
    return "todolist.html";
  }

  @PostMapping("/todolist/add")
  public String addTodo(@ModelAttribute Todo todo) {
    todoMapper.insertTodo(todo);
    return "redirect:/todolist";
  }

  @PostMapping("/todolist/update/{id}")
  public String updateTodoCompleted(@PathVariable int id, @RequestParam boolean completed) {
    Todo todo = new Todo();
    todo.setId(id);
    todo.setCompleted(completed); // completedの値を設定
    todoMapper.updateTodoCompleted(todo); // DB更新
    return "redirect:/todolist";
  }

  @PostMapping("/todolist/delete/{id}")
  public String deleteTodo(@PathVariable int id) {
    todoMapper.deleteTodoById(id); // DB削除処理
    return "redirect:/todolist"; // 削除後、TODOリストにリダイレクト
  }

}
