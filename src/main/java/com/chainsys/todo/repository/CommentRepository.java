package com.chainsys.todo.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.todo.model.Comments;
import com.chainsys.todo.model.Task;

public interface CommentRepository extends CrudRepository<Comments, Integer>{
	
	Comments findById(int id);
	Comments save(Comments comment);
	List<Comments> findAll();
	
	List<Comments> findByTaskId(int id);
}
