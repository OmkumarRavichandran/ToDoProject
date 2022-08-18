<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Modify Form</title>
<style type="text/css">
<%@include file="/WEB-INF/css/usermodify.css"%>
</style>
</head>
<body>
	<div class="container">
		<h3>Modify user</h3>
		<br>
		<form action="/updateuser" method="get" style="margin: 0;">
			<div class="row">
				<label>Enter User ID</label>
			</div>
			<input type="text" placeholder="user id" name="userid" class="row">
			<input type='submit' value="update" name="submit" class="btn">
		</form>
		<p>
			<button class="btn" onclick="document.location='/index'">Back</button>
		</p>
	</div>
</body>
</html>