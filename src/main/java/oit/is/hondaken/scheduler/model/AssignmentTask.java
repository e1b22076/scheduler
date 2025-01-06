package oit.is.hondaken.scheduler.model;

public class AssignmentTask {
  private int id; // 一意識別可能なID
  private int lessonCount; // 第何回授業か（1～14）
  private int assignmentId; // 担当のAssignmentオブジェクト
  private String detail; // 授業内容
  private String content; // 課題の内容
  private String deadline; // 締め切り日

  // コンストラクタ
  public AssignmentTask() {
  }

  public AssignmentTask(int lessonCount, int assignmentId, String detail, String content, String deadline) {
    this.lessonCount = lessonCount;
    this.assignmentId = assignmentId;
    this.detail = detail;
    this.content = content;
    this.deadline = deadline;
  }

  // ゲッターとセッター
  public int getId() {
    return id;
  }

  public void setId(int id) {
    this.id = id;
  }

  public int getLessonCount() {
    return lessonCount;
  }

  public void setLessonCount(int lessonCount) {
    this.lessonCount = lessonCount;
  }

  public int getAssignmentId() {
    return assignmentId;
  }

  public void setAssignmentId(int assignmentId) {
    this.assignmentId = assignmentId;
  }

  public String getDetail() {
    return detail;
  }

  public void setDetail(String detail) {
    this.detail = detail;
  }

  public String getContent() {
    return content;
  }

  public void setContent(String content) {
    this.content = content;
  }

  public String getDeadline() {
    return deadline;
  }

  public void setDeadline(String deadline) {
    this.deadline = deadline;
  }
}
