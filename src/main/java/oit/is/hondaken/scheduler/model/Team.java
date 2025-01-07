package oit.is.hondaken.scheduler.model;

public class Team {
  private int id;
  private String teamName;
  private String teamOwner;
  private String teamType;
  private String teamDescription;
  private String teamCode;

  public int getId() {
    return id;
  }
  public void setId(int id) {
    this.id = id;
  }
  public String getTeamName() {
    return teamName;
  }
  public void setTeamName(String teamName) {
    this.teamName = teamName;
  }
  public String getTeamOwner() {
    return teamOwner;
  }
  public void setTeamOwner(String teamOwner) {
    this.teamOwner = teamOwner;
  }
  public String getTeamType() {
    return teamType;
  }
  public void setTeamType(String teamType) {
    this.teamType = teamType;
  }
  public String getTeamDescription() {
    return teamDescription;
  }
  public void setTeamDescription(String teamDescription) {
    this.teamDescription = teamDescription;
  }
  public String getTeamCode() {
    return teamCode;
  }
  public void setTeamCode(String teamCode) {
    this.teamCode = teamCode;
  }
}
