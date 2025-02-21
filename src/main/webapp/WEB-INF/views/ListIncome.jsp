<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Income</title>
</head>
<body>
	
	
		<h2>List Income</h2>

		<table border="1">
	
			<tr>
				<th>Income ID</th>
				<th>Title</th>
				<th>Status</th>
				<th>Amount</th>
				<th>Transaction Date</th>
				<th>Description</th>	
				<th>Action</th>
			</tr>
	
		<c:forEach items="${incomeList}" var="income">
			
			<tr>
				<td>${income.incomeId }</td>
				<td>${income.title }</td>
				<td>${income.status }</td>
				<td>${income.amount }</td>
				<td>${income.transactionDate }</td>
				<td>${income.description }</td>
				<td><a href="viewincome?incomeId=${income.incomeId}">View</a> | Edit | <a href="deleteincome?incomeId=${income.incomeId}">Delete</a> </td>
			</tr>
		</c:forEach>
	</table>
	
	
	
</body>
</html>