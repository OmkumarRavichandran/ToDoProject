package com.chainsys.todo.model;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.swing.JButton;
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
	private String dateCreated;
	
	@Column(name = "DATEMODIFIED")
	private Date dateModified;
	
	@Column(name = "DATECOMPLETED")
	private Date dateCompleted;
	
	@Column(name = "DONE")
	private String done;
	
	@OneToMany(mappedBy ="task",fetch=FetchType.LAZY)
	private List<Comments> comment;
	
	public List<Comments> getComment() {
		return comment;
	}
	public void setComment(List<Comments> comment) {
		this.comment = comment;
	}
	@ManyToOne(fetch =FetchType.LAZY)
	@JoinColumn(name = "USERID", nullable = false, insertable = false, updatable =false)
	private User user;
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getDone() {
		return done;
	}
	public void setDone(String done) {
		this.done = done;
	}
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

	public String getDateCreated() {
		return dateCreated;
	}
	public void setDateCreated() {
		Calendar vCalendar = Calendar.getInstance();
		String dateCreated = vCalendar.get(Calendar.DATE) + " / " + (vCalendar.get(Calendar.MONTH) + 1) + " / "
				+ vCalendar.get(Calendar.YEAR) + " : " + vCalendar.get(Calendar.HOUR) + " : "
				+ vCalendar.get(Calendar.MINUTE);
		this.dateCreated = dateCreated;
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
	
}
