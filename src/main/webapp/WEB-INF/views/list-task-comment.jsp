<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Task Comments</title>
<style type="text/css">
tr:hover {background-color: #ECF32D;}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
tr:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}
th:nth-child(even),td:nth-child(even) {
  background-color: rgba(150, 212, 212, 0.4);
}
</style>
</head>
<body>
	<div id="root">
		<div id="docform">
			<form:form action="" method="post" modelAttribute="gettask">
				<div>
					<label for="taskId">Task ID</label>
					<div>
						<form:input path="taskId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="taskTitle">Task title</label>
					<div>
						<form:input path="taskTitle" readonly="true" />
					</div>
				</div>
				<div>
					<label for="description">description</label>
					<div>
						<form:input path="description" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dateCreated">dateCreated</label>
					<div>
						<form:input path="dateCreated" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dateModified">Date Modified</label>
					<div>
						<form:input path="dateModified" readonly="true" />
					</div>
				</div>
				<div>
					<label for="dateCompleted">Date Completed</label>
					<div>
						<form:input path="dateCompleted" readonly="true" />
					</div>
				</div>
				<div>
					<label for="userId">User id</label>
					<div>
						<form:input path="userId" readonly="true" />
					</div>
				</div>
				<div>
					<label for="Status">Status</label>
					<div>
						<form:input path="status" />
					</div>
				</div>
				</form:form>
		</div>
	<div id="commentlist">
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