package oit.is.hondaken.scheduler.model;

import java.util.ArrayList;
import java.util.List;

public class TimeTableRecord {
  private List<ClassData> monday;
  private List<ClassData> tuesday;
  private List<ClassData> wednesday;
  private List<ClassData> thursday;
  private List<ClassData> friday;
  private List<ClassData> saturday;

  public TimeTableRecord(TimeTable tt, ScheduleMapper scheduleMapper) {
    this.monday = new ArrayList<>();
    this.tuesday = new ArrayList<>();
    this.wednesday = new ArrayList<>();
    this.thursday = new ArrayList<>();
    this.friday = new ArrayList<>();
    this.saturday = new ArrayList<>();

    // 時限ごとに授業名を取得して追加
    monday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getMon1()), scheduleMapper.selectSyllabusURLById(tt.getMon1())));
    monday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getMon2()), scheduleMapper.selectSyllabusURLById(tt.getMon2())));
    monday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getMon3()), scheduleMapper.selectSyllabusURLById(tt.getMon3())));
    monday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getMon4()), scheduleMapper.selectSyllabusURLById(tt.getMon4())));
    monday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getMon5()), scheduleMapper.selectSyllabusURLById(tt.getMon5())));

    tuesday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getTue1()), scheduleMapper.selectSyllabusURLById(tt.getTue1())));
    tuesday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getTue2()), scheduleMapper.selectSyllabusURLById(tt.getTue2())));
    tuesday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getTue3()), scheduleMapper.selectSyllabusURLById(tt.getTue3())));
    tuesday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getTue4()), scheduleMapper.selectSyllabusURLById(tt.getTue4())));
    tuesday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getTue5()), scheduleMapper.selectSyllabusURLById(tt.getTue5())));

    wednesday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getWed1()), scheduleMapper.selectSyllabusURLById(tt.getWed1())));
    wednesday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getWed2()), scheduleMapper.selectSyllabusURLById(tt.getWed2())));
    wednesday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getWed3()), scheduleMapper.selectSyllabusURLById(tt.getWed3())));
    wednesday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getWed4()), scheduleMapper.selectSyllabusURLById(tt.getWed4())));
    wednesday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getWed5()), scheduleMapper.selectSyllabusURLById(tt.getWed5())));

    thursday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getThu1()), scheduleMapper.selectSyllabusURLById(tt.getThu1())));
    thursday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getThu2()), scheduleMapper.selectSyllabusURLById(tt.getThu2())));
    thursday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getThu3()), scheduleMapper.selectSyllabusURLById(tt.getThu3())));
    thursday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getThu4()), scheduleMapper.selectSyllabusURLById(tt.getThu4())));
    thursday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getThu5()), scheduleMapper.selectSyllabusURLById(tt.getThu5())));

    friday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getFri1()), scheduleMapper.selectSyllabusURLById(tt.getFri1())));
    friday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getFri2()), scheduleMapper.selectSyllabusURLById(tt.getFri2())));
    friday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getFri3()), scheduleMapper.selectSyllabusURLById(tt.getFri3())));
    friday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getFri4()), scheduleMapper.selectSyllabusURLById(tt.getFri4())));
    friday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getFri5()), scheduleMapper.selectSyllabusURLById(tt.getFri5())));

    saturday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getSat1()), scheduleMapper.selectSyllabusURLById(tt.getSat1())));
    saturday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getSat2()), scheduleMapper.selectSyllabusURLById(tt.getSat2())));
    saturday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getSat3()), scheduleMapper.selectSyllabusURLById(tt.getSat3())));
    saturday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getSat4()), scheduleMapper.selectSyllabusURLById(tt.getSat4())));
    saturday.add(new ClassData(scheduleMapper.selectClassNameById(tt.getSat5()), scheduleMapper.selectSyllabusURLById(tt.getSat5())));
  }

  public List<ClassData> getMonday() {
    return monday;
  }

  public List<ClassData> getTuesday() {
    return tuesday;
  }

  public List<ClassData> getWednesday() {
    return wednesday;
  }

  public List<ClassData> getThursday() {
    return thursday;
  }

  public List<ClassData> getFriday() {
    return friday;
  }

  public List<ClassData> getSaturday() {
    return saturday;
  }
}
