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
import java.util.Map;
import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import oit.is.hondaken.scheduler.model.EventMapper;
import oit.is.hondaken.scheduler.model.Schedule;
import oit.is.hondaken.scheduler.model.Todo;
import oit.is.hondaken.scheduler.model.TodoMapper;
import oit.is.hondaken.scheduler.model.Day;
import oit.is.hondaken.scheduler.model.Event;
import oit.is.hondaken.scheduler.model.ScheduleMapper;
import oit.is.hondaken.scheduler.model.TimeTable;
import oit.is.hondaken.scheduler.model.TimeTableRecord;
import oit.is.hondaken.scheduler.model.TimeTableMapper;
import oit.is.hondaken.scheduler.model.UserSetting;
import oit.is.hondaken.scheduler.model.UserSettingMapper;
import oit.is.hondaken.scheduler.model.Week;
import oit.is.hondaken.scheduler.service.TimeTableService;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@Controller
public class ScheduleController {
  private static final Logger logger = LoggerFactory.getLogger(ScheduleController.class);

  @Autowired
  private ScheduleMapper scheduleMapper;

  @Autowired
  private EventMapper eventMapper;

  @Autowired
  private TimeTableMapper timeTableMapper;

  @Autowired
  private UserSettingMapper userSettingMapper;

  @Autowired
  TodoMapper todoMapper;

  @Autowired
  private TimeTableService timeTableService;

  @RequestMapping("/")
  public String home() {
    return "redirect:/index.html"; // `/index.html` を表示
  }

  @GetMapping("/calendar")
  public String calendar(
      @RequestParam(value = "year", required = false) Integer year,
      @RequestParam(value = "month", required = false) Integer month,
      Model model, Principal prin) {
    final Calendar calendar = Calendar.getInstance();
    String myNumber = prin.getName();

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

    final List<List<Day>> weekList = new ArrayList<>();
    final Calendar day = (Calendar) firstDayOfCalendar.clone();
    while (day.compareTo(lastDayOfCalendar) <= 0) {
      final List<Day> weekDays = new ArrayList<>();
      for (int i = 0; i < 7; i++) {
        int dayYear = day.get(Calendar.YEAR);
        int dayMonth = day.get(Calendar.MONTH) + 1; // 月を0から1ベースに修正
        Day currentDay = new Day(day.get(Calendar.DAY_OF_MONTH), dayMonth, dayYear);

        java.sql.Date sqlDate = new java.sql.Date(day.getTimeInMillis());
        List<String> eventTitles = eventMapper.getEventTitleForDateOnlyMe(sqlDate, myNumber);

        for (String title : eventTitles) {
          currentDay.addEvent(title);
        }

        weekDays.add(currentDay);
        day.add(Calendar.DATE, 1);
      }
      weekList.add(weekDays);
    }
    Week week = new Week();
    week.setWeekList(weekList);

    // 新規ユーザーの時間割を作成
    if (timeTableMapper.selectMyNumber(myNumber) == null) {
      timeTableMapper.insertTimeTable(myNumber);
    }

    model.addAttribute("week", week);
    model.addAttribute("year", year);
    model.addAttribute("month", month + 1);
    return "calendar.html";
  }

  @GetMapping("/calendar/event")
  public String eventDetails(
      @RequestParam("date") String date,
      Model model, Principal prin) {

    String myNumber = prin.getName();
    java.sql.Date sqlDate = java.sql.Date.valueOf(date); // "YYYY-MM-DD" を直接 Date に変換
    List<Event> events = eventMapper.getEventsForDateOnlyMe(sqlDate, myNumber);
    model.addAttribute("events", events);
    model.addAttribute("selectedDate", date);

    return "eventDetails.html";
  }

  @PostMapping("/calendar/addEvent")
  @Transactional
  public String addEvent(
      @RequestParam("startDate") String startDate, // 開始日
      @RequestParam("endDate") String endDate, // 終了
      @RequestParam("title") String title,
      @RequestParam("description") String description,
      @RequestParam(value = "startTime", required = false) String startTime,
      @RequestParam(value = "endTime", required = false) String endTime,
      @RequestParam(value = "location", required = false) String location, Principal prin) {
    String myNumber = prin.getName();
    java.sql.Date sqlStartDate = java.sql.Date.valueOf(startDate);
    java.sql.Date sqlEndDate = (endDate == null || endDate.isEmpty())
        ? sqlStartDate
        : java.sql.Date.valueOf(endDate);

    Event event = new Event();
    event.setMyNumber(myNumber);
    event.setStartDate(sqlStartDate);
    event.setEndDate(sqlEndDate);
    event.setTitle(title);
    event.setDescription(description);

    logger.info(startTime);

    event.setStartTime(Time.valueOf(startTime + ":00")); // 時間のフォーマットを "HH:mm:ss" に変更
    event.setEndTime(Time.valueOf(endTime + ":00")); // 時間のフォーマットを "HH:mm:ss" に変更

    event.setLocation(location);
    eventMapper.addEvent(event);

    return "redirect:/calendar";
  }

  @PostMapping("/calendar/deleteEvent")
  @Transactional
  public String deleteEvent(@RequestParam("eventId") int eventId,@RequestParam("date") String date, Principal prin) {
    // イベントの削除
    eventMapper.deleteEventById(eventId);

    return "redirect:/calendar/event?date="+date;
  }

  @GetMapping("/timetable")
  public String timetable(ModelMap model, Principal prin, @ModelAttribute("message") String message) {
    String myNumber = prin.getName();
    TimeTable timeTable = timeTableMapper.selectByNum(myNumber);
    TimeTableRecord timeTableRecord = new TimeTableRecord(timeTable, scheduleMapper);
    boolean showSaturday = timeTableMapper.selectShowSaturday(myNumber);

    System.out.println("message:" + message);

    model.addAttribute("myNumber", myNumber);
    model.addAttribute("timeTableRecord", timeTableRecord);
    model.addAttribute("showSaturday", showSaturday);
    model.addAttribute("message", message);

    return "timetable.html";
  }

  @PostMapping("/saveSettings")
  public String saveSettings(
        Principal prin,
        @RequestParam(value = "toggleSaturday", required = false) Integer toggleSaturday,
        RedirectAttributes redirectAttributes,
        ModelMap model) {
    String myNumber = prin.getName();

    boolean showSaturday = toggleSaturday != null && toggleSaturday == 1;
    String message = showSaturday ? "土曜日を表示します" : "土曜日を非表示にします";

    timeTableMapper.updateShowSaturday(myNumber, showSaturday);

    redirectAttributes.addFlashAttribute("message", message);

    return "redirect:/timetable";
  }

  @PostMapping("/removeClass")
  public String removeClass(
      @RequestParam("day") String day,
      @RequestParam("period") String period,
      @RequestParam("removeValue") String removeValue, RedirectAttributes redirectAttributes, Principal prin) {

    String myNumber = prin.getName();
    String message = timeTableService.removeClass(myNumber, day, period);
    redirectAttributes.addFlashAttribute("message", removeValue + message);

    return "redirect:/timetable";
  }

  @GetMapping("/timetable/addClass")
  public String addClass(@RequestParam("day") String day, @RequestParam("period") String period, ModelMap model, Principal prin) {

    String myNumber = prin.getName();

    // 学年の計算
    int myGrade = Integer.parseInt(myNumber.substring(1, 3));
    LocalDate currentDate = LocalDate.now();
    int currentYear = currentDate.getYear();
    int currentMonth = currentDate.getMonthValue();

    if (currentMonth >= 1 && currentMonth <= 3) {
      currentYear--;
    }
    myGrade = currentYear - 2000 - myGrade + 1;

    String department = Map.of(
        'B', "IS",
        'Q', "IC",
        'N', "IN",
        'J', "ID",
        'C', "IM"
    ).getOrDefault(myNumber.charAt(0), "");

    List<Schedule> targetClasses = timeTableService.getTargetClasses(period, day, department, myGrade);
    timeTableService.addClassesByContinuous(targetClasses, true, period, day, department, myGrade);
    timeTableService.addClassesByDepartment(targetClasses, period, day, "English", myGrade);
    timeTableService.addClassesByDepartment(targetClasses, period, day, "Science", myGrade);
    timeTableService.addClassesByDepartment(targetClasses, period, day, "Humanities", myGrade);
    timeTableService.addClassesByDepartment(targetClasses, period, day, "Career", myGrade);
    timeTableService.addClassesByDepartment(targetClasses, period, day, "Sports", myGrade);

    model.addAttribute("targetClasses", targetClasses);
    model.addAttribute("day", day);
    model.addAttribute("period", period);

    return "addClass.html";
  }

  @PostMapping("/timetable/registerClass")
  public String registerClass(
      @RequestParam("classId") String classId,
      @RequestParam("day") String day,
      @RequestParam("period") String period,
      RedirectAttributes redirectAttributes, Principal prin) {

    String myNumber = prin.getName();
    String message = timeTableService.registerClass(myNumber, day, period, classId);
    redirectAttributes.addFlashAttribute("message", scheduleMapper.selectClassNameById(classId) + message);

    return "redirect:/timetable";
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
      UserSetting user = new UserSetting();
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
    String myNuber = prin.getName();
    List<Todo> todos = todoMapper.getTodosByMyNuber(myNuber);
    model.addAttribute("todos", todos);
    model.addAttribute("newTodo", new Todo());
    return "todolist.html";
  }

  @PostMapping("/todolist/add")
  public String addTodo(@ModelAttribute Todo todo, Principal prin) {
    String myNuber = prin.getName();
    todo.setMyNumber(myNuber);
    todoMapper.insertTodo(todo);
    return "redirect:/todolist";
  }

  @PostMapping("/todolist/update/{id}")
  public String updateTodoCompleted(@PathVariable int id, @RequestParam boolean completed, Principal prin) {
    String myNuber = prin.getName();
    Todo todo = new Todo();
    todo.setMyNumber(myNuber);
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
