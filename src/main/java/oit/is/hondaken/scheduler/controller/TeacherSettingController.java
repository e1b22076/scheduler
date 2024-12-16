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

import oit.is.hondaken.scheduler.model.Assignment;
import oit.is.hondaken.scheduler.model.AssignmentMapper;
import oit.is.hondaken.scheduler.model.Schedule;
import oit.is.hondaken.scheduler.model.ScheduleMapper;

@Controller
public class TeacherSettingController {
  private final Logger logger = LoggerFactory.getLogger(TeacherSettingController.class);


  @Autowired
  private AssignmentMapper assignmentMapper;

  @Autowired
  private ScheduleMapper scheduleMapper;

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
  public String workSettig(Model model, Principal prin) {
    logger.info("遷移はできている");
    String myNumber = prin.getName();
    List<Schedule> schedules = scheduleMapper.selectTeacherAll(myNumber);
    logger.info("リスト取得");
    model.addAttribute("targetClasses", schedules);
    return "workSetting.html";
  }
}
