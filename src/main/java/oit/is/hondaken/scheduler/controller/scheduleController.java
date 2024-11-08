package oit.is.hondaken.scheduler.controller;

import org.springframework.web.bind.annotation.GetMapping;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import oit.is.hondaken.scheduler.model.EventMapper;
import oit.is.hondaken.scheduler.model.day;
import oit.is.hondaken.scheduler.model.week;

@Controller
public class scheduleController {

   @Autowired
  private EventMapper eventMapper;

  @GetMapping("/calendar")
  public String calendar() {
    return "calendar.html";
  }

  @GetMapping("/calendar2")
  public String calendar2(
      @RequestParam(value = "year", required = false) Integer year,
      @RequestParam(value = "month", required = false) Integer month,
      Model model) {

    final Calendar calendar = Calendar.getInstance();

    // If no parameters are provided, use the current year and month
    if (year == null || month == null) {
      year = calendar.get(Calendar.YEAR);
      month = calendar.get(Calendar.MONTH);
    } else {
      // Correct for 1-based month input by subtracting 1 (if the month param is 10
      // for October)
      month--; // Adjust to zero-based indexing for Calendar class
      if (month < 0) { // Roll back to December of the previous year if month is below 0
        month = 11;
        year--;
      } else if (month > 11) { // Move forward to January of the next year if month exceeds 11
        month = 0;
        year++;
      }
    }

    calendar.clear();
    calendar.set(year, month, 1);

    // Get the first and last days of the calendar display range
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

        // Fetch event title if it exists
        String eventTitle = eventMapper.getEventTitleForDate(
            day.get(Calendar.YEAR),
            day.get(Calendar.MONTH) + 1,
            day.get(Calendar.DAY_OF_MONTH));
        currentDay.setEvent(eventTitle);

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
    return "calendar2.html";
  }

}
