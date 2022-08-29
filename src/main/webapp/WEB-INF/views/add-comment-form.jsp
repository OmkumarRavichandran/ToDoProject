<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Add Comment</title>
<style>
<%@include file="/WEB-INF/css/addcomment.css"%>
</style>
</head>
<body>
<div>
		<div class="container">
		<h1 class="but">Add Comment</h1>
			<form:form action="add" method="post" modelAttribute="addcomment">
			
				<%-- <div class="row">
				<div class="col-25">
					<label for="taskId">Task id</label>
					</div>
					<div class="col-75">
						<form:input path="taskId" placeholder="Task ID"
							title="Task ID can't be empty or must contain only Numbers" 
						pattern="^[1-9]+[0-9]*$" required="true"/>
				</div>
				<form:errors path="taskId" class="text-danger" />
				</div> --%>
				
				
				<div class="row">
				<div class="col-25">
				<label for="taskId">Task id</label>
				</div>
				<div class="col-75">
                <form:select path="taskId" placeholder="Task Id" class="text-box">

                <c:forEach var="allTaskID" items="${listOfTaskID}">
                
            <form:option value="${allTaskID.taskId}" label="${allTaskID.taskId}" />
              
            </c:forEach>
            </form:select>  
            </div>  
                </div>
				
				<div class="row">
				<div class="col-25">
					<label for="comments">Comments</label>
					</div>
					<div class="col-75">
						<form:input path="comments" placeholder="Comments"
							title=" Comments name can't be empty or must contain only alphabets"
							pattern="^[A-Za-z\s]*$" required="true"/>
				</div>
				<form:errors path="comments" class="text-danger" />
				</div>
				
				<div class="row">
					<form:button class="btn" target="_self">Add New</form:button>
				</div>
			</form:form>
		</div>
		</div>
</body>
</html>