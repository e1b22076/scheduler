package oit.is.hondaken.scheduler.controller;

import java.security.Principal;
import java.sql.Time;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import oit.is.hondaken.scheduler.model.EventMapper;
import oit.is.hondaken.scheduler.model.PermissionToView;
import oit.is.hondaken.scheduler.model.PermissionToViewMapper;
import oit.is.hondaken.scheduler.model.TodoMapper;
import oit.is.hondaken.scheduler.model.Day;
import oit.is.hondaken.scheduler.model.Day2;
import oit.is.hondaken.scheduler.model.Event;
import oit.is.hondaken.scheduler.model.TimeTableMapper;
import oit.is.hondaken.scheduler.model.UserSetting;
import oit.is.hondaken.scheduler.model.UserSettingMapper;
import oit.is.hondaken.scheduler.model.Week;
import oit.is.hondaken.scheduler.model.Week2;

@Controller
public class ScheduleController {
  private static final Logger logger = LoggerFactory.getLogger(ScheduleController.class);

  @Autowired
  private EventMapper eventMapper;

  @Autowired
  private TimeTableMapper timeTableMapper;

  @Autowired
  private UserSettingMapper userSettingMapper;

  @Autowired
  TodoMapper todoMapper;

  @Autowired
  private PermissionToViewMapper permissionMapper;

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
        List<Event> events = eventMapper.getEventsForDateOnlyMe(sqlDate, myNumber);

        for (Event event : events) {
          currentDay.addEvent(event);
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
  public String deleteEvent(@RequestParam("eventId") int eventId, @RequestParam("date") String date, Principal prin) {
    // イベントの削除
    eventMapper.deleteEventById(eventId);

    return "redirect:/calendar/event?date=" + date;
  }

  @GetMapping("/join")
  public String join(Model model, Principal prin) {
    String myNumber = prin.getName();
    ArrayList<UserSetting> users = userSettingMapper.selectAllbymyNumber(myNumber);
    model.addAttribute("users", users);
    boolean requestExist = permissionMapper.RequestexistsByTarget(myNumber);
    if (requestExist) {
      model.addAttribute("message", "カレンダーの閲覧を申請されています。");
    }
    return "join.html";
  }

  @GetMapping("/join/calendar")
  public String calendar(
      @RequestParam(value = "year", required = false) Integer year,
      @RequestParam(value = "month", required = false) Integer month,
      @RequestParam(value = "userNumber", required = true) String userNumber, // 相手の学籍番号
      @RequestParam(value = "showOwnEvents", defaultValue = "false") String showOwnEvents, Model model,
      Principal prin) {
    if (!"true".equalsIgnoreCase(showOwnEvents) && !"false".equalsIgnoreCase(showOwnEvents)) {
      showOwnEvents = "false";
    }
    boolean includeOwnEvents = "true".equalsIgnoreCase(showOwnEvents);
    boolean includeOtherEvents = "false".equalsIgnoreCase(showOwnEvents);

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
    if (includeOtherEvents) {
      final List<List<Day>> weekList = new ArrayList<>();
      final Calendar day = (Calendar) firstDayOfCalendar.clone();
      while (day.compareTo(lastDayOfCalendar) <= 0) {
        final List<Day> weekDays = new ArrayList<>();
        for (int i = 0; i < 7; i++) {
          int dayYear = day.get(Calendar.YEAR);
          int dayMonth = day.get(Calendar.MONTH) + 1; // 月を0から1ベースに修正
          Day currentDay = new Day(day.get(Calendar.DAY_OF_MONTH), dayMonth, dayYear);

          java.sql.Date sqlDate = new java.sql.Date(day.getTimeInMillis());
          List<Event> events = eventMapper.getEventsForDateOnlyMe(sqlDate, userNumber);

          for (Event event : events) {
            currentDay.addEvent(event);
          }

          weekDays.add(currentDay);
          day.add(Calendar.DATE, 1);
        }
        weekList.add(weekDays);
      }
      Week week = new Week();
      week.setWeekList(weekList);

      model.addAttribute("week", week);
      model.addAttribute("year", year);
      model.addAttribute("month", month + 1);
      model.addAttribute("userNumber", userNumber);
    } else if (includeOwnEvents) {
      String myNumber = prin.getName();
      final List<List<Day2>> weekList = new ArrayList<>();
      final Calendar day = (Calendar) firstDayOfCalendar.clone();
      while (day.compareTo(lastDayOfCalendar) <= 0) {
        final List<Day2> weekDays = new ArrayList<>();
        for (int i = 0; i < 7; i++) {
          int dayYear = day.get(Calendar.YEAR);
          int dayMonth = day.get(Calendar.MONTH) + 1; // 月を0から1ベースに修正
          Day2 currentDay = new Day2(day.get(Calendar.DAY_OF_MONTH), dayMonth, dayYear);

          java.sql.Date sqlDate = new java.sql.Date(day.getTimeInMillis());
          List<Event> events = eventMapper.getEventsForDateOnlyMe(sqlDate, userNumber);

          for (Event event : events) {
            currentDay.addEvent(event);
          }
          List<Event> myEvents = eventMapper.getEventsForDateOnlyMe(sqlDate, myNumber);
          for (Event event : myEvents) {
            currentDay.addmyEvent(event);
          }

          weekDays.add(currentDay);
          day.add(Calendar.DATE, 1);
        }
        weekList.add(weekDays);
      }
      Week2 week = new Week2();
      week.setWeekList(weekList);

      model.addAttribute("week2", week);
      model.addAttribute("year", year);
      model.addAttribute("month", month + 1);
      model.addAttribute("userNumber", userNumber);
      model.addAttribute("myNumber", myNumber);
    }
    return "joinCalendar.html";
  }

  @GetMapping("/join/permissionStatus")
  public String permissionStatus(@RequestParam String userNumber, Model model, Principal prin) {
    String myNumber = prin.getName();

    Boolean isApproved = permissionMapper.getIsApproved(myNumber, userNumber);

    boolean flag = permissionMapper.existsByRequesterAndTarget(myNumber, userNumber);

    if (Boolean.TRUE.equals(isApproved)) {
      return "redirect:/join/calendar?userNumber=" + userNumber;
    } else if (Boolean.FALSE.equals(isApproved) || (isApproved == null && flag)) {
      List<PermissionToView> permissions = permissionMapper.getPermissions(myNumber);
      model.addAttribute("permissions", permissions);
      if (isApproved == null && flag) {
        model.addAttribute("userNumber", userNumber);
        model.addAttribute("message", "申請はすでにされています。");
      } else if (Boolean.FALSE.equals(isApproved)) {
        model.addAttribute("userNumber", userNumber);
        model.addAttribute("message", "カレンダーの閲覧は許可されていません");
      }
      if (permissionMapper.existsByTarget(myNumber)) {
        List<PermissionToView> requests = permissionMapper.getPermissionsbytarget(myNumber);
        model.addAttribute("requests", requests);
      }

      return "permissionStatus.html";
    } else {
      model.addAttribute("myNumber", myNumber);
      model.addAttribute("userNumber", userNumber);
      return "request.html";
    }
  }

  @PostMapping("/join/requestPermission")
  public String requestPermission(@RequestParam String userNumber, Model model, Principal prin) {
    String myNumber = prin.getName();

    // 新しい申請をデータベースに追加
    PermissionToView newPermission = new PermissionToView();
    newPermission.setRequesterNumber(myNumber);
    newPermission.setTargetNumber(userNumber);
    newPermission.setApproved(null);

    permissionMapper.insertPermission(newPermission);

    // 確認用のメッセージを表示
    model.addAttribute("message", "許可申請が送信されました。");
    model.addAttribute("userNumber", userNumber);
    List<PermissionToView> permissions = permissionMapper.getPermissions(myNumber);
    model.addAttribute("permissions", permissions);
    if (permissionMapper.existsByTarget(myNumber)) {
      List<PermissionToView> requests = permissionMapper.getPermissionsbytarget(myNumber);
      model.addAttribute("requests", requests);
    }
    return "permissionStatus.html";
  }

  @GetMapping("/join/permissionStatusShow")
  public String permissionStatusShow(Model model, Principal prin) {
    String myNumber = prin.getName();
    List<PermissionToView> permissions = permissionMapper.getPermissions(myNumber);
    model.addAttribute("permissions", permissions);
    if (permissionMapper.existsByTarget(myNumber)) {
      List<PermissionToView> requests = permissionMapper.getPermissionsbytarget(myNumber);
      model.addAttribute("requests", requests);
    }
    return "permissionStatus.html";
  }

  @PostMapping("/join/updatePermission")
  public String updatePermissionStatus(
      @RequestParam int id,
      @RequestParam boolean isApproved) {
    permissionMapper.updatePermissionStatus(id, isApproved);
    return "redirect:/join/permissionStatusShow";
  }

}
