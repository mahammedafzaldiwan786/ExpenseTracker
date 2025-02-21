<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Subcategory</title>
</head>
<body>
	
		<h2>List Subcategory</h2>
	
	<table border="1">
	
			<tr>
				<th>Subcategory ID</th>
				<th>Title</th>
			</tr>
	
		<c:forEach items="${subcategoryList}" var="subcategory">
			
			<tr>
				<td>${subcategory.subcategoryId }</td>
				<td>${subcategory.title }</td>
				<td><a href="viewsubcatagory?subcategoryId=${subcategory.subcategoryId}">View</a> | Edit | <a href="deletesubcategory?categoryId=${subcategory.categoryId}">Delete</a> </td>
			</tr>
		</c:forEach>
	</table>

	
	
</body>
</html>