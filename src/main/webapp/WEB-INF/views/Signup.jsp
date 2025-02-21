<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup</title>
</head>
<body>
	
	<h2>Signup</h2>
	
	
	<form action="saveuser" method="post" >
	
		First Name: <input type="text" name="firstName"><br><br>
		
		Last Name: <input type="text" name="lastName"><br><br>
		
		Email: <input type="text" name="email"><br><br>
		
		Password: <input type="password" name="password"><br><br>
		
		Contact No.: <input type="text" name="contactNum"><br><br>
		
		City: <input type="text" name="city"><br><br>
		
		State: <input type="text" name="state"><br><br>
		
		Gender : Male <input type="radio" name="gender" value="male"> 
				 Female <input type="radio" name="gender" value="female"><br><br>
		
		Date of Birth : <input type="date" name="dateOfBirth"><br><br>
		
		
		
		<input type="submit" value="Signup"><br>
	
	
	</form>
	
	<a href="login">Login</a>
	
</body>
</html>