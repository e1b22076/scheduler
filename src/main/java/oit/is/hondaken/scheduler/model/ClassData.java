package oit.is.hondaken.scheduler.model;

public class ClassData {
  private String className;
  private String syllabusURL;

  public ClassData(String className, String syllabusURL) {
    this.className = className;
    this.syllabusURL = syllabusURL;
  }

  public String getClassName() {
    return className;
  }

  public void setClassName(String className) {
    this.className = className;
  }

  public String getSyllabusURL() {
    return syllabusURL;
  }

  public void setSyllabusURL(String syllabusURL) {
    this.syllabusURL = syllabusURL;
  }
}
