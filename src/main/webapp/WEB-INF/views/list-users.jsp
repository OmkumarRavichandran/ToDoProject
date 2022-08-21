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
					<th>Gender</th>
					<th>State</th>
					<th>City</th>
					<th>Pincode</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="use" items="${alluser}">
					<tr>
						<td>${use.userId}</td>
						<td>${use.name}</td>
						<td>${use.gender}</td>
						<td>${use.state}</td>
						<td>${use.city}</td>
						<td>${use.pincode}</td>
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