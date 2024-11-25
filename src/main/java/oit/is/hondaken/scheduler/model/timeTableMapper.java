package oit.is.hondaken.scheduler.model;

import org.apache.ibatis.annotations.Mapper;
//import org.apache.ibatis.annotations.Result;
//import org.apache.ibatis.annotations.Results;
//import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.Insert;

//import java.util.List;

@Mapper
public interface TimeTableMapper {
  @Select("SELECT myNumber, mon1, mon2, mon3, mon4, mon5, tue1, tue2, tue3, tue4, tue5, wed1, wed2, wed3, wed4, wed5, thu1, thu2, thu3, thu4, thu5, fri1, fri2, fri3, fri4, fri5, sat1, sat2, sat3, sat4, sat5 FROM timeTable WHERE myNumber = #{num}")
  TimeTable selectByNum(String num);

  @Select("SELECT myNumber from timeTable where myNumber = #{myNumber}")
  String selectMyNumber(String myNumber);

  @Insert("INSERT INTO timeTable (myNumber) VALUES (#{myNumber});")
  void insertTimeTable(String myNumber);

  @Update("UPDATE timeTable SET showSaturday = #{toggleSaturday} WHERE myNumber = #{myNumber}")
  void updateShowSaturday(String myNumber, boolean toggleSaturday);

  @Select("SELECT showSaturday from timeTable where myNumber = #{myNumber}")
  boolean selectShowSaturday(String myNumber);

  @Update("UPDATE timeTable SET ${field} = NULL WHERE myNumber = #{myNumber}")
  void clearField(String myNumber, String field);

  @Update("UPDATE timeTable SET ${field} = #{classId} WHERE myNumber = #{myNumber}")
  void updateField(String myNumber, String field, String classId);

  @Select("SELECT ${day} from timeTable where myNumber = #{myNumber}")
  String selectClassId(String day, String myNumber);

}
