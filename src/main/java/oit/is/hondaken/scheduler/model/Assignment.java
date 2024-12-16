package oit.is.hondaken.scheduler.model;

public class Assignment {
  private int id; // 一意識別可能なID
  private String scheduleId; // scheduleテーブルの主キー
  private String userId; // userSettingテーブルの主キー（myNumber）

  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public String getScheduleId() {
    return scheduleId;
  }

  public void setScheduleId(String scheduleId) {
    this.scheduleId = scheduleId;
  }

  public String getUserId() {
    return userId;
  }

  public void setUserId(String userId) {
    this.userId = userId;
  }

}
