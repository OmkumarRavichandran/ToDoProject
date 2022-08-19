package com.chainsys.todo.model;

import java.sql.Date;
import java.util.Calendar;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Future;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
@Entity
@Table(name="task")
public class Task {
	@Column(name="USERID")
	private int userId;
	@Id
	@Column(name = "TASKID")
	private int taskId;
	@Column(name = "TASKTITLE")
	@NotBlank(message = "*Task Title is required")
	private String taskTitle;
	@Column(name = "DESCRIPTION")
	@Size(min=3, max=30, message="Enter valid Description")
	private String description;
	@Column(name = "DATECREATED")
	private String dateCreated;
	
	@Column(name="DATEDUE")
	@Future
	private Date dueDate;
	
	public Date getDueDate() {
		return dueDate;
	}
	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}
	@Column(name = "DATEMODIFIED")
	private Date dateModified;
	@Column(name = "DATECOMPLETED")
	@Future
	private Date dateCompleted;
	@Column(name = "STATUS")
	private String status;
	
	@Transient
	private int remainingDays;
	
	public int getRemainingDays() {
		return remainingDays;
	}
	@Column(name = "PRIORITY")
	private String priority;
	
	public String getPriority() {
		return priority;
	}
	public void setPriority(String priority) {
		this.priority = priority;
	}
	public void setRemainingDays(int remainingDays) {
		this.remainingDays = remainingDays;
	}
	@OneToMany(mappedBy ="task",fetch=FetchType.LAZY)
	private List<Comments> comment;
	
	public List<Comments> getComment() {
		return comment;
	}
	public void setComment(List<Comments> comment) {
		this.comment = comment;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
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
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}	
}
