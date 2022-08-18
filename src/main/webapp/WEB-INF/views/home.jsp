<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>TODO Application</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
<%@include file="/WEB-INF/css/home.css"%>
</style>
</head>
<body>
	<h1>TODO Application</h1>
	<div class="menu">
		<ul>
			<div class="dropdown">
				<em class="dropbtn"> User </em>
				<div class="dropdown-content">
					<a href="/userlist">List of User</a> 
					<a href="/getuserform">Get User Details</a> 
					<a href="/usermodifyform">Modify User</a> 
					<a href="/deleteuserform">Delete User</a>
					<a href="/getusertaskform">Get User Task Details</a>
				</div>
			</div>
			<li></li>
			<div class="dropdown">
				<em class="dropbtn"> Task <em class="fa fa-caret-down"></em>
				</em>
				<div class="dropdown-content">
					<a href="/task/list">List of Task</a> 
					<a href="/task/addtask">Add Task</a> 
					<a href="/task/getTask">Get Task</a> 
					<a href="/task/deleteTask">Delete Task</a> 
					<a href="/task/updateTask">Modify Task</a> 
					<a href="/task/getTaskcomments">Get Task Comments</a>
				</div>
			</div>
			<li></li>
			<div class="dropdown">
				<em class="dropbtn"> TaskStatus </em>
				<div class="dropdown-content">
					<a href="/task/list">List of Task</a> 
					<a href="/task/status">Completed Task</a>
					<a href="/task/highpriority">Fetch High Priority Task</a>
					<a href="/task/mediumpriority">Fetch Medium Priority Task</a>
					<a href="/task/lowpriority">Fetch Low Priority Task</a>
				</div>
			</div>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<div class="dropdown">
				<em class="dropbtn"> Logout<em class="fa fa-caret-down"></em>
				</em>
				<div class="dropdown-content">
					<a href="/todo">Logout</a>
				</div>
			</div>
		</ul>
	</div>
	<div></div>
	<div id="form" style="text-align: center; margin-top: 12%;">
		<table>
		<caption></caption>
			<thead>
				<tr>
					<th>Task id</th>
					<th>Task Title</th>
					<th>Description</th>
					<th>Created Date</th>
					<th>Modified Date</th>
					<th>Completed Date</th>
					<th>User ID</th>
					<th>Status</th>
					<th>Priority</th>
					<th>Edit</th>
					<th>Delete</th>
					<th>Comment</th>
					<th>CheckBox</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="task" items="${alltask}">
					<tr>
						<td>${task.taskId}</td>
						<td>${task.taskTitle}</td>
						<td>${task.description}</td>
						<td>${task.dateCreated}</td>
						<td>${task.dateModified}</td>
						<td>${task.dateCompleted}</td>
						<td>${task.userId}</td>
						<td>${task.status}</td>
						<td id="red">${task.priority}</td>
						<td><a href="/task/updatetask?taskid=${task.taskId}">Edit</a></td>
						<td><a href="/task/deletetask?taskid=${task.taskId}">Delete</a></td>
						<td><a href="/comment/addcomment?taskid=${task.taskId}">Comment</a></td>
						<td><input type="checkbox" name="check" id="check" value="true" /></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script>
	let text="High";
	let result=text.fontcolor("red");
	document.getElementById("red").innerHTML = result;
	result = "<span style='color:red'>" + text + "</span>";
	</script>	
</body>
</html>