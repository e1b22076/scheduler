package oit.is.hondaken.scheduler.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginConfig {
  @RequestMapping("/login")
  public String showLoginForm(Model model) {
    // ログイン画面へ遷移。
    return "login.html";
  }
}
