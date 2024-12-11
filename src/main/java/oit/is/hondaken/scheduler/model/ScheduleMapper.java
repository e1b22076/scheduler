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
}
