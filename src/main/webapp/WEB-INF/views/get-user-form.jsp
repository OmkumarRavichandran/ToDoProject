<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Get User</title>
<style>
<%@include file="/WEB-INF/css/getuser.css"%>
</style>
</head>
<body>
   <div class="container">
   <div class="message">${message}</div>
    <h3>Get user</h3>
    
    <form action="getuserid" method="get" style="margin: 0;">
    <div class="row" >
        <label>Enter User ID</label> 
         </div>
        <input type="text" placeholder="Enter User id" name="useid" class="row" pattern="^[0-9]+$"
         required = "true" /> 
       
        <input type='submit' value="Get" name="submit" class="btn" >   
    </form>
    <p>
		<button class="btn" onclick="document.location='/index'">Back</button>
	</p>
    </div>
   
</body>
</html>