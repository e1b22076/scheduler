package oit.is.hondaken.scheduler.model;

import java.sql.Date;
import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface EventMapper {

  // 指定された日付のイベントタイトルを取得
  @Select("SELECT title FROM events WHERE startDate = #{date}")
  List<String> getEventTitleForDate(@Param("date") Date date);

  // イベントを追加
  @Insert("INSERT INTO events(myNumber, title, description, startDate, endDate, startTime, endTime, location) "
      + "VALUES (#{myNumber}, #{title}, #{description}, #{startDate}, #{endDate}, #{startTime}, #{endTime}, #{location})")
  @Options(useGeneratedKeys = true, keyColumn = "id", keyProperty = "id")
  void addEvent(Event event);

  // 指定された日付のイベントを取得
  @Select("SELECT * FROM events WHERE startDate = #{date}")
  List<Event> getEventsForDate(@Param("date") Date date);

  // 特定のユーザーの指定された日付のイベントを取得
  @Select("SELECT * FROM events WHERE myNumber = #{myNumber} AND startDate <= #{date} AND endDate >= #{date}")
  List<Event> getEventsForDateOnlyMe(@Param("date") Date date, @Param("myNumber") String myNumber);

  // 特定のユーザーの指定された日付のイベントタイトルを取得
  @Select("SELECT title FROM events WHERE myNumber = #{myNumber} AND startDate <= #{date} AND endDate >= #{date}")
  List<String> getEventTitleForDateOnlyMe(@Param("date") Date date, @Param("myNumber") String myNumber);

  @Delete("DELETE FROM events WHERE id = #{eventId}")
    void deleteEventById(int eventId);
}
