<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta charset="UTF-8">
<title>Email sent</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<p>Email was sent</p>
	<div>
	<form:form action="add" method="post" modelAttribute="adduser">
		<div>
			<label for="toEmail">Email</label>
			<div>
				<form:input path="toEmail" placeholder="Task ID" />
			</div>
		</div>
		<div>
			<label for="taskId">Task ID</label>
			<div>
				<form:input path="taskId" placeholder="Task ID" />
			</div>
		</div>
		<div>
			<label for="taskId">Task ID</label>
			<div>
				<form:input path="taskId" placeholder="Task ID" />
			</div>
		</div>
		</form:form>
		</div>
</body>
</html>