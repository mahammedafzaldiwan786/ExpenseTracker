<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>New Account</title>
</head>
<body>
	
	<h2>New Account</h2>
	
	<form action="saveaccount" method="post">  
	
			Title: <input type="text" name="title"> <br><br>
			Amount: <input type="number" name="amount"> <br><br>
			Description : <input type="text" name="description"> <br><br>
	
	
			<input type="submit" value="Save Account">
	
	</form>
	
</body>
</html>