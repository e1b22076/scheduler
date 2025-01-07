package oit.is.hondaken.scheduler.model;

public class TeamMember {
  private int id;
  private int teamId;
  private String memberId;

  public int getId() {
    return id;
  }
  public void setId(int id) {
    this.id = id;
  }
  public int getTeamId() {
    return teamId;
  }
  public void setTeamId(int teamId) {
    this.teamId = teamId;
  }
  public String getMemberId() {
    return memberId;
  }
  public void setMemberId(String memberId) {
    this.memberId = memberId;
  }
}
