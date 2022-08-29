<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Task</title>
<style>
<%@include file="/WEB-INF/css/addtask.css"%>
</style>
</head>
<body>
		<div class="container">
		<h1 class="button">Add Task</h1>
			<form:form action="add" method="post" modelAttribute="addtask">
			
				<div class="row">
				<div class="col-25">
					<label for="taskTitle">Task title</label>
					</div>
					<div class="col-75">
						<form:input path="taskTitle" placeholder="Task Title"
							title="Task Title can't be empty or must contain only alphabets"
							pattern="^[A-Za-z\s]*$" required="true" />
				</div>
				<form:errors path="taskTitle" class="text-danger" />
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="description">description</label>
					</div>
					<div class="col-75">
						<form:input path="description" placeholder="description"
							title="Description can't be empty or must contain only alphabets"
							pattern="^[A-Za-z\s]*$" required="true" />
				</div>
				<form:errors path="description" class="text-danger" />
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="dateModified">Date Modified</label>
					</div>
					<div class="col-75">
						<form:input path="dateModified" type="date" required="true" min="2022-08-23" max="2022-08-23"/>
				</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="dueDate">Due Date</label>
					</div>
					<div class="col=75">
						<form:input path="dueDate" type="date" min="2022-08-24" required="true"/>
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="dateCompleted">Date Completed</label>
					</div>
					<div>
						<form:input path="dateCompleted" type="date" min="2022-08-24" required="true"/>
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="userId">User id</label>
					</div>
					<div class="col-75">
						<form:input path="userId" placeholder="User ID"
							title="User ID can't be empty or must contain only Numbers"
							pattern="^[1-9]+[0-9]*$" readonly="true" required="true"/>
				</div>
				<form:errors path="userId" class="text-danger" />
				</div>
				
				
				<div class="row">
				<div class="col-25">
					<label for="Priority" class="label-size">Priority</label>
					</div>
					<div class="col-75">
						<form:select path="priority" class="text-box" placeholder="Priority">
						<form:option value="Select">Select</form:option>
							<form:option class="s" value="High">High</form:option>
							<form:option value="Medium">Medium</form:option>
							<form:option value="Low">Low</form:option>
						</form:select>
				</div>
				<form:errors path="priority" class="text-danger" />
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="Status" class="label-size">Status</label>
					</div>
					<div class="col-75">
						<form:select path="Status" class="text-box" placeholder="Status">
							<form:option value="Select">Select</form:option>
							<form:option value="Work in Progress">Work in Progress</form:option>
							<form:option value="Completed">Completed</form:option>
						</form:select>
				</div>
				<form:errors path="status" class="text-danger" />
				</div>
				
				<div class="row">
					<form:button class="btn">Add New</form:button>
				</div>
				<p>
			<button  class="btn "onclick="document.location='/index'">Back</button>
				</p>
			</form:form>
			
		</div>
		
	
</body>
</html>