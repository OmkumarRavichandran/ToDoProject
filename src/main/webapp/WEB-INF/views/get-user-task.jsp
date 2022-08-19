<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get User Task</title>
<style type="text/css">
<%@include file="/WEB-INF/css/getusertask.css"%>
</style>
</head>
<body>
	<div class="container">
		<h3>Get User Task</h3>
		<br>
		<form action="getusertask" method="get" style="margin: 0;">
			<div class="row">
			<label>Enter User ID</label> 
			</div>
			<input type="text" placeholder="User id"
				name="id"  pattern="^[0-9]+$" required="true" class="row"> 
				<input type='submit' value="Get"
				name="submit" class="btn">
		</form>
		<p>
			<button class="btn" onclick="document.location='/index'">Back</button>
		</p>
	</div>
</body>
</html>