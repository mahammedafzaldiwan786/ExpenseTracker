<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Subcategory</title>
</head>
<body>

	
	<h2>New Subcategory</h2>
	
	
	<form action="savesubcategory" method="post">  
	
			
			Add new Subcategory <br>
			Title: <input type="text" name="title"> <br><br>
			
			Category: <select name="categoryId">
			<option>Select Category</option>
			
			<c:forEach items="${categoryList}" var="category">

					<option value="${category.categoryId}">${category.title }</option>
			
			</c:forEach>

			</select> <br>
	
	
			<input type="submit" value="Save Subcategory">
	
	</form>
	
	
</body>
</html>