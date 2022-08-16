<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Comment</title>
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
		<h1 class="but">Add Comment</h1>
			<form:form action="add" method="post" modelAttribute="addcomment">
			
				<div class="row">
				<div class="col-25">
					<label for="taskId">Task id</label>
					</div>
					<div class="col-75">
						<form:input path="taskId" placeholder="Task ID"
							title="Task ID can't be empty or must contain only Numbers" 
						pattern="^[1-9]+[0-9]*$" required="true"/>
				</div>
				<form:errors path="taskId" class="text-danger" />
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="comments">Comments</label>
					</div>
					<div class="col-75">
						<form:input path="comments" placeholder="Comments"
							title=" Comments name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true"/>
				</div>
				<form:errors path="comments" class="text-danger" />
				</div>
				
				<div class="row">
					<form:button class="btn" target="_self">Add New</form:button>
				</div>
			</form:form>
		</div>
</body>
</html>