<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Account</title>
</head>
<body>
	
	
	<h2>List Account</h2>
	
	<table border="1">
	
			<tr>
				<th>Title</th>
				<th>Amount</th>
				<th>Description</th>
				<th>Action</th>
			</tr>
	
		<c:forEach items="${accountList}" var="account">
			
			<tr>
				<td>${account.title }</td>
				<td>${account.amount }</td>
				<td>${account.description }</td>
				<td><a href="viewaccount?accountId=${account.accountId}">View</a> | Edit | <a href="deleteaccount?accountId=${account.accountId}">Delete</a> </td>
			</tr>
		</c:forEach>
	</table>
	
	
</body>
</html>