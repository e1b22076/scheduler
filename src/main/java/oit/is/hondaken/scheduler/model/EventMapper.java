package oit.is.hondaken.scheduler.model;

import java.util.List;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface EventMapper {

  @Select("SELECT title FROM events WHERE startDay = #{date} AND startMonth = #{month} AND startYear = #{year}")
  List<String> getEventTitleForDate(@Param("year") int year, @Param("month") int month, @Param("date") int date);

  @Insert("INSERT INTO events(myNumber,title, description, startYear, startMonth, startDay, startTime, endTime, location)"
      + "VALUES (#{myNumber},#{title}, #{description}, #{startYear}, #{startMonth}, #{startDay}, #{startTime}, #{endTime}, #{location})")
  @Options(useGeneratedKeys = true, keyColumn = "id", keyProperty = "id")
  void addEvent(
      Event event);

  @Select("SELECT * FROM events WHERE startYear = #{year} AND startMonth = #{month} AND startDay = #{day}")
  List<Event> getEventsForDate(@Param("year") int year, @Param("month") int month, @Param("day") int day);

  @Select("SELECT * FROM events WHERE myNumber= #{myNumber} AND startYear = #{year} AND startMonth = #{month} AND startDay = #{day}")
  List<Event> getEventsForDateOnlyMe(@Param("year") int year, @Param("month") int month, @Param("day") int day,
      @Param("myNumber") String myNumber);

  @Select("SELECT title FROM events WHERE myNumber= #{myNumber} AND startDay = #{date} AND startMonth = #{month} AND startYear = #{year}")
  List<String> getEventTitleForDateOnlyMe(@Param("year") int year, @Param("month") int month, @Param("date") int date,
      @Param("myNumber") String myNumber);

}
