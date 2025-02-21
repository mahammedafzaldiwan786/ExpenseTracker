<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Income</title>
</head>
<body>
	
	
	<h2>View Income</h2>
	
	Income ID : ${income.incomeId } <br><br>
	Title : ${income.title }<br><br>
	Status : ${income.status }<br><br>
	Amount : ${income.amount }<br><br>
	Transaction Date : ${income.transactionDate }<br><br>
	Description : ${income.description }<br><br>
	
	
</body>
</html>