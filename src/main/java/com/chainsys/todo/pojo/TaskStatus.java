package com.chainsys.todo.pojo;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="taskstatus")
public class TaskStatus {
	@Id
	private int userid;
	@Id
	private int taskid;
	private String completedTask;
	private String addedTask;
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getTaskid() {
		return taskid;
	}
	public void setTaskid(int taskid) {
		this.taskid = taskid;
	}
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
		return String.format("%d,%d,%s,%s",userid,taskid,completedTask,addedTask);
	}
	

}
