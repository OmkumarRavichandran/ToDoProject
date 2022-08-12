<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete User</title>
</head>
<body>
    <h3>Delete user</h3>
    <br>
    <form action="deleteuser" method="get"
        style="margin: 0;">
        <label>Enter User ID</label> <input type="text" placeholder="user id"
            name="userid"> <input type='submit' value="Delete" name="submit">
    </form>
</body>
</html>