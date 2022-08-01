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
						<form:input path="taskId" />
					</div>
				</div>
				<div>
					<label for="commentId">Comment ID</label>
					<div>
						<form:input path="commentId" />
					</div>
				</div>
				<div>
					<label for="comments">Comments</label>
					<div>
						<form:input path="comments" />
					</div>
				</div>
				</div>
				<div>
					<form:button>Add New</form:button>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>