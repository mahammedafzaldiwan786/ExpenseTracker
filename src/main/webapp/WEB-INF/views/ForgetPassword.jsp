<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forget Password</title>
</head>
<body>

	<h2>Forget Password</h2>
	
	<form action="sendOtp" method="post">
	
		Email : <input type="text"><br><br>
		
		<input type="submit">
		
		<a href="login">Login</a>
	
	</form>
	
</body>
</html>