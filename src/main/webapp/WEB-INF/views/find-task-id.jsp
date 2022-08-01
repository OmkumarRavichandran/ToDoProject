<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add User</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="get" modelAttribute="gettask">
				<div>
					<label for="taskId">Task ID</label>
					<div>
						<form:input path="taskId" />
					</div>
				</div>
				<div>
					<label for="taskTitle">Task title</label>
					<div>
						<form:input path="taskTitle" />
					</div>
				</div>
				<div>
					<label for="description">description</label>
					<div>
						<form:input path="description" />
					</div>
				</div>
				<div>
					<label for="dateCreated">dateCreated</label>
					<div>
						<form:input path="dateCreated" />
					</div>
				</div>
				<div>
					<label for="dateDue">Date Due</label>
					<div>
						<form:input path="dateDue" />
					</div>
				</div>
				<div>
					<label for="dateModified">Date Modified</label>
					<div>
						<form:input path="dateModified" />
					</div>
				</div>
				<div>
					<label for="dateCompleted">Date Completed</label>
					<div>
						<form:input path="dateCompleted" />
					</div>
				</div>
				<div>
					<label for="userId">User id</label>
					<div>
						<form:input path="userId" />
					</div>
				</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>