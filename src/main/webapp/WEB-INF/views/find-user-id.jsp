<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get User</title>
<style>
<%@include file="/WEB-INF/css/finduser.css"%>
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
					<form:input path="userId" readonly="true"/>
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for="name">Name</label>
				</div>
				<div class="col-75">
					<form:input path="name" readonly="true"/>
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for="password">Password</label>
				</div>
				<div class="col-75">
					<form:input path="password" readonly="true"/>
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for="email">Email</label>
				</div>
				<div class="col-75">
					<form:input path="email" readonly="true"/>
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for="mobileNo">Mobile Number</label>
				</div>
				<div class="col-75">
					<form:input path="mobileNo" readonly="true"/>
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for="gender">Gender</label>
				</div>
				<div class="col-75">
					<form:input path="gender" readonly="true"/>
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for="address">Address</label>
				</div>
				<div class="col-75">
					<form:input path="address" readonly="true"/>
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for="state">State</label>
				</div>
				<div class="col-75">
					<form:input path="state" readonly="true"/>
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for="city">City</label>
				</div>
				<div class="col-75">
					<form:input path="city" readonly="true"/>
				</div>
			</div>

			<div class="row">
				<div class="col-25">
					<label for="pincode">Pin Code</label>
				</div>
				<div class="col-75">
					<form:input path="pincode" readonly="true"/>
				</div>
			</div>
		</form:form>
		<p>
			<button class="btn" onclick="document.location='/index'">Back</button>
		</p>
	</div>
</body>
</html>