package com.chainsys.todo.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.todo.model.Task;
import com.chainsys.todo.model.User;

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
