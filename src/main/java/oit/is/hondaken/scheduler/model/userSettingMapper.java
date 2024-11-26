package oit.is.hondaken.scheduler.model;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.Insert;

import java.util.ArrayList;

@Mapper
public interface UserSettingMapper {
  @Select("select id from userSetting where myNumber = #{myNum}")
  int selectIdByNum(String myNum);

  @Select("select myNumber from userSetting")
  ArrayList<String> selectNumber();

  @Select("select mail from userSetting")
  ArrayList<String> selectMail();

  @Insert("INSERT INTO userSetting (myNumber,userName,userRole,mail,myPass,isActive) VALUES (#{myNumber},#{userName},#{userRole},#{mail},#{myPass},#{isActive});")
  @Options(useGeneratedKeys = true, keyColumn = "id", keyProperty = "id")
  void insertuserSetting(UserSetting user);

  @Select("select myPass from userSetting where myNumber = #{num}")
  String selectPassByNum(String num);

  @Update("UPDATE userSetting SET isActive=#{isActive} WHERE ID = #{id}")
  void updateIsActive(int id, boolean isActive);

}
