 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
<style>
<%@include file="/WEB-INF/css/listusertask.css"%>
</style>
</head>
<body>
	 <div class="container">
	<h1 class="btn">Get User Task Details</h1> 
		 <table>
		<caption></caption>
			<thead>
				<tr>
					<th>User id</th>
					<th>Name</th>
					<th>Email</th>
					<th>Gender</th>
					<th>Mobile Number</th>
					<th>Address</th>
					<th>State</th>
					<th>City</th>
					<th>Pincode</th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td>${getuser.userId}</td>
						<td>${getuser.name}</td>
						<td>${getuser.email}</td>
						<td>${getuser.gender}</td> 
						<td>${getuser.mobileNo}</td> 
						<td>${getuser.address}</td> 
						<td>${getuser.state}</td>
						<td>${getuser.city}</td>
						<td>${getuser.pincode}</td>  
					</tr>
			</tbody>
		</table> 
</div>
<div class="container">
		<table>
		<caption></caption>
			<thead>
				<tr>
					<th>Task id</th>
					<th>Task Title</th>
					<th>Description</th>
					<th style="width:50%">Created Date</th>
					<th style="width:100%">Due Date</th>
					<th style="width:70%">Modified Date</th>
					<th style="width:70%">Completed Date</th>
					<th>Priority</th>
					<th>User ID</th>
					<th>Status</th>
					<th>Edit</th>
					<th>Delete</th>
					<th>View</th>
					<th>Task Comments</th>
					<th>Checkbox</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="task" items="${tasklist}">
					<tr>
						<td>${task.taskId}</td>
						<td>${task.taskTitle}</td>
						<td>${task.description}</td>
						<td>${task.dateCreated}</td> 
						<td>${task.dueDate}</td> 
						<td>${task.dateModified}</td> 
						<td>${task.dateCompleted}</td> 
						<td class="red">${task.priority}</td> 
						<td>${task.userId}</td> 
						<td>${task.status}</td>
						<td><a href="/task/updatetask?taskid=${task.taskId}">Edit</a></td> 
						<td><a href="/task/deletetask?taskid=${task.taskId}">Delete</a></td>
						<td><a href="/task/getTaskid?taskid=${task.taskId}">View</a></td>
						<td><a href="/task/gettaskcomment?id=${task.taskId}">Task Comments</a></td>
						<td><input type="checkbox" name="check" id="check" value="true" /></td>
						</tr>
				</c:forEach>
			</tbody>
		</table>
		<p>
			<button class="btn" onclick="document.location='/index'">Back</button>
		</p>
	</div>
	<script>
	function f_color(){
		for (let i=0; i < document.getElementsByClassName('red').length; i++ ) {
		if (document.getElementsByClassName('red')[i].innerHTML == 'High') {
		document.getElementsByClassName('red')[i].style.backgroundColor = "red";
		}
		
	else if (document.getElementsByClassName('red')[i].innerHTML == 'Medium') {
		document.getElementsByClassName('red')[i].style.backgroundColor = "yellow";
		}
	else if (document.getElementsByClassName('red')[i].innerHTML == 'Low') {
		document.getElementsByClassName('red')[i].style.backgroundColor = "green";
		}
	}
}
		f_color();	
	</script>	
</body>
</html>