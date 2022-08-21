	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		pageEncoding="ISO-8859-1"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<!DOCTYPE html>
	<html lang="en">
	<head>
	<meta charset="ISO-8859-1">
	<title>Task List</title>
	<link rel="stylesheet"
    href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<style type="text/css">
	<%@include file="/WEB-INF/css/listtask.css"%>
	</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	</head>
	<body>
		<div>
			<table class="table">
			<caption></caption>
			<colgroup>
                    <col span="15" style="background-color: #80ffff">
                    <col span="4" style="background-color: white">
                </colgroup>
                <p>
			<button class="but" onclick="document.location='/index'">Back</button>
		</p>
			<h2>Task List</h2>
			
				<thead>
					<tr>
						<th>Task id</th>
						<th>Task Title</th>
						<th>Description</th>
						<th>Created Date</th>
						<th>Due Date</th>
						<th>Modified Date</th>
						<th>Completed Date</th>
						<th>User ID</th>
						<th>Priority</th>
						<th>Status</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="task" items="${alltask}">
						<tr>
							<td>${task.taskId}</td>
							<td>${task.taskTitle}</td>
							<td>${task.description}</td>
							<td>${task.dateCreated}</td> 
							<td>${task.dueDate}</td> 
							<td>${task.dateModified}</td> 
							<td>${task.dateCompleted}</td> 
							<td>${task.userId}</td>
							<td class="red">${task.priority}</td> 
							<td>${task.status}</td> 
							<td><a href="updatetask?taskid=${task.taskId}">Edit</a></td>
							<td><a href="deletetask?taskid=${task.taskId}">Delete</a></td>
							</tr>
					</c:forEach>
				</tbody>
			</table>
			
		</div>
		<div class="container">
  <button type="button" class="btn btn-info" data-toggle="collapse" data-target="#demo">Add Comment</button>
  <div id="demo" class="collapse">
    <iframe src="/comment/addcomment" title="Frame"> </iframe>
  </div>
</div>	
<script>
	function f_color(){
		for (let i=0; i < document.getElementsByClassName('red').length; i++ ) {
		if (document.getElementsByClassName('red')[i].innerHTML == 'High') {
		document.getElementsByClassName('red')[i].style.backgroundColor = "red";
		}
		
	else if (document.getElementsByClassName('red')[i].innerHTML == 'Medium') {
		document.getElementsByClassName('red')[i].style.backgroundColor = "yellow";
		}
	else if (document.getElementsByClassName('red')[i].innerHTML == 'Low') {
		document.getElementsByClassName('red')[i].style.backgroundColor = "green";
		}
	}
}
		f_color();	
	</script>	
	</body>
	
	</html>