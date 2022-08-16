<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update User</title>
<style type="text/css">
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}

body {
	background-image:
		url("https://wallpapers.com/images/hd/plain-blue-glitch-r5ckwv91utiy3tjv.webp");
	height: 768px;
	width: 1366px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

* {
	box-sizing: border-box;
}

input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
}

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
}

.container {
	margin-top: 1%;
	margin-left: 30%;
	border-radius: 5px;
	background-color: #ffff99;
	padding: 30px;
	width: 40%;
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

.row:after {
	content: "";
	display: table;
	clear: both;
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
	margin-left: 190px;
	margin-top: 10px;
}

.btn:hover {
	background-color: #6bb6ff
}

.btn:active {
	background-color: #9932CC;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}
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
	</div>
</body>
</html>