<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete Task</title>
<style>
<%@include file="/WEB-INF/css/deletetask.css"%>
</style>
</head>
<body>
 <div class="container" align="center">
	<h3 align="center">Delete Task</h3>
	<br>
	<form action="deletetask" method="get" style="margin: 0;">
		<div class="row">
		<label>Enter Task ID</label>
		</div>
		 <input type="text" placeholder="Task id" name="taskid" class="row"> 
		<input type='submit' value="Delete" name="submit" class="btn">
	</form>
		<p>
			<button class="btn" onclick="document.location='/index'">Back</button>
		</p>
	</div>
</body>
</html>