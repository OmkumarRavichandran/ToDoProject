package com.chainsys.todo.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.todo.pojo.Task;

public interface TaskRepository extends CrudRepository<Task, Integer>{
	
	Task findById(int id);
	Task save (Task tr);
	Task deleteById(int tr_id);
	List<Task> findAll();

}
