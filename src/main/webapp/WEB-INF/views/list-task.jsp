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
					<th>Due Date</th>
					<th>Modified Date</th>
					<th>Completed Date</th>
					<th>User ID</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="task" items="${alltask}">
					<tr>
						<td>${task.taskid}</td>
						<td>${task.tasktitle}</td>
						<td>${task.description}</td>
						<td>${task.date_created}</td> 
						<td>${task.datedue}</td> 
						<td>${task.datemodified}</td> 
						<td>${task.datecompleted}</td> 
						<td>${task.userid}</td> 
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>