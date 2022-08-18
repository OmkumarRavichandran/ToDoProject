<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<style>
<%@include file="/WEB-INF/css/userlogin.css"%>
</style>
</head>
<body>
	<div class="main">
		<div class="navbar">
			<div class="icon">
				<h2 class="logo">ToDo</h2>
			</div>

			<div class="menu">
				<ul>
					<li><a href="/todo">Home</a></li>
				</ul>
			</div>

		</div>
		<div class="content">
			<h1>
				ToDo <br> <span>Application</span>
			</h1>
			<p class="par">
				ToDo List App is a kind of app that generally used to maintain <br>
				our day-to-day tasks or list everything that we have to do, with <br>
				the most important tasks at the top of the list,
			</p>

			<div class="form">
				<form:form action="checkuserlogin" method="post"
					modelAttribute="user">
					<h2>Login Here</h2>
					<input type="text" name="name" placeholder="Enter Name Here">
					<input type="password" name="password"
						placeholder="Enter Password Here">

					<button type="submit" class="btnn">Login</button>
					${result}
					<h3>Dont have an account</h3>

					<div class="btnn">
						<a href="/adduser">Sign up </a>
					</div>

				</form:form>

			</div>
		</div>
	</div>
	<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
</body>
</html>