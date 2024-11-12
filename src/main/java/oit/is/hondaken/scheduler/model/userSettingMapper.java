package oit.is.hondaken.scheduler.model;

import org.apache.ibatis.annotations.Mapper;

// import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
// import org.apache.ibatis.annotations.Insert;

//import java.util.ArrayList;

@Mapper
public interface userSettingMapper {
@Select("select id from userSetting where userName = #{name}")
int selectIdByName(String name);
}
