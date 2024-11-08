package oit.is.hondaken.scheduler.model;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface EventMapper {
  @Select("SELECT title FROM events WHERE start_day = #{date} AND start_month = #{month} AND start_year = #{year} LIMIT 1")
  String getEventTitleForDate(int year, int month, int date);
}
