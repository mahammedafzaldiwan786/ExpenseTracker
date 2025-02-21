<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Category</title>
</head>
<body>
	
	
	<h2>New Category</h2>
	
	
	<form action="savecategory" method="post">  
	
			
			Category ID: <input type="text" name="categoryId"> <br><br>
			Title: <input type="text" name="title"> <br><br>
	
	
			<input type="submit" value="Save Category">
	
	</form>
	
	
</body>
</html>