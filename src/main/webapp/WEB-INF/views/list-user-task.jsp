<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
<style type="text/css">
body {
	background-image:
		url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6kes4oqn-17l2nTBcwLk13rQXWZOIqtnSAg&usqp=CAU");
	height: 768px;
	width: 1366px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
.container {
	margin-top: 1%;
	margin-left: 5%;
	border-radius: 5px;
	background-color: #ffff99;
	padding: 30px;
	width: 70%;
	float: left;
}
.btn {
	display: inline-block;
	padding: 10px 20px;
	font-size: 18px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: white;
	background-color: #6bb6ff;
	border: none;
	border-radius: 10px;
	box-shadow: 0 9px #1E90FF;
	margin-left: 300px;
	margin-top: 10px;
}
tr:hover {background-color: #999966;}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
tr:nth-child(even) {
  background-color: rgba(255,0,0,0.3);
}
th:nth-child(even),td:nth-child(even) {
 background-color: rgba(192,0,192,0.3);
}
</style>
</head>
<body>
	<div class="container">
	<h1 class="btn">Get User Task Details</h1>
		<table border="10" width="100%" cellpadding="15">
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
		<table border="10" width="100%" cellpadding="20">
			<thead>
				<tr>
					<th>Task id</th>
					<th>Task Title</th>
					<th>Description</th>
					<th style="width:70%">Created Date</th>
					<th style="width:100%">Due Date</th>
					<th style="width:70%">Modified Date</th>
					<th style="width:70%">Completed Date</th>
					<th>User ID</th>
					<th>Status</th>
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
						<td>${task.userId}</td> 
						<td>${task.status}</td> 
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>