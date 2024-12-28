package oit.is.hondaken.scheduler.controller;

import org.springframework.web.bind.annotation.GetMapping;
import java.security.Principal;
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
import java.util.regex.Pattern;

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
      message.setFrom("isdev24@ubuntu205");
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
    Pattern mail_STUDENT = Pattern.compile("^e1[a-z]\\d{5}@oit\\.ac\\.jp$");
    if (mail_STUDENT.matcher(mail).matches()) {
      user.setUserRole("STUDENT");
    } else {
      user.setUserRole("TEACHER");
    }
    user.setActive(false);
    userSettingMapper.insertuserSetting(user);
    model.addAttribute("user", user);
    return "regfin.html";
  }

  @GetMapping("/setting")
  public String setting() {
    return "setting.html";
  }

  @GetMapping("/setting/password")
  public String setting_pass() {
    return "setPass.html";
  }

  @GetMapping("/setting/user-info")
  public String setting_userInfo(Principal prin, ModelMap model) {
    String myNumber = prin.getName();
    UserSetting user = userSettingMapper.selectUserbymyNumber(myNumber);
    model.addAttribute("user", user);
    return "setUserInfo.html";
  }

  @PostMapping("/setting/password")
  public String changePassword(@RequestParam String password, Principal prin, ModelMap model) {

    String myNumber = prin.getName();

    // パスワードのハッシュ化
    BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
    String hashedPassword = encoder.encode(password);

    try {
      // パスワードの更新処理
      userSettingMapper.updatePassword(myNumber, hashedPassword);

      // 成功メッセージを追加
      model.addAttribute("message", "パスワードが正常に変更されました");
      model.addAttribute("isSuccess", true); // 成功時
    } catch (Exception e) {
      // 何か問題があればエラーメッセージを表示
      model.addAttribute("message", "パスワード変更に失敗しました");
      model.addAttribute("isSuccess", false); // 失敗時
    }
    return "setPass.html";
  }

  @PostMapping("/setting/user-info")
  public String update_userInfo(@RequestParam String userName, Principal prin, ModelMap model) {
    String myNumber = prin.getName();

    try {
      // 名前を更新
      userSettingMapper.updateUserName(myNumber, userName);

      // 成功メッセージ
      model.addAttribute("message", "ユーザー情報の変更が成功しました。");
      model.addAttribute("isSuccess", true); // 成功時
    } catch (Exception e) {
      // エラーメッセージ
      model.addAttribute("message", "ユーザー情報の変更が失敗しました。");
      model.addAttribute("isSuccess", false); // 失敗時
    }

    // 更新後も再度表示するために最新データを取得
    UserSetting user = userSettingMapper.selectUserbymyNumber(myNumber);
    model.addAttribute("user", user);

    return "setUserInfo.html";
  }

  @GetMapping("/setting/student")
  public String student() {
    return "student.html";
  }

  @GetMapping("/setting/teacher")
  public String teacher() {
    return "teacher.html";
  }

  @GetMapping("/setting/admin")
  public String admin() {
    return "admin.html";
  }

  @GetMapping("/timeout")
  public String timeout() {
    return "timeout.html";
  }

}
