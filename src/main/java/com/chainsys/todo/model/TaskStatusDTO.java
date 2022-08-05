package com.chainsys.todo.model;

import java.util.ArrayList;
import java.util.List;

public class TaskStatusDTO {

	private List<TaskStatus> taskStatus =new ArrayList<TaskStatus>();
	private Task task;
	public List<TaskStatus> getTaskStatus() {
		return taskStatus;
	}
	public void addTaskStatus(TaskStatus tks) {
		taskStatus.add(tks);
	}
	public Task getTask() {
		return task;
	}
	public void setTask(Task task) {
		this.task = task;
	}
	
}
