<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User List</title>
<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
<%@include file="/WEB-INF/css/listuser.css"%>
</style>
</head>
<body>
<h1>List of Users</h1>
	<div>
		<table class="table" >
			<caption></caption>
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
	<p>
		<button class="btn" onclick="document.location='/index'">Back</button>
	</p>
</body>
</html>