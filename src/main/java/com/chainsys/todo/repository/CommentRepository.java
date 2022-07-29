package com.chainsys.todo.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.todo.pojo.Comments;
import com.chainsys.todo.pojo.Task;

public interface CommentRepository extends CrudRepository<Comments, Integer>{
	
	Task findByIdComment(int id);
	Task saveComment (Task tr);
	List<Task> findAllComment();
}
