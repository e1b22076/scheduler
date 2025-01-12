package oit.is.hondaken.scheduler.model;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
// import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

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

  @Delete("DELETE FROM team where id = #{teamid}")
  void deleteTeamById(int teamid);

  @Update("UPDATE team SET teamDescription = #{teamDescription} WHERE id = #{teamId}")
  void updateTeamDescription(int teamId, String teamDescription);

  @Update("UPDATE team SET teamCode = #{teamCode} WHERE id = #{teamId}")
  void updateTeamCode(int teamId, String teamCode);

  @Update("UPDATE team SET teamName = #{teamName}, teamType = #{teamType}, teamDescription = #{teamDescription} WHERE id = #{teamId}")
  void updateTeamSetting(int teamId, String teamName, String teamType, String teamDescription);
}
