package oit.is.hondaken.scheduler.model;

import java.sql.Timestamp;

public class TeamChat {
  private int id;
  private int teamId;
  private String senderId; // 送信者のユーザID
  private String message;
  private String mediaUrl;
  private String mediaType; // メディアの種類 (例: "image", "video", "file")
  private Timestamp sendTime;

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
  public String getSenderId() {
    return senderId;
  }
  public void setSenderId(String senderId) {
    this.senderId = senderId;
  }
  public String getMessage() {
    return message;
  }
  public void setMessage(String message) {
    this.message = message;
  }
  public String getMediaUrl() {
    return mediaUrl;
  }
  public void setMediaUrl(String mediaUrl) {
    this.mediaUrl = mediaUrl;
  }
  public String getMediaType() {
    return mediaType;
  }
  public void setMediaType(String mediaType) {
    this.mediaType = mediaType;
  }
  public Timestamp getSendTime() {
    return sendTime;
  }
  public void setSendTime(Timestamp sendTime) {
    this.sendTime = sendTime;
  }
}
