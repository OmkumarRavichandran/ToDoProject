<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Comment</title>
</head>
<body>
	<div id="root">
		<div id="form">
			<form:form action="add" method="post" modelAttribute="addcomment">
				<div>
					<label for="taskId">Task id</label>
					<div>
						<form:input path="taskId" placeholder="Task ID"
							title="Task ID can't be empty or must contain only Numbers" 
						pattern="^[1-9]+[0-9]*$" required="true"/>
					</div>
				</div>
				<form:errors path="taskId" class="text-danger" />
				<div>
					<label for="comments">Comments</label>
					<div>
						<form:input path="comments" placeholder="Comments"
							title=" Comments name can't be empty or must contain only alphabets"
							pattern="^[a-zA-Z]+$" required="true"/>
					</div>
				</div>
				<form:errors path="comments" class="text-danger" />
				
				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>