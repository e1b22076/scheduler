package oit.is.hondaken.scheduler.model;

public class PermissionToView {
  int id;
  String requesterNumber;
  String targetNumber;
  Boolean isApproved;

  public int getId() {
    return id;
  }
  public void setId(int id) {
    this.id = id;
  }
  public String getRequesterNumber() {
    return requesterNumber;
  }
  public void setRequesterNumber(String requestNumber) {
    this.requesterNumber = requestNumber;
  }
  public String getTargetNumber() {
    return targetNumber;
  }
  public void setTargetNumber(String targetNumber) {
    this.targetNumber = targetNumber;
  }
  public Boolean isApproved() {
    return isApproved;
  }
  public void setApproved(Boolean isApproved) {
    this.isApproved = isApproved;
  }
}
