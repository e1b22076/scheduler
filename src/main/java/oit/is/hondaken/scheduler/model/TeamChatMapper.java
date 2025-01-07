package oit.is.hondaken.scheduler.model;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;

@Mapper
public interface TeamChatMapper {
  @Insert("INSERT INTO teamChat (teamId,senderId,message,mediaUrl,mediaType,sendTime) VALUES (#{teamId},#{senderId},#{message},#{mediaUrl},#{mediaType},#{sendTime});")
  @Options(useGeneratedKeys = true, keyColumn = "id", keyProperty = "id")
  void insertTeamChat(TeamChat teamChat);

  @Select("SELECT * FROM teamChat where teamId = #{teamId}")
  ArrayList<TeamChat> selectAllTeamChat(int teamId);
}
