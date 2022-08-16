<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<div id="table root" align ="center">
	<table border="2" width="100%" cellpadding="2">
	<h1>List of Users</h1>
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
					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="use" items="${alluser}">
					<tr>
						<td>${use.userId}</td>
						<td>${use.name}</td>
						<td>${use.email}</td>
						<td>${use.gender}</td> 
						<td>${use.mobileNo}</td> 
						<td>${use.address}</td> 
						<td>${use.state}</td>
						<td>${use.city}</td>
						<td>${use.pincode}</td> 
						<td><a href="updateuser?userid=${use.userId}">Edit</a></td>  
						<td><a href="deleteuser?userid=${use.userId}">Delete</a></td>
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>