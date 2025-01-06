package oit.is.hondaken.scheduler.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import oit.is.hondaken.scheduler.model.Assignment;
import oit.is.hondaken.scheduler.model.AssignmentMapper;
import oit.is.hondaken.scheduler.model.AssignmentTask;
import oit.is.hondaken.scheduler.model.AssignmentTaskMapper;
import oit.is.hondaken.scheduler.model.AssignmentTaskPlus;
import oit.is.hondaken.scheduler.model.Schedule;
import oit.is.hondaken.scheduler.model.ScheduleMapper;

@Controller
public class TeacherSettingController {
  private final Logger logger = LoggerFactory.getLogger(TeacherSettingController.class);

  @Autowired
  private AssignmentMapper assignmentMapper;

  @Autowired
  private ScheduleMapper scheduleMapper;

  @Autowired
  private AssignmentTaskMapper assignmentTaskMapper;

  @GetMapping("/teacherSetting")
  public String teacherSetting(Model model, Principal prin) {
    String myNumber = prin.getName();
    List<Assignment> assignments = assignmentMapper.findByUserId(myNumber);
    model.addAttribute("assignments", assignments);
    return "teacherSetting.html";
  }

  @GetMapping("/teacherSetting/search")
  public String teacherAddClass(ModelMap model, Principal prin) {
    String myNumber = prin.getName();
    List<Schedule> schedules = scheduleMapper.selectTeacherAllOtherThanMyself(myNumber);
    model.addAttribute("flag", false);
    model.addAttribute("targetClasses", schedules);
    return "teacherAddClass.html";
  }

  @GetMapping("/teacherSetting/list")
  public String teacherClassList(ModelMap model, Principal prin) {
    String myNumber = prin.getName();
    List<Schedule> schedules = scheduleMapper.selectTeacherAll(myNumber);
    model.addAttribute("flag", true);
    model.addAttribute("targetClasses", schedules);
    return "teacherAddClass.html";
  }

  @PostMapping("/teacherSetting")
  public String teacherSettingReq(@RequestParam(value = "view", defaultValue = "list") String view,
      ModelMap model, Principal prin) {
    String myNumber = prin.getName();
    List<Schedule> schedules;

    if ("list".equals(view)) {
      schedules = scheduleMapper.selectTeacherAll(myNumber);
      model.addAttribute("flag", true);
    } else {
      schedules = scheduleMapper.selectTeacherAllOtherThanMyself(myNumber);
      model.addAttribute("flag", false);
    }
    model.addAttribute("targetClasses", schedules);
    return "teacherAddClass.html";
  }

  @PostMapping("/teacherSetting/registerClass")
  public String registerClass(@RequestParam("classId") String scheduleId, Principal principal, ModelMap model) {
    String userId = principal.getName(); // `myNumber` を取得
    Assignment assignment = new Assignment();
    assignment.setScheduleId(scheduleId);
    assignment.setUserId(userId);
    assignmentMapper.insertAssignment(assignment);
    List<Schedule> schedules = scheduleMapper.selectTeacherAllOtherThanMyself(userId);
    model.addAttribute("flag", false);
    model.addAttribute("targetClasses", schedules);
    return "teacherAddClass.html";
  }

  @PostMapping("/teacherSetting/deleteClass")
  public String deleteClass(@RequestParam("classId") String scheduleId, Principal principal, ModelMap model) {
    String userId = principal.getName(); // `myNumber` を取得
    assignmentMapper.deleteAssignment(scheduleId, userId);
    List<Schedule> schedules = scheduleMapper.selectTeacherAll(userId);
    model.addAttribute("flag", true);
    model.addAttribute("targetClasses", schedules);
    return "teacherAddClass.html";
  }

  @GetMapping("/teacherSetting/workSetting")
  public String workSetting(Model model, Principal prin) {
    String myNumber = prin.getName();
    List<Schedule> schedules = scheduleMapper.selectTeacherAll(myNumber);

    model.addAttribute("targetClasses", schedules);

    List<AssignmentTaskPlus> assignmentTasks = assignmentTaskMapper.selectByUserId(myNumber);

    model.addAttribute("assignmentTasks", assignmentTasks);

    return "workSetting.html";
  }

  @PostMapping("/teacherSetting/workSetting/set")
  public String setWork(@RequestParam("lessonCount") int lessonCount,
      @RequestParam(value = "detail", required = false) String detail, // detailはNULL可能性があるためoptionalにする
      @RequestParam("content") String content,
      @RequestParam("deadline") String deadline,
      @RequestParam("ScheduleId") String ScheduleId, Principal principal, Model model) {

    String userId = principal.getName(); // ユーザーIDを取得
    // detailがNULLの場合は空文字
    if (detail == null) {
      detail = "";
    }

    // 新しいAssignmentオブジェクトを作成
    int assignmentId = assignmentMapper.findByScheduleId(userId, ScheduleId);
    AssignmentTask assignmentTask = new AssignmentTask();
    assignmentTask.setLessonCount(lessonCount);
    assignmentTask.setAssignmentId(assignmentId);
    assignmentTask.setDetail(detail); // この行だけで十分
    assignmentTask.setContent(content);
    assignmentTask.setDeadline(deadline);

    // データベースに新しい課題情報を保存
    assignmentTaskMapper.insertAssignmentTask(assignmentTask);

    // 課題設定後、授業情報を更新してページに渡す
    List<Schedule> schedules = scheduleMapper.selectTeacherAll(userId);
    model.addAttribute("targetClasses", schedules);

    List<AssignmentTaskPlus> assignmentTasks = assignmentTaskMapper.selectByUserId(userId);

    model.addAttribute("assignmentTasks", assignmentTasks);

    return "workSetting.html";
  }

  @PostMapping("/teacherSetting/workSetting/delete")
  public String deleteAssignmentTask(@RequestParam("assignmentTaskId") int taskId) {
    assignmentTaskMapper.deleteById(taskId); // taskIdを基に削除処理を実行
    return "redirect:/teacherSetting/workSetting";
  }

}
