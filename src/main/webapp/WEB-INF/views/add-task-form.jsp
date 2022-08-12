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
		<h1 class="button">Add Task</h1>
			<form:form action="add" method="post" modelAttribute="addtask">
				<div>
					<label for="taskId">Task ID</label>
					<div>
						<form:input path="taskId" placeholder="Task ID" />
					</div>
				</div>
				<form:errors path="taskId" class="text-danger" />

				<div>
					<label for="taskTitle">Task title</label>
					<div>
						<form:input path="taskTitle" placeholder="Task Title"
						title="Task Title can't be empty or must contain only alphabets" 
						pattern="^[A-Za-z\s]*$" required="true"/>
					</div>
				</div>
				<form:errors path="taskTitle" class="text-danger" />

				<div>
					<label for="description">description</label>
					<div>
						<form:input path="description" placeholder="description"
						title="Description can't be empty or must contain only alphabets" 
						pattern="^[A-Za-z\s]*$" required="true"/>
					</div>
				</div>
				<form:errors path="description" class="text-danger" />

				<div>
					<label for="dateModified">Date Modified</label>
					<div>
						<form:input path="dateModified" type="date" />
					</div>
				</div>
				<div>
					<label for="dateCompleted">Date Completed</label>
					<div>
						<form:input path="dateCompleted" type="date" />
					</div>
				</div>
				<div>
					<label for="userId">User id</label>
					<div>
						<form:input path="userId" placeholder="User ID"
						title="User ID can't be empty or must contain only Numbers" 
						pattern="^[1-9]+[0-9]*$" required="true" />
					</div>
				</div>
				<form:errors path="userId" class="text-danger" />

				<div>
					<label for="Status" class="label-size">Status</label>
					<div>
						<form:select path="Status" class="text-box" placeholder="Gender">
							<form:option value="Work in Progress">Work in Progress</form:option>
							<form:option value="done">done</form:option>
						</form:select>
					</div>
				</div>
				<form:errors path="status" class="text-danger" />
				
		
		<div>
			<form:button>Add New</form:button>
		</div>
		</form:form>
	</div>
</div>
</body>
</html>