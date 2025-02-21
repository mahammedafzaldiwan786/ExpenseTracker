<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Expense</title>
</head>
<body>
	
	
		<h2>List Expenses</h2>

	<table border="1">
	
			<tr>
				<th>Expense ID</th>
				<th>Title</th>
				<th>Status</th>
				<th>Amount</th>
				<th>Transaction Date</th>
				<th>Description</th>	
			</tr>
	
		<c:forEach items="${expenseList}" var="expense">
			
			<tr>
				<td>${expense.expenseId }</td>
				<td>${expense.title }</td>
				<td>${expense.status }</td>
				<td>${expense.amount }</td>
				<td>${expense.transactionDate }</td>
				<td>${expense.description }</td>
				<td><a href="viewexpense?expenseId=${expense.expenseId}">View</a> | Edit | <a href="deleteexpense?expenseId=${expense.expenseId}">Delete</a> </td>
			</tr>
		</c:forEach>
	</table>
	
	
	
</body>
</html>