<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="checkuserlogin" method="post" modelAttribute="user">
				<div>
					<label for="customerUserName">Username :</label>
					<div>
						<form:input path="name" />
					</div>
				</div>
				<div>
					<label for="customerPassword">Password :</label>
					<div>
						<form:input path="password" />
					</div>
				</div>
				<div>
					<form:button>Login</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>