<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Expense</title>
</head>
<body>
	
	<h2>View User</h2>
	
	Expense ID : ${expense.expenseId } <br><br>
	Title : ${expense.title }<br><br>
	Status : ${expense.status }<br><br>
	Amount : ${expense.amount }<br><br>
	Transaction Date : ${expense.transactionDate }<br><br>
	Description : ${expense.description }<br><br>
	
	
</body>
</html>