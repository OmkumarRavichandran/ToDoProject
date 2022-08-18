
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add User</title>
<style>
<%@include file="/WEB-INF/css/adduser.css"%>
</style>
</head>
<body>
		<div class="container">
		<h2 align="center">Sign Up</h2>
			<form:form action="add" method="post" modelAttribute="adduser">

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
							title="Phone number should have atleast 10 digits"
							required="true" />
					
				</div>
				<form:errors path="mobileNo" class="text-danger" />
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="gender" class="button">Gender</label>
					</div>
					<div class="col-75">
						<form:select path="gender" class="button" placeholder="Gender">
							<form:option value="Male">Male</form:option>
							<form:option value="Female">Female</form:option>
						</form:select>
					</div>
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
					<label for="state">State</label>
					</div>
					<div class="col-75">
						<form:input path="state" placeholder="State"
							title="State can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" />
				</div>
				<form:errors path="state" class="text-danger" />
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="city">City</label>
					</div>
					<div class="col-75">
						<form:input path="city" placeholder="City"
							title=" City name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" />
				</div>
				<form:errors path="city" class="text-danger" />
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="pincode">Pin Code</label>
					</div>
					<div class="col-75">
						<form:input path="pincode" placeholder="Pincode"
							pattern="[1-9]{1}[0-9]{5}|[1-9]{1}[0-9]{3}\\s[0-9]{3}"
							title="Pincode should have atleast 6 digits" required="true" />
				</div>
				<form:errors path="pincode" class="text-danger" />
				</div>
				
		<div class="row">
			<form:button class="btn">Add New</form:button>
		
		</div>
			
		</form:form>
		<p>
			<button  class="btn "onclick="document.location='/todo'">Back</button>
		</p>
		</div>
</body>
</html>