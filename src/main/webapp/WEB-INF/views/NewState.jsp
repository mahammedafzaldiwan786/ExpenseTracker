<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New State</title>
</head>
<body>
	
	
	<h2>New State</h2>
	
	<form action="saveState" method="post">
	
		New State :  <input type="text" name="stateName">
		
		<br><br>
		
		<input type="submit">
	
	</form>
	
</body>
</html>