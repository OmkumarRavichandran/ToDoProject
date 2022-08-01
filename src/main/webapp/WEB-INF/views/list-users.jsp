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
					<th>Mobile Number</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="use" items="${alluser}">
					<tr>
						<td>${use.userid}</td>
						<td>${use.name}</td>
						<td>${use.email}</td>
						<td>${use.mobileno}</td> 
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>