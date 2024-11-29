package oit.is.hondaken.scheduler.model;

import java.util.ArrayList;
import java.util.List;

public class Day2 {
  private int date;
  private int month;
  private int year;
  private List<Event> myevents;
  private List<Event> events;

  // コンストラクタ
  public Day2(int date, int month, int year) {
    this.date = date;
    this.month = month;
    this.year = year;
    this.myevents = new ArrayList<>();
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

  public void setEvents(List<Event> events) {
    this.events = events;
  }

  public List<Event> getEvents() {
    return events;
  }

  public void addEvent(Event event) {
    this.events.add(event);
  }

  public void addmyEvent(Event event) {
    this.myevents.add(event);
  }


  public List<Event> getMyevents() {
    return myevents;
  }

  public void setMyevents(List<Event> myevents) {
    this.myevents = myevents;
  }
}
