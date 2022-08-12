package com.chainsys.todo.dto;

import java.util.ArrayList;
import java.util.List;

import com.chainsys.todo.model.Comments;
import com.chainsys.todo.model.Task;
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
