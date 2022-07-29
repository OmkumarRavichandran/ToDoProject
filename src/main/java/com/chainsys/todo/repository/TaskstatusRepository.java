package com.chainsys.todo.repository;

import org.springframework.data.repository.CrudRepository;

import com.chainsys.todo.pojo.Task;
import com.chainsys.todo.pojo.TaskStatus;

public interface TaskstatusRepository extends CrudRepository<TaskStatus, Integer>{

	TaskStatus addedTask(Task tr);
	TaskStatus completedTask(Task tr);
}
