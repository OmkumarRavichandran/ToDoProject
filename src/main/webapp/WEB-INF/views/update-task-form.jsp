<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
<style type="text/css">
<%@include file="/WEB-INF/css/updatetask.css"%>
</style>
</head>
<body>
	<div class="container">
		<h1 class="button">Modify Task</h1>
		<form:form action="update" method="post" modelAttribute="updatetask">

			<div class="row">
				<div class="col-25">
					<label for="taskId">Task ID</label>
				</div>
				<div class="col-75">
					<form:input path="taskId" placeholder="Task ID" />
				</div>
				<form:errors path="taskId" class="text-danger" />
			</div>

			<div class="row">
			<div class="col-25">
				<label for="taskTitle">Task title</label>
				</div>
				<div class="col-75">
					<form:input path="taskTitle" placeholder="Task Title"
						title="Task Title can't be empty or must contain only alphabets"
						pattern="^[A-Za-z\s]*$" required="true" />
			</div>
			<form:errors path="taskTitle" class="text-danger" />
			</div>

			<div class="row">
			<div class="col-25">
				<label for="description">description</label>
				</div>
				<div class="col-75">
					<form:input path="description" placeholder="description"
						title="Description can't be empty or must contain only alphabets"
						pattern="^[A-Za-z\s]*$" required="true" />
			</div>
			<form:errors path="description" class="text-danger" />
			</div>

			<div class="row">
			<div class="col-25">
				<label for="dateModified">Date Modified</label>
				</div>
				<div class="col-75">
					<form:input path="dateModified" type="date" />
			</div>
			</div>
			
			<div class="row">
			<div class="col-25">
				<label for="dueDate">Date Due</label>
				</div>
				<div class="col-75">
					<form:input path="dueDate" type="date" />
			</div>
				</div>
			<div class="row">
			<div class="col-25">
				<label for="dateCompleted">Date Completed</label>
				</div>
				<div class="col-75">
					<form:input path="dateCompleted" type="date" />
			</div>
			</div>
			
			<div class="row">
			<div class="col-25">
				<label for="userId">User id</label>
				</div>
				<div class="col-75">
					<form:input path="userId" placeholder="User ID" />
			</div>
			<form:errors path="userId" class="text-danger" />
			</div>
			
			<div class="row">
			<div class="col-25">
				<label for="Priority" class="label-size">Priority</label>
				</div>
				<div class="col-75">
					<form:select path="priority" class="text-box"
						placeholder="Priority">
						<form:option value="High">High</form:option>
						<form:option value="Medium">Medium</form:option>
						<form:option value="Low">Low</form:option>
					</form:select>
				</div>
			</div>
			
			<div class="row">
			<div class="col-25">
				<label for="Status" class="label-size">Status</label>
				</div>
				<div class="col-75">
					<form:select path="Status" class="text-box" placeholder="Gender">
						<form:option value="Work in Progress">Work in Progress</form:option>
						<form:option value="done">done</form:option>
					</form:select>
				</div>
			</div>
			
			<div class="row">
				<form:button class="btn">Update</form:button>
			</div>
		</form:form>
		<p>
			<button class="btn" onclick="document.location='/index'">Back</button>
		</p>
	</div>
</body>
</html>