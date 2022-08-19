<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Task Comments</title>
<style type="text/css">
<%@include file="/WEB-INF/css/listaskcomment.css"%>
</style>
</head>
<body>
		<div class="container">
			<form:form action="" method="post" modelAttribute="gettask">
			
				<div class="row">
				<div class="col-25">
					<label for="taskId">Task ID</label>
					</div>
					<div class="col-75">
						<form:input path="taskId" readonly="true" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="taskTitle">Task title</label>
					</div>
					<div class="col-75">
						<form:input path="taskTitle" readonly="true" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="description">description</label>
					</div>
					<div class="col-75">
						<form:input path="description" readonly="true" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="dateCreated">dateCreated</label>
					</div>
					<div class="col-75">
						<form:input path="dateCreated" readonly="true" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="dueDate">Date Due</label>
					</div>
					<div class="col-75">
						<form:input path="dueDate" readonly="true" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="dateModified">Date Modified</label>
					</div>
					<div class="col-75">
						<form:input path="dateModified" readonly="true" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="dateCompleted">Date Completed</label>
					</div>
					<div class="col-75">
						<form:input path="dateCompleted" readonly="true" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="userId">User id</label>
					</div>
					<div class="col-75">
						<form:input path="userId" readonly="true" />
					</div>
				</div>
				
				<div class="row">
				<div class="col-25">
					<label for="Status">Status</label>
					</div>
					<div class="col-75">
						<form:input path="status" />
					</div>
				</div>
				</form:form>
		</div>
	<div class="container">
		<table>
		<caption></caption>
		<colgroup>
                    <col span="15" style="background-color: #d9a8cf">
                    <col span="4" style="background-color: white">
                </colgroup>
			<thead>
				<tr>
					<th>Task id</th>
					<th>Comment ID</th>
					<th>Comments</th>
					<th>DateTime</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="com" items="${commentlist}">
					<tr>
						<td>${com.taskId}</td>
						<td>${com.commentId}</td>
						<td>${com.comments}</td>
						<td>${com.datetime}</td>
				</c:forEach>
			</tbody>
		</table>
		<p>
			<button class="btn" onclick="document.location='/index'">Back</button>
		</p>
	</div>
</body>
</html>