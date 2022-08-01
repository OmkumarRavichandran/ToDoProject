<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get User</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="get" modelAttribute="getuser">
				<div>
					<label for="userid">User id</label>
					<div>
						<form:input path="userid" />
					</div>
				</div>
				<div>
					<label for="name">Name</label>
					<div>
						<form:input path="name" />
					</div>
				</div>
				<div>
					<label for="email">Email</label>
					<div>
						<form:input path="email" />
					</div>
				</div>
				<div>
					<label for="mobileno">Mobile Number</label>
					<div>
						<form:input path="mobileno" />
					</div>
				</div>
		</div>
	</div>
	</form:form>
	</div>
	</div>
</body>
</html>