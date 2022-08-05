package com.chainsys.todo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.todo.model.Task;
import com.chainsys.todo.model.TaskStatus;
import com.chainsys.todo.repository.TaskstatusRepository;

@Service
public class TaskStatusService {
	@Autowired
	private TaskstatusRepository taskStatusRepository;

	public List<TaskStatus> getAddedTask() {
		List<TaskStatus> taskStatus = taskStatusRepository.findAll();
		return taskStatus;
	}
	

	
	
}
