package com.chainsys.todo.model;

import java.util.ArrayList;
import java.util.List;

public class UserTaskDTO {

	private User user;
	private List<Task> taskList =new ArrayList<Task>();
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<Task> getTaskList() {
		return taskList;
	}
	public void addTask(Task task) {
		taskList.add(task);
	}
}
