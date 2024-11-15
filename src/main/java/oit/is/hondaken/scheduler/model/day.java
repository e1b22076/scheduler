package oit.is.hondaken.scheduler.model;

import java.util.ArrayList;
import java.util.List;

public class day {
  private int date;
  private List<String> events;

  // コンストラクタ
  public day(int date) {
    this.date = date;
    this.events = new ArrayList<>(); // 空のリストで初期化
  }

  // ゲッターとセッター
  public int getDate() {
    return date;
  }

  public void setDate(int date) {
    this.date = date;
  }

  public List<String> getEvents() {
    return events;
  }

  public void addEvent(String event) {
    this.events.add(event);
  }
}
