<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Vendor</title>
</head>
<body>
	
	<h2>New Vendor</h2>
	
	
	
	<form action="savevendor" method="post">  
	
			
			Add new Vendor <br>
			Title: <input type="text" name="title"> <br><br>
	
	
			<input type="submit" value="Save Vendor">
	
	</form>
	
	
</body>
</html>