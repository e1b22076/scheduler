package oit.is.hondaken.scheduler.controller;

import java.security.Principal;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;
import java.util.Map;
import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import oit.is.hondaken.scheduler.model.Schedule;
import oit.is.hondaken.scheduler.model.Todo;
import oit.is.hondaken.scheduler.model.TodoMapper;
import oit.is.hondaken.scheduler.model.ScheduleMapper;
import oit.is.hondaken.scheduler.model.TimeTable;
import oit.is.hondaken.scheduler.model.TimeTableRecord;
import oit.is.hondaken.scheduler.model.TimeTableMapper;
import oit.is.hondaken.scheduler.service.TimeTableService;

@Controller
public class ClassController {

  @Autowired
  private ScheduleMapper scheduleMapper;

  @Autowired
  private TimeTableMapper timeTableMapper;

  @Autowired
  TodoMapper todoMapper;

  @Autowired
  private TimeTableService timeTableService;

  @GetMapping("/timetable")
  public String timetable(ModelMap model, Principal prin, @ModelAttribute("message") String message) {
    String myNumber = prin.getName();
    TimeTable timeTable = timeTableMapper.selectByNum(myNumber);
    TimeTableRecord timeTableRecord = new TimeTableRecord(timeTable, scheduleMapper);
    boolean showSaturday = timeTableMapper.selectShowSaturday(myNumber);

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
  public String addClass(@RequestParam("day") String day, @RequestParam("period") String period, ModelMap model,
      Principal prin) {

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
