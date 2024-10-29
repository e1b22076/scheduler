package oit.is.hondaken.scheduler.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.stereotype.Controller;

@Controller
public class scheduleController {

  @GetMapping("/calendar")
  public String calendar() {
    return "calendar.html";
  }
}
