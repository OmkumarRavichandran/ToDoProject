package com.chainsys.todo.model;

import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "comments")
public class Comments {
	@Column(name = "taskid")
	@Min(value=1 , message ="Task id Should above 1")
	private int taskId;
	@Id
	@Column(name = "commentid")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "toid")
    @SequenceGenerator(name = "toid", sequenceName = "toid",  allocationSize = 1)
	private int commentId;
	@Column(name = "comments")
	@NotBlank(message ="not be empty")
	@NotNull(message ="address may not be null")
	private String comments;
	@Column(name = "datetime")
	@NotBlank(message ="not be empty")
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
		String dateTime = vCalendar.get(Calendar.DATE) + " / " + (vCalendar.get(Calendar.MONTH) + 1) + " / "
				+ vCalendar.get(Calendar.YEAR) + " : " + vCalendar.get(Calendar.HOUR) + " : "
				+ vCalendar.get(Calendar.MINUTE);
		this.datetime = dateTime;
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
