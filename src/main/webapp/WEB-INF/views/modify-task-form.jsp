<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Modify Task</title>
<style type="text/css">
<%@include file="/WEB-INF/css/modifytask.css"%>
</style>
</head>
<body>
	<div class="container" align="center">
		<h3 align="center">Modify Task</h3>
		<br>
		
		<form action="updatetask" method="get" style="margin: 0;">
		<div class="row" >
			<label>Enter Task ID</label> 
			</div>
			
			<input type="text" placeholder="Task id" name="taskid" class="row">
			 <input type='submit' value="Modify" name="submit" class="btn">
		</form>
		<p>
			<button class="btn" onclick="document.location='/index'">Back</button>
		</p>
		</div>
</body>
</html>