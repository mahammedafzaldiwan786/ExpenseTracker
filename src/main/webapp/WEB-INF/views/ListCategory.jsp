<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Category</title>
</head>
<body>


		<h2>List Category</h2>
	
	<table border="1">
	
			<tr>
				<th>Category ID</th>
				<th>Title</th>
				<th>Action</th>
			</tr>
	
		<c:forEach items="${categoryList}" var="category">
			
			<tr>
				<td>${category.categoryId }</td>
				<td>${category.title }</td>
				<td><a href="viewcategory?categoryId=${category.categoryId}">View</a> | Edit | <a href="deletecategory?categoryId=${category.categoryId}">Delete</a> </td>
			</tr>
		</c:forEach>
	</table>


</body>
</html>