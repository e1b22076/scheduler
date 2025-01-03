package oit.is.hondaken.scheduler.model;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface TodoMapper {
  @Select("SELECT * FROM todos")
  List<Todo> getAllTodos();

  @Select("SELECT * FROM todos WHERE myNumber = #{myNumber}")
  List<Todo> getTodosByMyNuber(String myNumber);

  @Insert("INSERT INTO todos(myNumber,title, description, completed) VALUES(#{myNumber},#{title}, #{description}, #{completed})")
  @Options(useGeneratedKeys = true, keyProperty = "id")
  void insertTodo(Todo todo);

  @Update("UPDATE todos SET myNumber = #{myNumber},title = #{title}, description = #{description}, completed = #{completed} WHERE id = #{id}")
  void updateTodo(Todo todo);

  @Delete("DELETE FROM todos WHERE id = #{id}")
  void deleteTodoById(int id);

  @Update("UPDATE todos SET completed = #{completed} WHERE id = #{id}")
  void updateTodoCompleted(Todo todo);

}
