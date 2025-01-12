package oit.is.hondaken.scheduler.model;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;

@Mapper
public interface TeamMemberMapper {
  @Insert("INSERT INTO teamMember (teamId,memberId) VALUES (#{teamId},#{memberId});")
  @Options(useGeneratedKeys = true, keyColumn = "id", keyProperty = "id")
  void insertTeamMember(TeamMember teamMember);

  @Select("SELECT COUNT(*) > 0 FROM teamMember where teamId = #{teamId} and memberId = #{memberId}")
  boolean isMemberOfTeam(int teamId, String memberId);

  @Select("SELECT * FROM teamMember where teamId = #{teamId}")
  ArrayList<TeamMember> selectTeamByTeamId(int teamId);

  @Select("SELECT * FROM teamMember where memberId = #{myNumber}")
  ArrayList<TeamMember> selectTeamByNum(String myNumber);

  @Delete("DELETE FROM teamMember where teamId = #{teamId} and memberId = #{memberId}")
  void deleteTeamMember(int teamId, String memberId);
}
