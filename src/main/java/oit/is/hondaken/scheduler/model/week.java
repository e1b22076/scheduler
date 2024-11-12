package oit.is.hondaken.scheduler.model;

import java.util.ArrayList;
import java.util.List;

public class week {
  // 1週(7日間)を管理するListを、1月分Listで保持
  private List<List<day>> weekList = new ArrayList<>();

  public List<List<day>> getWeekList() {
    return weekList;
  }

  public void setWeekList(final List<List<day>> weekList) {
    this.weekList = weekList;
  }
}
