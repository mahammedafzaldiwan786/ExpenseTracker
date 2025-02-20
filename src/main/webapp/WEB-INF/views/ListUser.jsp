<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List User</title>
</head>
<body>

	<h2>List User</h2>

	<table border="1">
	
			<tr>
				<th>User ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Contact No.</th>
				<th>City</th>	
				<th>State</th>							
				<th>Date of  Birth</th>
				<th>Gender</th>
				<th>Action</th>
			</tr>
	
		<c:forEach items="${userList}" var="user">
			
			<tr>
				<td>${user.userId }</td>
				<td>${user.firstName }</td>
				<td>${user.lastName }</td>
				<td>${user.email }</td>
				<td>${user.contactNum }</td>
				<td>${user.city }</td>
				<td>${user.state }</td>							
				<td>${user.dateOfBirth }</td>
				<td>${user.gender }</td>
				<td><a href="viewuser?userId=${user.userId}">View</a> | Edit | <a href="deleteuser?userId=${user.userId}">Delete</a> </td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>