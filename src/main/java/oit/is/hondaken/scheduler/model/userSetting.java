package oit.is.hondaken.scheduler.model;

public class userSetting {
  int id;// 一位識別可能なid
  String namber;// 学籍番号
  String userName;// 名前
  String mail;// メアド
  String myPass;// パスワード

  public String getNamber() {
    return namber;
  }

  public void setNamber(String namber) {
    this.namber = namber;
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