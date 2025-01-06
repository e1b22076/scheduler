package oit.is.hondaken.scheduler.model;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.apache.ibatis.annotations.Insert;

import java.util.ArrayList;

@Mapper
public interface UserSettingMapper {
  @Select("select id from userSetting where myNumber = #{myNum}")
  int selectIdByNum(String myNum);

  @Select("select id from userSetting where mail = #{mail}")
  int selectIdBymail(String mail);

  @Select("select myNumber from userSetting where id = #{id}")
  String selectNumById(int id);

  @Select("select myPass from userSetting where id = #{id}")
  String selectmyPassById(int id);

  @Select("select myNumber from userSetting")
  ArrayList<String> selectNumber();

  @Select("select * from userSetting where myNumber = #{myNumber}")
  UserSetting selectUserbymyNumber(String myNumber);

  @Select("select userRole from userSetting where myNumber = #{myNumber}")
  String selectRoleByNum(String myNumber);

  @Select("select mail from userSetting")
  ArrayList<String> selectMail();

  @Insert("INSERT INTO userSetting (myNumber,userName,userRole,mail,myPass,isActive) VALUES (#{myNumber},#{userName},#{userRole},#{mail},#{myPass},#{isActive});")
  @Options(useGeneratedKeys = true, keyColumn = "id", keyProperty = "id")
  void insertuserSetting(UserSetting user);

  @Select("select myPass from userSetting where myNumber = #{num}")
  String selectPassByNum(String num);

  @Update("UPDATE userSetting SET isActive=#{isActive} WHERE ID = #{id}")
  void updateIsActive(int id, boolean isActive);

  @Select("select * from userSetting where myNumber != #{myNumber}")
  ArrayList<UserSetting> selectAllbymyNumber(String myNumber);

  @Update("UPDATE userSetting SET myPass = #{hashedPassword} WHERE myNumber = #{myNumber}")
  void updatePassword(@Param("myNumber") String myNumber, @Param("hashedPassword") String hashedPassword);

  @Update("UPDATE userSetting SET userName = #{userName} WHERE myNumber = #{myNumber}")
  void updateUserName(@Param("myNumber") String myNumber, @Param("userName") String userName);

}
