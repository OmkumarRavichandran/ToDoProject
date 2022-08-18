<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get Task Comments</title>
<style>
<%@include file="/WEB-INF/css/getcommenttask.css"%>
</style>
</head>
<body>
<div class="container">
    <h3>Get Task Comments</h3>
    <br>
    <form action="gettaskcomment" method="get" style="margin: 0;">
       <div class="row">
        <label>Enter Task ID</label> 
        </div>
        <input type="text" placeholder="Task id"
            name="id" class="row"> <input type='submit' value="Get" name="submit" class="btn">
    </form>
    <p>
			<button class="btn" onclick="document.location='/index'">Back</button>
		</p>
    </div>
</body>
</html>