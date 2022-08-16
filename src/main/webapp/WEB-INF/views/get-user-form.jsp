<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get User</title>
<style type="text/css">
body {
	background-image:
		url("https://wallpapers.com/images/hd/plain-blue-glitch-r5ckwv91utiy3tjv.webp");
	height: 768px;
	width: 1366px;
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	position: relative;
}

* {
	box-sizing: border-box;
}

input[type=text], select, textarea {
	width: 50%;
	padding: 15px;
	border: 1px solid #ccc;
	border-radius: 8px;
	resize: vertical;
}

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
}

.container {
	margin-top: 1%;
	margin-left: 30%;
	border-radius: 5px;
	background-color: #ffff99;
	padding: 30px;
	width: 40%;
	float: left;
}

.col-25 {
	float: left;
	width: 40%;
	margin-top: 6px;
	margin-left: 10px;
}

.col-75 {
	float: left;
	width: 55%;
	margin-top: 6px;
	align:center;
}

.row:after {
	content: "";
	display: table;
	clear: both;
	text-align: center;
	width: 55%;
}

.btn {
	display: inline-block;
	padding: 5px 20px;
	font-size: 18px;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	outline: none;
	color: white;
	background-color: #6bb6ff;
	border: none;
	border-radius: 10px;
	box-shadow: 0 9px #1E90FF;
	margin-left: 10px;
	margin-top: 10px;
	align: center;
}

.btn:hover {
	background-color: #6bb6ff
}

.btn:active {
	background-color: #9932CC;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}
</style>
</head>
<body>
   <div class="container" align="center">
    <h3 align="center">Get user</h3>
    <form action="getuserid" method="get" style="margin: 0;">
    <div class="row" >
        <label>Enter User ID</label> 
         </div>
         
        <input type="text" placeholder="user id" name="id" class="row"> 
       
        <input type='submit' value="Get" name="submit" class="btn">
        
            
    </form>
    </div>
   
</body>
</html>