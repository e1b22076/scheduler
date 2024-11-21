package oit.is.hondaken.scheduler.model;

public class Todo {
  private int id;
  private String myNumber;
  private String title;
  private String description;
  private boolean completed;

  public String getMyNumber() {
    return myNumber;
  }

  public void setMyNumber(String myNumber) {
    this.myNumber = myNumber;
  }

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

  public boolean isCompleted() {
    return completed;
  }

  public void setCompleted(boolean completed) {
    this.completed = completed;
  }
}
