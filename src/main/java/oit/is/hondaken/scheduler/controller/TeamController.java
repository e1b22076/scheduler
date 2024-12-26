package oit.is.hondaken.scheduler.controller;

import java.security.Principal;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;

@Controller
public class TeamController {

  @GetMapping("/team")
  public String timetable(ModelMap model, Principal prin) {
    return "team.html";
  }
}
