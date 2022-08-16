<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TODO Application</title>
<style type="text/css">
body {
	background-image:
		url("https://wallpapers.com/images/hd/plain-blue-glitch-r5ckwv91utiy3tjv.webp");
	height: 768px;
	width: 1366px;
	background-position: center top;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

.menu {
	width: 400px;
	float: left;
	height: 70px;
}

ul {
	float: left;
	display: flex;
	justify-content: center;
	align-items: center;
}
nav ul i{
  display: inline-block;
}
ul li {
	list-style: none;
	margin-left: 62px;
	margin-top: 27px;
	font-size: 20px;
}

ul li a {
	text-decoration: none;
	color: ##000000;
	font-family: Arial;
	font-weight: bold;
	transition: 0.4s ease-in-out;
}

ul li a:hover {
	color: #ff7200;
}

h1 {
	font-family: lucida Handwriting, Cursive;
	color: black;
}

.navbar {
	overflow: hidden;
	background-color: #38fca4;
}

.navbar a {
	float: left;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

.dropdown:hover .dropdown-content {
	display: block;
}

i {
	width: 100px;
	font-family: Times New Roman;
	text-align: center;
	color: #ff7200;
	font-size: 24px;
	background-color: #fff;
	border-radius: 7px;
	margin: 2px;
	padding: 8px;
}
table {
  
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

tr:hover {background-color: Aquamarine;  /coral  /
}
</style>
</head>
<body>
	<h1 align="center">TODO Application</h1>
	<div class="menu">
		<ul>
			<div class="dropdown">
				<i class="dropbtn"> User <i class="fa fa-caret-down"></i>
				</i>
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
				<i class="dropbtn"> Task <i class="fa fa-caret-down"></i>
				</i>
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
				<i class="dropbtn"> TaskStatus <i class="fa fa-caret-down"></i>
				</i>
				<div class="dropdown-content">
					<a href="/task/list">List of Task</a> <a href="/task/status">Completed
						Task</a>

				</div>
			</div>
			<li></li>
			<div class="dropdown">
				<i class="dropbtn"> Contact <i class="fa fa-caret-down"></i>
				</i>
				<div class="dropdown-content">
					<a href="/contactindex">Contact</a>
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
			<div class="dropdown">
				<i class="dropbtn"> Logout<i class="fa fa-caret-down"></i>
				</i>
				<div class="dropdown-content">
					<a href="/todo">Logout</a>
				</div>
			</div>
		</ul>
	</div>
	<div></div>
	<div id="form" style="text-align: center; margin-top: 12%;">
		<table border="2" width="100%" cellpadding="2">
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
					<th>Edit</th>
					<th>Delete</th>
					<th>Comment</th>
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
						<td><a href="/task/updatetask?taskid=${task.taskId}">Edit</a></td>
						<td><a href="/task/deletetask?taskid=${task.taskId}">Delete</a></td>
						<td><a href="/comment/addcomment?taskid=${task.taskId}">Comment</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>