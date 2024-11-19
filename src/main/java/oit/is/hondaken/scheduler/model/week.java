package oit.is.hondaken.scheduler.model;

import java.util.ArrayList;
import java.util.List;

public class Week {
  // 1週(7日間)を管理するListを、1月分Listで保持
  private List<List<Day>> weekList = new ArrayList<>();

  public List<List<Day>> getWeekList() {
    return weekList;
  }

  public void setWeekList(final List<List<Day>> weekList) {
    this.weekList = weekList;
  }
}
