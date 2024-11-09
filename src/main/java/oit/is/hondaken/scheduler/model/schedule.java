package oit.is.hondaken.scheduler.model;

public class schedule {
  String id; // 講義コード 主キーの役割を果たしている。
  String department; // 学科
  String className; // 講義名
  String attribute;
  // 科目属性(必修:required 選択必修:choice 通常:normal CS選択必修:CSchoice 卒業単位数に含まない:ignore)
  boolean continuous;// 連続科目ならtrue,違うならfalse
  int credit;// 単位数
  int grade;// 最低履修可能年次数
  String timing;// 前期A,後期B,前期前半C,前期後半D,後期前半E,後期後半F期間外Z
  String DayofWeek;// 曜日
  int DayTime;// 何時間目か
  String otherClass;
  // 他学科履修。'(ID,IC,IS,IM,IN)'の順。履修できるなら1出来ないなら0を入れている。departmentと同じ場合も1になっている

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getDepartment() {
    return department;
  }

  public void setDepartment(String department) {
    this.department = department;
  }

  public String getClassName() {
    return className;
  }

  public void setClassName(String className) {
    this.className = className;
  }

  public String getAttribute() {
    return attribute;
  }

  public void setAttribute(String attribute) {
    this.attribute = attribute;
  }

  public boolean isContinuous() {
    return continuous;
  }

  public void setContinuous(boolean continuous) {
    this.continuous = continuous;
  }

  public int getCredit() {
    return credit;
  }

  public void setCredit(int credit) {
    this.credit = credit;
  }

  public int getGrade() {
    return grade;
  }

  public void setGrade(int grade) {
    this.grade = grade;
  }

  public String getTiming() {
    return timing;
  }

  public void setTiming(String timing) {
    this.timing = timing;
  }

  public String getDayofWeek() {
    return DayofWeek;
  }

  public void setDayofWeek(String dayofWeek) {
    DayofWeek = dayofWeek;
  }

  public int getDayTime() {
    return DayTime;
  }

  public void setDayTime(int dayTime) {
    DayTime = dayTime;
  }

  public String getOtherClass() {
    return otherClass;
  }

  public void setOtherClass(String otherClass) {
    this.otherClass = otherClass;
  }

}
