package com.chainsys.todo.pojo;

import java.util.ArrayList;
import java.util.List;
public class TaskCommentDTO {

	private Task task;
	private List<Comments> commentlist = new ArrayList<Comments>();
	
	public Task getTask() {
		return task;
	}
	public void setTask(Task task) {
		this.task = task;
	}
	public List<Comments> getCommentlist() {
		return commentlist;
	}
	public void addComment (Comments app) {
		commentlist.add(app);
	}
}
