<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Delete User</title>
<style>
<%@include file="/WEB-INF/css/deleteuser.css"%>
</style>
</head>
<body>
	<div class="container">
		<h3>Delete user</h3>
		<br>
		<form action="deleteuser" method="get" style="margin: 0;">
			<div class="row">
				<label>Enter User ID</label>
			</div>
			<input type="text" placeholder="user id" name="userid" class="row"> <input
				type='submit' value="Delete" name="submit" class="btn">
		</form>
		<p>
			<button class="btn" onclick="document.location='/index'">Back</button>
		</p>
	</div>
</body>
</html>