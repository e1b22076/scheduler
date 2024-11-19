package oit.is.hondaken.scheduler.model;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Insert;

import java.util.ArrayList;

@Mapper
public interface userSettingMapper {
  @Select("select id from userSetting where userName = #{name}")
  int selectIdByName(String name);

  @Select("select myNumber from userSetting")
  ArrayList<String> selectNumber();

  @Select("select mail from userSetting")
  ArrayList<String> selectMail();

  @Insert("INSERT INTO userSetting (myNumber,userRole,mail,myPass) VALUES (#{myNumber},#{userRole},#{mail},#{myPass});")
  @Options(useGeneratedKeys = true, keyColumn = "id", keyProperty = "id")
  void insertuserSetting(userSetting user);

  @Select("select myPass from userSetting where myNumber = #{num}")
  String selectPassByNum(String num);
}
