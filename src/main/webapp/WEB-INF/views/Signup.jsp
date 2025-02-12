<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		
		Confirm Password: <input type="password" name="password"><br><br>
		
		Gender : Male <input type="radio" name="gender" value="male"> 
				 Female <input type="radio" name="gender" value="female"><br><br>
		
		Born Year : <input type="text" name="bornYear"><br><br>
		
		Contect No.: <input type="text" name="contactNum"><br><br>
		
		<input type="submit" value="Signup"><br>
	
	
	</form>
	
	<a href="login">Login</a>
	
</body>
</html>