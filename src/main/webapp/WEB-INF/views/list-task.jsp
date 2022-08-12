<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
<style type="text/css">
tr:hover {background-color: #ECF32D;}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
tr:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}
th:nth-child(even),td:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}
</style>
</head>
<body>
	<div id="table root" align="center">
		<table border="2" width="100%" cellpadding="2">
		<h1>Task List</h1>
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
						<td><a href="updatetask?taskid=${task.taskId}">Edit</a></td>
						<td><a href="deletetask?taskid=${task.taskId}">Delete</a></td>
						<td><a href="/comment/addcomment?taskid=${task.taskId}">comment</a></td>
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>