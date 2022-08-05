package com.chainsys.todo.repository;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.todo.model.Task;
import com.chainsys.todo.model.TaskStatus;

public interface TaskstatusRepository extends CrudRepository<TaskStatus, Integer>{

	TaskStatus save(Task task);
	TaskStatus findById(int id);
	List<TaskStatus> findAll();
	
	List <TaskStatus> findByTaskId(int id);
}
