<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of Comments</title>
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
	<div id="table root">
		<table border="2" width="100%" cellpadding="2">
			<thead>
				<tr>
					<th>Task id</th>
					<th>Comment ID</th>
					<th>Comments</th>
					<th>DateTime</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="com" items="${allcomment}">
					<tr>
						<td>${com.taskId}</td>
						<td>${com.commentId}</td>
						<td>${com.comments}</td>
						<td>${com.datetime}</td>
						
						</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>