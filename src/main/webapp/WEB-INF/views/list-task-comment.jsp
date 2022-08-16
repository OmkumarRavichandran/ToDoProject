<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Task Comments</title>
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
.container {
	margin-top: 1%;
	margin-left: 5%;
	border-radius: 5px;
	background-color: #ffff99;
	padding: 30px;
	width: 70%;
	float: left;
}

.col-25 {
	float: left;
	width: 30%;
	margin-top: 6px;
	margin-left: 10px;
}

.col-75 {
	float: left;
	width: 55%;
	margin-top: 6px;
}

.btn {
	display: inline-block;
	padding: 10px 20px;
	font-size: 18px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: white;
	background-color: #6bb6ff;
	border: none;
	border-radius: 10px;
	box-shadow: 0 9px #1E90FF;
	margin-left: 300px;
	margin-top: 10px;
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
		<div class="container">
			<form:form action="" method="post" modelAttribute="gettask">
			
				<div class="row">
				<div class="col-25">
					<label for="taskId">Task ID</label>
					</div>
					<div class="col-75">
						<form:input path="taskId" readonly="true" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="taskTitle">Task title</label>
					</div>
					<div>
						<form:input path="taskTitle" readonly="true" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="description">description</label>
					</div>
					<div class="col-75">
						<form:input path="description" readonly="true" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="dateCreated">dateCreated</label>
					</div>
					<div class="col-75">
						<form:input path="dateCreated" readonly="true" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="dueDate">Date Due</label>
					</div>
					<div class="col-75">
						<form:input path="dueDate" readonly="true" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="dateModified">Date Modified</label>
					</div>
					<div class="col-75">
						<form:input path="dateModified" readonly="true" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="dateCompleted">Date Completed</label>
					</div>
					<div class="col-75">
						<form:input path="dateCompleted" readonly="true" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="userId">User id</label>
					</div>
					<div class="col-75">
						<form:input path="userId" readonly="true" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="Status">Status</label>
					</div>
					<div class="col-75">
						<form:input path="status" />
					</div>
				</div>
				</form:form>
		</div>
	<div class="container">
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
				<c:forEach var="com" items="${commentlist}">
					<tr>
						<td>${com.taskId}</td>
						<td>${com.commentId}</td>
						<td>${com.comments}</td>
						<td>${com.datetime}</td>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
</body>
</html>