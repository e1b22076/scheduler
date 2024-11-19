package oit.is.hondaken.scheduler.model;

public class UserSetting {
  int id;// 一位識別可能なid
  String myNumber;// 学籍番号
  String userName;// 名前
  String userRole;// ロール名
  String mail;// メアド
  String myPass;// パスワード

  public String getMyNumber() {
    return myNumber;
  }

  public void setMyNumber(String myNumber) {
    this.myNumber = myNumber;
  }

  public String getUserRole() {
    return userRole;
  }

  public void setUserRole(String userRole) {
    this.userRole = userRole;
  }

  public String getUserName() {
    return userName;
  }

  public void setUserName(String userName) {
    this.userName = userName;
  }

  public String getMail() {
    return mail;
  }

  public void setMail(String mail) {
    this.mail = mail;
  }

  public String getMyPass() {
    return myPass;
  }

  public void setMyPass(String myPass) {
    this.myPass = myPass;
  }

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

}
