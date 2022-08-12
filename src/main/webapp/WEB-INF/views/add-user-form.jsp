<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add User</title>
<style type="text/css">
.text-danger {
	color: #e80c4d;
	font-size: 0.9em;
}

body {
	background-image:
		url("https://previews.123rf.com/images/mettus/mettus1303/mettus130303963/18629743-abstract-watercolor-background-paper-design-of-bright-color-splashes-modern-art.jpg");
	height: 768px;
	width: 1366px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}
.form {
border: none;
border-radius: 2px;
margin-bottom: 12px;
overflow: hidden;
padding: 0 .625em;
text-align: center;
}

.form label {
cursor: pointer;
display: inline-block;
padding: 3px 6px;
text-align: right;
width: 150px;
vertical-align: top;
text-align: center;
}
.form input {
font-size: inherit;
border-radious: 4px;
background-color: lemonchiffon;
padding: 8px;
text-align: center;
}
.form input:hover {
	background-color: #ffff66;
}
button {
text-align: center;
padding: 8px;
background: #fff;
	color: #ff7200;
}
.btnn:hover {
	background: #fff;
	color: #ff7200;
}
</style>
</head>
<body>
	<div id="root" align="center">
		<div class="form">
		<h1 class="button">Sign Up</h1>
			<form:form action="add" method="post" modelAttribute="adduser">
				<div>
					<label for="name">Name</label>
					<div>
						<form:input path="name" placeholder="Name"
							title="Name can't be empty or must contain only alphabets" 
						pattern="^[a-zA-Z]+$" required="true"/>
					</div>
				</div>
				<form:errors path="name" class="text-danger" />
				<div>
					<label for="password">Password</label>
					<div>
						<form:input path="password" placeholder="Password"
							pattern="^[A-Za-z0-9._%+-]+$"
							title="Enter valid Password" required="true" />
					</div>
				</div>
				<form:errors path="password" class="text-danger" />
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" placeholder="Email"
							pattern="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}$"
							title="Enter valid email ex: example@gmail.com" required="true" />
					</div>
				</div>
				<form:errors path="email" class="text-danger" />
				<div>
					<label for="mobileNo">Mobile Number</label>
					<div>
						<form:input path="mobileNo" placeholder="Mobile Number"
							pattern="[1-9]{1}[0-9]{9}"
							title="Phone number should have atleast 10 digits"
							required="true" />
					</div>
				</div>
				<form:errors path="mobileNo" class="text-danger" />
				<div class="button">
					<label for="gender" class="button">Gender</label>
					<div>
						<form:select path="gender" class="button" placeholder="Gender">
							<form:option value="Male">Male</form:option>
							<form:option value="Female">Female</form:option>
						</form:select>
					</div>
				</div>
				<div>
					<label for="address">Address</label>
					<div>
						<form:input path="address" placeholder="Address" />
					</div>
				</div>
				<form:errors path="address" class="text-danger" />
				<div>
					<label for="state">State</label>
					<div>
						<form:input path="state" placeholder="State"
							title="State can't be empty or must contain only alphabets" 
						pattern="^[a-zA-Z]+$" required="true"/>
					</div>
				</div>
				<form:errors path="state" class="text-danger" />
				<div>
					<label for="city">City</label>
					<div>
						<form:input path="city" placeholder="City"
							title=" City name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true" />
					</div>
				</div>
				<form:errors path="city" class="text-danger" />
				<div>
					<label for="pincode">Pin Code</label>
					<div>
						<form:input path="pincode" placeholder="Pincode"
							pattern= "[1-9]{1}[0-9]{5}|[1-9]{1}[0-9]{3}\\s[0-9]{3}"
							title="Pincode should have atleast 6 digits" required="true" />
					</div>
				</div>
				<form:errors path="pincode" class="text-danger" />
		</div>
		<div>
			<form:button>Add New</form:button>
		</div>
		</form:form>
			<p>
                <button onclick="document.location='/todo'">Back</button>
            </p>
	</div>

</body>
</html>