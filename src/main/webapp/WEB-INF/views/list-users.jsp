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
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>