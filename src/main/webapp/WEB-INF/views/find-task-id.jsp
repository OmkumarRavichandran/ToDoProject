<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add User</title>
<style>
<%@include file="/WEB-INF/css/findtask.css"%>
</style>
</head>
<body>
		<div id="container">
		<h1 class="but">Get Task</h1>
			<form:form action="add" method="get" modelAttribute="gettask">
				<div class="row">
				<div class="col-25">
					<label for="taskId">Task ID</label>
					</div>
					<div class="col-75">
						<form:input path="taskId" readonly="true"/>
					</div>
				</div>
				
				
				<div class="row">
				<div class="col-25">
					<label for="taskTitle">Task title</label>
					</div>
					<div class="col-75">
						<form:input path="taskTitle" readonly="true" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="description">description</label>
					</div>
					<div class="col-75">
						<form:input path="description" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="dateCreated">dateCreated</label>
					</div>
					<div class="col-75">
						<form:input path="dateCreated" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="dueDate">Due Date</label>
					</div>
					<div class="col-75">
						<form:input path="dueDate" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="dateModified">Date Modified</label>
					</div>
					<div class="col-75">
						<form:input path="dateModified" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="dateCompleted">Date Completed</label>
					</div>
					<div class="col-75">
						<form:input path="dateCompleted" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="userId">User id</label>
					</div>
					<div class="col-75">
						<form:input path="userId" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="priority">Priority</label>
					</div>
					<div class="col-75">
						<form:input path="priority" />
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
				<div class="row">
				<div class="col-25">
					<label for="remainingDays">remainingDays</label>
					</div>
					<div class="col-75">
						<form:input path="remainingDays" />
					</div>
				</div>
		
		</form:form>
		<p>
			<button class="btn" onclick="document.location='/index'">Back</button>
		</p>
	</div>
</body>
</html>