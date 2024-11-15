package oit.is.hondaken.scheduler.model;

import org.apache.ibatis.annotations.Mapper;
// import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
// import org.apache.ibatis.annotations.Insert;

//import java.util.ArrayList;

@Mapper
public interface scheduleMapper {
  @Select("select className from schedule where id=#{id}")
  String selectClassNameById(String id);
}
