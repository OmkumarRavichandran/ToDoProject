package com.chainsys.todo.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="task")
public class Task {
	
	private int userid;
	@Id
	@Column(name = "taskid")
	private int taskid;
	
	@Column(name = "tasktitle")
	private String tasktitle;
	
	@Column(name = "description")
	private String description;
	
	public Date getDate_created() {
		return date_created;
	}

	public void setDate_created(Date date_created) {
		this.date_created = date_created;
	}
	@Column(name = "date_created")
	private Date date_created;
	
	@Column(name = "datedue")
	private Date datedue;
	
	@Column(name = "datemodified")
	private Date datemodified;
	
	@Column(name = "datecompleted")
	private Date datecompleted;
		
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

	public String getTasktitle() {
		return tasktitle;
	}

	public void setTasktitle(String tasktitle) {
		this.tasktitle = tasktitle;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getDatedue() {
		return datedue;
	}

	public void setDatedue(Date datedue) {
		this.datedue = datedue;
	}

	public Date getDatemodified() {
		return datemodified;
	}

	public void setDatemodified(Date datemodified) {
		this.datemodified = datemodified;
	}

	public Date getDatecompleted() {
		return datecompleted;
	}

	public void setDatecompleted(Date datecompleted) {
		this.datecompleted = datecompleted;
	}
	@Override
	public String toString() {
		return String.format("%d,%d,%s,%s,%s,%s,%s,%s",userid,taskid,tasktitle,description,date_created,datedue,datemodified,datecompleted);
	}
}
