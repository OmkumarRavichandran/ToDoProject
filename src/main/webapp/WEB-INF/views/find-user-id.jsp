<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get User</title>
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
	background-color: #ffb3ff;
	padding: 30px;
	width: 40%;
	float: left;
}

.col-25 {
	float: left;
	width: 30%;
	margin-top: 6px;
	margin-left: 40px;
}

.col-75 {
	float: left;
	width: 30%;
	margin-top: 6px;
}

.row:after {
	content: "";
	display: table;
	clear: both;
}

.but {
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
		<h1 class="but">Get User Details</h1>
			<form:form action="add" method="get" modelAttribute="getuser">
				
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
					<label for="name">Name</label>
					</div>
					<div class="col-75">
						<form:input path="name" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="password">Password</label>
					</div>
					<div class="col-75">
						<form:input path="password" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="email">Email</label>
					</div>
					<div class="col-75">
						<form:input path="email" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="mobileNo">Mobile Number</label>
					</div>
					<div class="col-75">
						<form:input path="mobileNo" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="gender">Gender</label>
					</div>
					<div class="col-75">
						<form:input path="gender" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="address">Address</label>
					</div>
					<div class="col-75">
						<form:input path="address" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="state">State</label>
					</div>
					<div class="col-75">
						<form:input path="state" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="city">City</label>
					</div>
					<div class="col-75">
						<form:input path="city" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="pincode">Pin Code</label>
					</div>
					<div class="col-75">
						<form:input path="pincode" />
					</div>
				</div>
	</form:form>
		</div>
</body>
</html>