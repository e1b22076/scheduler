package oit.is.hondaken.scheduler.model;

public class event {

  private int id;
  private String title;
  private String description;
  private int startYear;
  private int startMonth;
  private int startDay;
  private String startTime;
  private String endTime;
  private String location;
  private boolean isAllDay;

  // Getters and Setters

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public int getStartYear() {
    return startYear;
  }

  public void setStartYear(int startYear) {
    this.startYear = startYear;
  }

  public int getStartMonth() {
    return startMonth;
  }

  public void setStartMonth(int startMonth) {
    this.startMonth = startMonth;
  }

  public int getStartDay() {
    return startDay;
  }

  public void setStartDay(int startDay) {
    this.startDay = startDay;
  }

  public String getStartTime() {
    return startTime;
  }

  public void setStartTime(String startTime) {
    this.startTime = startTime;
  }


  public String getEndTime() {
    return endTime;
  }

  public void setEndTime(String endTime) {
    this.endTime = endTime;
  }

  public String getLocation() {
    return location;
  }

  public void setLocation(String location) {
    this.location = location;
  }

  public boolean isAllDay() {
    return isAllDay;
  }

  public void setAllDay(boolean isAllDay) {
    this.isAllDay = isAllDay;
  }
}
