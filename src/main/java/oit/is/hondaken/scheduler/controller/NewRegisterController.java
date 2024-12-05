package oit.is.hondaken.scheduler.controller;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.PostMapping;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestParam;

import oit.is.hondaken.scheduler.model.UserSetting;
import oit.is.hondaken.scheduler.model.UserSettingMapper;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;

import java.util.Random;

@Controller
public class NewRegisterController {

  @Autowired
  private UserSettingMapper userSettingMapper;

  @Autowired
  private MailSender mailSender;

  @GetMapping("/register")
  public String goreg() {
    return "register.html";
  }

  @GetMapping("/admin")
  public String sending() {
    return "codechk.html";
  }

  @PostMapping("/admin")
  public String codechk(@RequestParam String gakuseki, @RequestParam String mail, @RequestParam String pass,
      @RequestParam String myname,
      ModelMap model) {
    Random rnd = new Random();
    ArrayList<String> Numbers = userSettingMapper.selectNumber();
    ArrayList<String> Mails = userSettingMapper.selectMail();
    String admin_code = rnd.nextInt(1000000) + "";

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
    if (flag == 0) {// ここからメール送信
      SimpleMailMessage message = new SimpleMailMessage();
      message.setTo(mail);
      message.setFrom("");
      // // こことaporication propatoiesのメアドの入力を忘れないようにすること！
      message.setSubject("認証コードをお送りします。");
      message.setText("認証コード:" + admin_code);
      // メール送信を実施する。
      mailSender.send(message);
      model.addAttribute("mail", mail);
      model.addAttribute("gakuseki", gakuseki);
      model.addAttribute("pass", pass);
      model.addAttribute("myname", myname);
      model.addAttribute("admin_code", admin_code);
    }
    model.addAttribute("flag", flag);

    return "codechk.html";
  }

  @PostMapping("/regfin")
  public String regfin(@RequestParam String gakuseki, @RequestParam String mail, @RequestParam String pass,
      @RequestParam String myname,
      ModelMap model) {

    UserSetting user = new UserSetting();
    user.setMyNumber(gakuseki);
    user.setUserName(myname);
    user.setMail(mail);
    BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
    String hashedPassword = encoder.encode(pass);
    user.setMyPass(hashedPassword);
    user.setUserRole("STUDENT");
    user.setActive(false);
    userSettingMapper.insertuserSetting(user);
    model.addAttribute("user", user);
    return "regfin.html";
  }
}
