package oit.is.hondaken.scheduler.model;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
// import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;

@Mapper
public interface TeamMapper {
  @Insert("INSERT INTO team (teamName,teamOwner,teamType,teamDescription,teamCode) VALUES (#{teamName},#{teamOwner},#{teamType},#{teamDescription},#{teamCode});")
  @Options(useGeneratedKeys = true, keyColumn = "id", keyProperty = "id")
  void insertTeam(Team team);

  @Select("SELECT * FROM team")
  ArrayList<Team> selectAllTeam();

  @Select("SELECT * FROM team where id = #{teamid}")
  Team selectTeamById(int teamid);


  @Select("SELECT * FROM team where teamType = #{teamType}")
  ArrayList<Team> selectAllByTeamType(String teamType);

  @Select("SELECT id FROM team where teamCode = #{teamCode}")
  Integer selectTeamIdByTeamCode(String teamCode);
  /*
  @Select("SELECT * FROM team Where teamType = ''")
  */
}
