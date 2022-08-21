<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>TODO Application</title>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
<%@include file="/WEB-INF/css/home.css"%>
</style>
</head>
<body>
	<h1 class="glow">TODO Application</h1>
	<div class="menu">
		<ul>
			<div class="dropdown">
				<em class="dropbtn"> User </em>
				<div class="dropdown-content">
					<a href="/userlist">List of User</a> 
					<a href="/getuserform">Get User Details</a> 
					<a href="/usermodifyform">Modify User</a> 
					<a href="/deleteuserform">Delete User</a>
					<a href="/getusertaskform">Get User Task Details</a>
				</div>
			</div>
			<li></li>
			<div class="dropdown">
				<em class="dropbtn"> TaskStatus </em>
				<div class="dropdown-content">
					<a href="/task/status">Completed Task</a>
					<a href="/task/highpriority">Fetch High Priority Task</a>
					<a href="/task/mediumpriority">Fetch Medium Priority Task</a>
					<a href="/task/lowpriority">Fetch Low Priority Task</a>
				</div>
			</div>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<div class="dropdown">
				<em class="dropbtn"> Logout<em class="fa fa-caret-down"></em>
				</em>
				<div class="dropdown-content">
					<a href="/todo">Logout</a>
				</div>
			</div>
		</ul>
		<ul>
		<li><button  class="but "onclick="document.location='/task/addtask'">Add Task</button></li>
		</ul>
	</div>
	<div></div>
	<div id="form" style="text-align: center; margin-top: 12%;">
		<table class="table">
		<caption></caption>
		<colgroup>
                    <col span="15" style="background-color: #d9a8cf">
                    <col span="4" style="background-color: white">
                </colgroup>
		
			<thead>
				<tr>
					<th>Task ID</th>
					<th>Task Title</th>
					<th>Description</th>
					<th>Created Date</th>
					<th>Modified Date</th>
					<th>Completed Date</th>
					<th>User ID</th>
					<th>Status</th>
					<th>Priority</th>
					<th>Edit</th>
					<th>Delete</th>
					<th>View</th>
					<th>Task Comments</th>
					<th>Checkbox</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="task" items="${alltask}">
					<tr>
						<td>${task.taskId}</td>
						<td>${task.taskTitle}</td>
						<td>${task.description}</td>
						<td>${task.dateCreated}</td>
						<td>${task.dateModified}</td>
						<td>${task.dateCompleted}</td>
						<td>${task.userId}</td>
						<td>${task.status}</td>
						<td class="red">${task.priority}</td>
						<td class="edit hover"><a href="/task/updatetask?taskid=${task.taskId}">Edit</a></td>
						<td><a href="/task/deletetask?taskid=${task.taskId}">Delete</a></td>
						<td><a href="/task/getTaskid?taskid=${task.taskId}">View</a></td>
						<td><a href="/task/gettaskcomment?id=${task.taskId}">Task Comments</a></td>
						
						<td><input type="checkbox" name="check" id="check" value="true" /></td>
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