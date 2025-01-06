package oit.is.hondaken.scheduler.model;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface AssignmentTaskMapper {

  @Insert("INSERT INTO assignmentTask (lessonCount, assignmentId,detail,content,deadline) VALUES (#{lessonCount}, #{assignmentId},#{detail},#{content},#{deadline})")
  @Options(useGeneratedKeys = true, keyColumn = "id", keyProperty = "id")
  void insertAssignmentTask(AssignmentTask assignmentTask);

  @Select("SELECT  CLASSNAME ,ASSIGNMENTTASK .ID ,LESSONCOUNT ,ASSIGNMENTID ,DETAIL ,CONTENT ,DEADLINE  FROM ASSIGNMENT join ASSIGNMENTTASK  on ASSIGNMENT.id = ASSIGNMENTTASK.ASSIGNMENTID join SCHEDULE  on ASSIGNMENT.SCHEDULEID =SCHEDULE.ID   where USERID = #{userId} ORDER BY ASSIGNMENTID ASC,LESSONCOUNT ASC;")
  List<AssignmentTaskPlus> selectByUserId(@Param("userId") String userId);

  @Delete("DELETE FROM AssignmentTask WHERE id = #{assignmentTaskId}")
  void deleteById(@Param("assignmentTaskId") int taskId);

}
