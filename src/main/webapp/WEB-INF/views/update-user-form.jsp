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
		<h1 class="but">Modify User</h1>
		<form:form action="update" method="post" modelAttribute="updateuser">

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
					<label for="name">Name</label>
				</div>
				<div class="col-75">
					<form:input path="name" placeholder="Name"
						title="Name can't be empty or must contain only alphabets"
						pattern="^[a-zA-Z]+$" required="true" />
				</div>
				<form:errors path="name" class="text-danger" />
			</div>

			<div class="row">
			<div class="col-25">
				<label for="password">Password</label>
				</div>
				<div class="col-75">
					<form:input path="password" placeholder="Password"
						pattern="^[A-Za-z0-9._%+-]+$" title="Enter valid Password"
						required="true" />
			</div>
			<form:errors path="password" class="text-danger" />
			</div>
			
			<div class="row">
			<div class="col-25">
				<label for="email">Email</label>
				</div>
				<div class="col-75">
					<form:input path="email" placeholder="Email"
						pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
						title="Enter valid email ex: example@gmail.com" required="true" />
			</div>
			<form:errors path="email" class="text-danger" />
			</div>
			
			<div class="row">
			<div class="col-25">
				<label for="mobileNo">Mobile Number</label>
				</div>
				<div class="col-75">
					<form:input path="mobileNo" placeholder="Mobile Number"
						pattern="[1-9]{1}[0-9]{9}"
						title="Phone number should have atleast 10 digits" required="true" />
			</div>
			<form:errors path="mobileNo" class="text-danger" />
			</div>
			
			<div class="row">
			<div class="col-25">
				<label for="address">Address</label>
				</div>
				<div class="col-75">
					<form:input path="address" placeholder="Address" />
			</div>
			<form:errors path="address" class="text-danger" />
			</div>
			
			<div class="row">
			<div class="col-25">
				<label for="gender" class="button">Gender</label>
				</div>
				<div class="col-75">
					<form:select path="gender" class="button" placeholder="Gender">
						<form:option value="Select">Select</form:option>
						<form:option value="Male">Male</form:option>
						<form:option value="Female">Female</form:option>
					</form:select>
				</div>
			</div>
			
			<div class="row">
			<div class="col-25">
				<label for="state">State</label>
				</div>
				<div class="col-75">
					<form:input path="state" />
			</div>
			<form:errors path="state" class="text-danger" />
			</div>
			
			<div class="row">
			<div class="col-25">
				<label for="city">City</label>
				</div>
				<div class="col-75">
					<form:input path="city" />
			</div>
			<form:errors path="city" class="text-danger" />
			</div>
			
			<div class="row">
			<div class="col-25">
				<label for="pincode">Pin Code</label>
				</div>
				<div class="col-75">
					<form:input path="pincode" />
			</div>
			<form:errors path="pincode" class="text-danger" />
			</div>

			<div class="row">
				<form:button class="btn">Update User</form:button>
			</div>
		</form:form>
	</div>
</body>
</html>