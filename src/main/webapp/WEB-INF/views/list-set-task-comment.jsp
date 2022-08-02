<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Task Comments</title>
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
					<label for="dateDue">Date Due</label>
					<div>
						<form:input path="dateDue" readonly="true" />
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
				</form:form>
		</div>
	<div id="addcomment">
		<div>
					<label for="taskId">Task id</label>
					<div>
						<form:input path="taskId" />
					</div>
				</div>
				<div>
					<label for="commentId">Comment ID</label>
					<div>
						<form:input path="commentId" />
					</div>
				</div>
				<div>
					<label for="comments">Comments</label>
					<div>
						<form:input path="comments" />
					</div>
				</div>
				</div>
				<div>
					<form:button>Add New</form:button>
				</div>
	</div>
	</div>
</body>
</html>