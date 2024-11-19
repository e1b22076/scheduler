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

  @Insert("INSERT INTO events(title, description, startYear, startMonth, startDay, startTime, endTime, location)"
      + "VALUES (#{title}, #{description}, #{startYear}, #{startMonth}, #{startDay}, #{startTime}, #{endTime}, #{location})")
  @Options(useGeneratedKeys = true, keyColumn = "id", keyProperty = "id")
  void addEvent(
      Event event);

  @Select("SELECT * FROM events WHERE startYear = #{year} AND startMonth = #{month} AND startDay = #{day}")
  List<Event> getEventsForDate(@Param("year") int year, @Param("month") int month, @Param("day") int day);

}
