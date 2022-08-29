<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>User Login</title>
<style>
<%@include file="/WEB-INF/css/userlogin.css"%>
</style>
</head>
<body>
	<div class="main">
		<div class="navbar">
			<div class="icon">
				<h2 class="logo">ToDo</h2>
			</div>

			<div class="menu">
				<ul>
					<li><a href="/todo">Home</a></li>
					<li></li>
					<li><a href="/about">About</a></li>
				</ul>
			</div>
			

		</div>
		<div class="content">
			<h1>
				ToDo <br> <span>Application</span>
			</h1>
			<div class="animated-text" style="
    width: 703px;
    height: 100px;
    margin-top: 100px;
    margin-left: -637px;">
			<div class="line">
			<p class="par">
				  Get more done with todo.Its simple and free<br></p>
				</div>
			<div class="line">
				Quickly access your website and tasks from anywhere
				</div>
			
			</div>
				
			</div>
			<div class="form">
				<form:form action="checkuserlogin" method="post"
					modelAttribute="user">
					<h2>Login Here</h2>
					<input type="text" name="name" placeholder="Enter Name Here" required="true">
					<input type="password" name="password" id="myInput"
						placeholder="Enter Password Here" required="true">
					
					<input type="checkbox" onclick="myFunction()" style="width: 28px;
    				height: 19px;"><p style="color:white; margin-left: 31px;
    				margin-top: -20px;">Show Password</p>
				
					
					<button type="submit" class="btnn">Login</button>
					${result}
					<h3>Dont have an account</h3>
					${error}
					<div class="btnn">
						<a href="/adduser">Sign up </a>
					</div>
				</form:form>
			</div>
		</div>
	<footer>
        <div class="logo">
            <img alt="logo" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOBzNGVoa8lnxKO2nusC9ixcKaw9K1VlHtoQ&usqp=CAU" width="116px" height="100px" style="
    margin-top: -24px;
">
        </div>
        <div>
            <ul>
                <li><em class="fa fa-phone">&#128222;</em>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="tel:+6382639293">8122444543</a></li>
                <li><span class="fa fa-gmail">&#9993;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a href="mailto:mars1234@gmail.com">omkumar.ravichandran@chainsys.com</a>
            </ul>
        </div>

        <div class="addr">
            No 85, J J Street,<br>Ayanambakkam,<br> Chennai - 600095 (Behind Apollo Nursing College, Poniamman Nagar)<br>
            TamilNadu.
        </div>
    </footer>
	<script src="https://unpkg.com/ionicons@5.4.0/dist/ionicons.js"></script>
	<script>
function myFunction() {
  var x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
</body>
</html>