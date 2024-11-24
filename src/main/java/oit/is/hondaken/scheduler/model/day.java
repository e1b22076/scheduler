package oit.is.hondaken.scheduler.model;

import java.util.ArrayList;
import java.util.List;

public class Day {
  private int date;
  private int month;
  private int year;
  private List<String> events;

  // コンストラクタ
  public Day(int date, int month, int year) {
    this.date = date;
    this.month = month;
    this.year = year;
    this.events = new ArrayList<>();
  }

  // ゲッターとセッター
  public int getDate() {
    return date;
  }

  public void setDate(int date) {
    this.date = date;
  }



  public int getMonth() {
    return month;
  }

  public void setMonth(int month) {
    this.month = month;
  }

  public int getYear() {
    return year;
  }

  public void setYear(int year) {
    this.year = year;
  }

  public void setEvents(List<String> events) {
    this.events = events;
  }

  public List<String> getEvents() {
    return events;
  }

  public void addEvent(String event) {
    this.events.add(event);
  }
}
