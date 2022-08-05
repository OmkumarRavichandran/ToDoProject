<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
</head>
<body>
	<div id="table root">
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
					<th>Done</th>
					<th>Edit</th>
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
						<td>${task.done}</td> 
						<td><a href="updatetask?taskid=${task.taskId}">Edit</a></td>
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>