package oit.is.hondaken.scheduler.model;

import java.util.List;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface EventMapper {

  @Select("SELECT title FROM events WHERE start_day = #{date} AND start_month = #{month} AND start_year = #{year} LIMIT 1")
  String getEventTitleForDate(@Param("year") int year, @Param("month") int month, @Param("date") int date);

  @Insert("INSERT INTO events (title, description, start_year, start_month, start_day, start_time, end_time, location, is_all_day) "
      + "VALUES (#{title}, #{description}, #{startYear}, #{startMonth}, #{startDay}, #{startTime}, #{endTime}, #{location}, #{isAllDay})")
  @Options(useGeneratedKeys = true, keyColumn = "id", keyProperty = "id")
  void addEvent(
      event event);

  @Select("SELECT * FROM events WHERE start_year = #{year} AND start_month = #{month} AND start_day = #{day}")
  List<event> getEventsForDate(@Param("year") int year, @Param("month") int month, @Param("day") int day);

}
