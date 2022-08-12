<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Modify Form</title>
</head>
<body>
    <h3>Modify user</h3>
    <br>
    <form action="/updateuser" method="get"
        style="margin: 0;">
        <label>Enter User ID</label> <input type="text" placeholder="user id"
            name="userid"> <input type='submit' value="update" name="submit">
    </form>
</body>
</html>