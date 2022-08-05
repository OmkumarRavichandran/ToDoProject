<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
</head>
<body>
	<div id="getUser">
		<table border="2" width="100%" cellpadding="2">
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
				</tr>
			</thead>
			<tbody>
				<c:forEach var="task" items="${tasklist}">
					<tr>
						<td>${task.taskId}</td>
						<td>${task.taskTitle}</td>
						<td>${task.description}</td>
						<td>${task.dateCreated}</td> 
						<td>${task.dateModified}</td> 
						<td>${task.dateCompleted}</td> 
						<td>${task.userId}</td> 
						<td>${task.done}</td> 
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>