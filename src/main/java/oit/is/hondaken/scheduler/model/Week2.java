package oit.is.hondaken.scheduler.model;

import java.util.ArrayList;
import java.util.List;

public class Week2 {
  // 1週(7日間)を管理するListを、1月分Listで保持
  private List<List<Day2>> weekList = new ArrayList<>();

  public List<List<Day2>> getWeekList() {
    return weekList;
  }

  public void setWeekList(final List<List<Day2>> weekList) {
    this.weekList = weekList;
  }
}
