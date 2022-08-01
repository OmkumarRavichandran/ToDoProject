package com.chainsys.todo.pojo;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="TASKSTATUS")
public class TaskStatus {
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public int getTaskId() {
		return taskId;
	}
	public void setTaskId(int taskId) {
		this.taskId = taskId;
	}
	@Id
	@Column(name="USERID")
	private int userId;
	@Column(name="TASKID")
	private int taskId;
	@Column(name="COMPLETEDTASK")
	private String completedTask;
	@Column(name="ADDEDTASK")
	private String addedTask;
	
	public String getCompletedTask() {
		return completedTask;
	}
	public void setCompletedTask(String completedTask) {
		this.completedTask = completedTask;
	}
	public String getAddedTask() {
		return addedTask;
	}
	public void setAddedTask(String addedTask) {
		this.addedTask = addedTask;
	}
	@Override
	public String toString() {
		return String.format("%d,%d,%s,%s",userId,taskId,completedTask,addedTask);
	}
	

}
