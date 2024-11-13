package oit.is.hondaken.scheduler.model;

import java.util.ArrayList;
import java.util.List;

public class TimeTableRecord {
  private List<String> monday;
  private List<String> tuesday;
  private List<String> wednesday;
  private List<String> thursday;
  private List<String> friday;
  private List<String> saturday;

  public TimeTableRecord(timeTable tt, scheduleMapper scheduleMapper) {
    this.monday = new ArrayList<>();
    this.tuesday = new ArrayList<>();
    this.wednesday = new ArrayList<>();
    this.thursday = new ArrayList<>();
    this.friday = new ArrayList<>();
    this.saturday = new ArrayList<>();

    // 時限ごとに授業名を取得して追加
    monday.add(scheduleMapper.selectClassNameById(tt.getMon1()));
    monday.add(scheduleMapper.selectClassNameById(tt.getMon2()));
    monday.add(scheduleMapper.selectClassNameById(tt.getMon3()));
    monday.add(scheduleMapper.selectClassNameById(tt.getMon4()));
    monday.add(scheduleMapper.selectClassNameById(tt.getMon5()));

    tuesday.add(scheduleMapper.selectClassNameById(tt.getTue1()));
    tuesday.add(scheduleMapper.selectClassNameById(tt.getTue2()));
    tuesday.add(scheduleMapper.selectClassNameById(tt.getTue3()));
    tuesday.add(scheduleMapper.selectClassNameById(tt.getTue4()));
    tuesday.add(scheduleMapper.selectClassNameById(tt.getTue5()));

    wednesday.add(scheduleMapper.selectClassNameById(tt.getWed1()));
    wednesday.add(scheduleMapper.selectClassNameById(tt.getWed2()));
    wednesday.add(scheduleMapper.selectClassNameById(tt.getWed3()));
    wednesday.add(scheduleMapper.selectClassNameById(tt.getWed4()));
    wednesday.add(scheduleMapper.selectClassNameById(tt.getWed5()));

    thursday.add(scheduleMapper.selectClassNameById(tt.getThu1()));
    thursday.add(scheduleMapper.selectClassNameById(tt.getThu2()));
    thursday.add(scheduleMapper.selectClassNameById(tt.getThu3()));
    thursday.add(scheduleMapper.selectClassNameById(tt.getThu4()));
    thursday.add(scheduleMapper.selectClassNameById(tt.getThu5()));

    friday.add(scheduleMapper.selectClassNameById(tt.getFri1()));
    friday.add(scheduleMapper.selectClassNameById(tt.getFri2()));
    friday.add(scheduleMapper.selectClassNameById(tt.getFri3()));
    friday.add(scheduleMapper.selectClassNameById(tt.getFri4()));
    friday.add(scheduleMapper.selectClassNameById(tt.getFri5()));

    saturday.add(scheduleMapper.selectClassNameById(tt.getSat1()));
    saturday.add(scheduleMapper.selectClassNameById(tt.getSat2()));
    saturday.add(scheduleMapper.selectClassNameById(tt.getSat3()));
    saturday.add(scheduleMapper.selectClassNameById(tt.getSat4()));
    saturday.add(scheduleMapper.selectClassNameById(tt.getSat5()));
  }

  public List<String> getMonday() {
    return monday;
  }

  public List<String> getTuesday() {
    return tuesday;
  }

  public List<String> getWednesday() {
    return wednesday;
  }

  public List<String> getThursday() {
    return thursday;
  }

  public List<String> getFriday() {
    return friday;
  }

  public List<String> getSaturday() {
    return saturday;
  }
}
