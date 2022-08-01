package com.chainsys.todo.repository;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.todo.pojo.Task;
import com.chainsys.todo.pojo.TaskStatus;

public interface TaskstatusRepository extends CrudRepository<TaskStatus, Integer>{

	TaskStatus save(Task tr);
	TaskStatus findById(int id);
}
