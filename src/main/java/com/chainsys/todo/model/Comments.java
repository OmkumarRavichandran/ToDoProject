package com.chainsys.todo.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "comments")
public class Comments {
	@Column(name = "taskid")
	private int taskId;
	@Id
	@Column(name = "commentid")
	private int commentId;
	@Column(name = "comments")
	private String comments;
	@Column(name = "datetime")
	private String datetime;

	@ManyToOne(fetch =FetchType.LAZY)
	@JoinColumn(name="taskid",nullable =false,insertable=false,updatable=false)
	private Task task;
	public Task getTask() {
		return task;
	}

	public void setTask(Task task) {
		this.task = task;
	}

	public String getDatetime() {
		return datetime;
	}

	public void setDatetime() {
		Calendar vCalendar = Calendar.getInstance();
		String datetime = vCalendar.get(Calendar.DATE) + " / " + (vCalendar.get(Calendar.MONTH) + 1) + " / "
				+ vCalendar.get(Calendar.YEAR) + " : " + vCalendar.get(Calendar.HOUR) + " : "
				+ vCalendar.get(Calendar.MINUTE);
		this.datetime = datetime;
	}

	public int getTaskId() {
		return taskId;
	}

	public void setTaskId(int taskId) {
		this.taskId = taskId;
	}

	public int getCommentId() {
		return commentId;
	}

	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}
}
