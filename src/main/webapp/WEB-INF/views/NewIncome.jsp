<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Income</title>
</head>
<body>
	
	
		<h2>New Income</h2>
	
	
	<form action="saveincome" method="post" >
	
		Title: <input type="text" name="title"><br><br>
		
		Status: <input type="text" name="status"><br><br>
		
		Amount: <input type="number" name="amount"> <br><br>
		
		Transaction Date : <input type="date" name="transactionDate"><br><br>
		
		Description: <input type="text" name="description"><br><br>
		
		<input type="submit" value="Save Income"><br>
	
	
	</form>

	
	
	
</body>
</html>