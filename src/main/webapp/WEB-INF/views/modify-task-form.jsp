<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Modify Task</title>
</head>
<body>
    <h3>Modify Task</h3>
    <br>
    <form action="updatetask" method="get"
        style="margin: 0;">
        <label>Enter Task ID</label> <input type="text" placeholder="Task id"
            name="taskid"> <input type='submit' value="Modify" name="submit">
    </form>
</body>
</html>