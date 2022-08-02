package com.chainsys.todo.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="task")
public class Task {
	@Column(name="USERID")
	private int userId;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	@Id
	@Column(name = "TASKID")
	private int taskId;
	@Column(name = "TASKTITLE")
	private String taskTitle;
	
	@Column(name = "DESCRIPTION")
	private String description;
	
	@Column(name = "DATECREATED")
	private Date dateCreated;
	
	@Column(name = "DATEDUE")
	private Date dateDue;
	
	@Column(name = "DATEMODIFIED")
	private Date dateModified;
	
	@Column(name = "DATECOMPLETED")
	private Date dateCompleted;
	
	public int getTaskId() {
		return taskId;
	}

	public void setTaskId(int taskId) {
		this.taskId = taskId;
	}

	public String getTaskTitle() {
		return taskTitle;
	}

	public void setTaskTitle(String taskTitle) {
		this.taskTitle = taskTitle;
	}

	public Date getDateCreated() {
		return dateCreated;
	}

	public void setDateCreated(Date dateCreated) {
		this.dateCreated = dateCreated;
	}

	public Date getDateDue() {
		return dateDue;
	}

	public void setDateDue(Date dateDue) {
		this.dateDue = dateDue;
	}

	public Date getDateModified() {
		return dateModified;
	}

	public void setDateModified(Date dateModified) {
		this.dateModified = dateModified;
	}

	public Date getDateCompleted() {
		return dateCompleted;
	}

	public void setDateCompleted(Date dateCompleted) {
		this.dateCompleted = dateCompleted;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return String.format("%d,%d,%s,%s,%s,%s,%s,%s",userId,taskId,taskTitle,description,dateCreated,dateDue,dateModified,dateCompleted);
	}
}
