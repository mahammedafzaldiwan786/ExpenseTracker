<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Vendor</title>
</head>
<body>
		
		<h2>List Vendor</h2>
	
	<table border="1">
	
			<tr>
				<th>Vendor ID</th>
				<th>Title</th>
			</tr>
	
		<c:forEach items="${vendorList}" var="vendor">
			
			<tr>
				<td>${vendor.vendorId }</td>
				<td>${vendor.title }</td>
				<td><a href="viewvendor?vendorId=${vendor.vendorId}">View</a> | Edit | <a href="deletevendor?vendorId=${vendor.vendorId}">Delete</a> </td>
			</tr>
		</c:forEach>
	</table>
		
		
</body>
</html>