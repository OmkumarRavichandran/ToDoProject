	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!DOCTYPE html>
	<html lang="en">
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
		<div id="table root" align="center">
			<table style="width:103%;background-color:#ffe6f7;">
			<h1>Task List</h1>
				<thead>
					<tr>
						<th>Task id</th>
						<th>Task Title</th>
						<th>Description</th>
						<th>Created Date</th>
						<th>Due Date</th>
						<th>Modified Date</th>
						<th>Completed Date</th>
						<th>User ID</th>
						<th>Priority</th>
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
							<td>${task.dueDate}</td> 
							<td>${task.dateModified}</td> 
							<td>${task.dateCompleted}</td> 
							<td>${task.userId}</td>
							<td>${task.priority}</td> 
							<td>${task.status}</td> 
							<td><a href="updatetask?taskid=${task.taskId}">Edit</a></td>
							<td><a href="deletetask?taskid=${task.taskId}">Delete</a></td>
							<td><a href="/comment/addcomment?taskid=${task.taskId}">Comment</a></td>
							</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</body>
	</html>