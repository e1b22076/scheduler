package oit.is.hondaken.scheduler.model;

public class day {
  private int date;
  private String event;

  // コンストラクタ
  public day(int date) {
    this.date = date;
    this.event = null; // 初期値はnull
  }

  // ゲッターとセッター
  public int getDate() {
    return date;
  }

  public void setDate(int date) {
    this.date = date;
  }

  public String getEvent() {
    return event;
  }

  public void setEvent(String event) {
    this.event = event;
  }
}
