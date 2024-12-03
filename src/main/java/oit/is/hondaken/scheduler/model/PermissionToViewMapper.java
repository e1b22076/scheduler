package oit.is.hondaken.scheduler.model;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface PermissionToViewMapper {

  @Select("SELECT * FROM permissions WHERE requesterNumber = #{requester}")
  List<PermissionToView> getPermissions(@Param("requester") String requester);

  @Select("SELECT * FROM permissions WHERE targetNumber = #{target}")
  List<PermissionToView> getPermissionsbytarget(@Param("target") String target);

  @Select("SELECT isApproved FROM permissions WHERE requesterNumber = #{requester} AND targetNumber = #{target}")
  Boolean getIsApproved(@Param("requester") String requester, @Param("target") String target);

  @Select("SELECT COUNT(*) > 0 FROM permissions WHERE requesterNumber = #{requester} AND targetNumber = #{target}")
  boolean existsByRequesterAndTarget(@Param("requester") String requester, @Param("target") String target);

  @Select("SELECT COUNT(*) > 0 FROM permissions WHERE targetNumber = #{target}")
  boolean existsByTarget(@Param("target") String target);

  @Select("SELECT COUNT(*) > 0 FROM permissions WHERE targetNumber = #{target} AND isApproved is null")
  boolean RequestexistsByTarget(@Param("target") String target);

  @Insert("INSERT INTO permissions (requesterNumber, targetNumber, isApproved) VALUES (#{requesterNumber}, #{targetNumber}, #{isApproved})")
  @Options(useGeneratedKeys = true, keyColumn = "id", keyProperty = "id")
  void insertPermission(PermissionToView permission);

  @Update("UPDATE permissions SET isApproved = #{isApproved} WHERE id = #{id}")
  void updatePermissionStatus(@Param("id") int id, @Param("isApproved") boolean isApproved);

}
