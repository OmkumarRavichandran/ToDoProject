<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>List of Comments</title>
<link rel="stylesheet"
href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
<%@include file="/WEB-INF/css/listcomment.css"%>
</style>
</head>
<body>
	<div id="table root">
		<table class="table">
			<caption></caption>
			<colgroup>
                    <col span="7" style="background-color: #d9a8cf">
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
				<c:forEach var="com" items="${allcomment}">
					<tr>
						<td>${com.taskId}</td>
						<td>${com.commentId}</td>
						<td>${com.comments}</td>
						<td>${com.datetime}</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<p>
		<button class="btn " onclick="document.location='/comment/addcomment'">Back</button>
	</p>
</body>
</html>