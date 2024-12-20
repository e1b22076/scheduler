package oit.is.hondaken.scheduler.model;

import org.apache.ibatis.annotations.Mapper;
// import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
// import org.apache.ibatis.annotations.Insert;

import java.util.List;

@Mapper
public interface ScheduleMapper {
  @Select("select className from schedule where id=#{id}")
  String selectClassNameById(String id);

  @Select("SELECT * FROM schedule EXCEPT SELECT schedule.Id,schedule.DEPARTMENT,schedule.CLASSNAME,schedule.ATTRIBUTE,schedule.CONTINUOUS,schedule.CREDIT,schedule.GRADE,schedule.TIMING,schedule.DAYOFWEEK,schedule.DAYTIME,schedule.OTHERCLASS,schedule.SYLLABUSURL FROM schedule join assignment ON schedule.id = assignment.scheduleId where assignment.userId = #{myNumber}")
  List<Schedule> selectTeacherAllOtherThanMyself(String myNuber);

  @Select("select schedule.Id,schedule.DEPARTMENT,schedule.CLASSNAME,schedule.ATTRIBUTE,schedule.CONTINUOUS,schedule.CREDIT,schedule.GRADE,schedule.TIMING,schedule.DAYOFWEEK,schedule.DAYTIME,schedule.OTHERCLASS,schedule.SYLLABUSURL FROM schedule join assignment ON (schedule.id = assignment.scheduleId) where assignment.userId = #{myNumber}")
  List<Schedule> selectTeacherAll (String myNuber);

  @Select("SELECT * from schedule where DayTime = #{period} and DayofWeek = #{day} and department = #{department} and grade <= #{grade}")
  List<Schedule> selectAllClasses(int period, String day, String department, int grade);

  @Select("SELECT continuous from schedule where id = #{id}")
  boolean selectContinuousById(String id);

  @Select("SELECT DayTime from schedule where id = #{id}")
  int selectDayTimeById(String id);

  @Select("SELECT * from schedule where continuous = #{continuous} and DayTime = #{period} and DayofWeek = #{day} and department = #{department} and grade <= #{grade}")
  List<Schedule> selectContinuousClasses(boolean continuous, int period, String day, String department, int grade);

  @Select("SELECT syllabusURL from schedule where id = #{id}")
  String selectSyllabusURLById(String id);

  @Select("SELECT * from schedule where DayTime = #{period} and DayofWeek = #{day} and department REGEXP '^I' and department != 'ID' and grade <= #{grade} and otherClass REGEXP '^1,[01],[01],[01],[01]$'")
  List<Schedule> selectOtherClassID(int period, String day, int grade);

  @Select("SELECT * from schedule where DayTime = #{period} and DayofWeek = #{day} and department REGEXP '^I' and department != 'IC' and grade <= #{grade} and otherClass REGEXP '^[01],1,[01],[01],[01]$'")
  List<Schedule> selectOtherClassIC(int period, String day, int grade);

  @Select("SELECT * from schedule where DayTime = #{period} and DayofWeek = #{day} and department REGEXP '^I' and department != 'IS' and grade <= #{grade} and otherClass REGEXP '^[01],[01],1,[01],[01]$'")
  List<Schedule> selectOtherClassIS(int period, String day, int grade);

  @Select("SELECT * from schedule where DayTime = #{period} and DayofWeek = #{day} and department REGEXP '^I' and department != 'IM' and grade <= #{grade} and otherClass REGEXP '^[01],[01],[01],1,[01]$'")
  List<Schedule> selectOtherClassIM(int period, String day, int grade);

  @Select("SELECT * from schedule where DayTime = #{period} and DayofWeek = #{day} and department REGEXP '^I' and department != 'IN' and grade <= #{grade} and otherClass REGEXP '^[01],[01],[01],[01],1$'")
  List<Schedule> selectOtherClassIN(int period, String day, int grade);
}
