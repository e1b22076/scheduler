package oit.is.hondaken.scheduler.model;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface AssignmentMapper {

  // 現在のユーザーの担当授業を取得
  @Select("select * from assignment where userId = #{userId}")
  List<Assignment> findByUserId(@Param("userId") String userId);

  // キーワードで担当授業を検索
  List<Assignment> findByKeyword(@Param("keyword") String keyword);

  @Insert("INSERT INTO assignment (scheduleId, userId) VALUES (#{scheduleId}, #{userId})")
  @Options(useGeneratedKeys = true, keyColumn = "id", keyProperty = "id")
  void insertAssignment(Assignment assignment);

  @Delete("DELETE FROM assignment WHERE scheduleid = #{scheduleId} AND userid = #{userId}")
  void deleteAssignment(@Param("scheduleId") String scheduleId, @Param("userId") String userId);
}
