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
					<label for="taskid">Task ID</label>
					<div>
						<form:input path="taskid" />
					</div>
				</div>
				<div>
					<label for="tasktitle">Task title</label>
					<div>
						<form:input path="tasktitle" />
					</div>
				</div>
				<div>
					<label for="description">description</label>
					<div>
						<form:input path="description" />
					</div>
				</div>
				<div>
					<label for="date_created">dateCreated</label>
					<div>
						<form:input path="date_created" />
					</div>
				</div>
				<div>
					<label for="datedue">Date Due</label>
					<div>
						<form:input path="datedue" />
					</div>
				</div>
				<div>
					<label for="datemodified">Date Modified</label>
					<div>
						<form:input path="datemodified" />
					</div>
				</div>
				<div>
					<label for="datecompleted">Date Completed</label>
					<div>
						<form:input path="datecompleted" />
					</div>
				</div>
				<div>
					<label for="userid">User id</label>
					<div>
						<form:input path="userid" />
					</div>
				</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>