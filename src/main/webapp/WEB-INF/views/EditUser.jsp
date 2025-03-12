<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Expense Tracker | Edit User</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>

	<jsp:include page="AdminSidebar.jsp"></jsp:include>

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="home">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

			<div class="card-body">
              <h5 class="card-title">Edit  User</h5>

              <!-- General Form Elements -->
              <form action="updateuser" method="post" enctype="multipart/form-data">
										<div class="col-12">
											 <label for="inputText" class="col-sm-2 col-form-label" >First Name</label> <input
												type="text" name="firstName" class="form-control"  value="${user.firstName}">
											
										</div>

										<div class="col-12">
											<label for="yourName" class="form-label">Last Name</label> <input
												type="text" name="lastName" class="form-control" value="${user.lastName}">
											
										</div>

										<div class="col-12">
												Gender:  
												<input class="form-check-input" type="radio"
													name="gender" id="gridRadios1" value="male"
													checked=""> <label class="form-check-label"
													for="gridRadios1"> Male </label>
										 	
										 		<input class="form-check-input" type="radio"
													name="gender" id="gridRadios1" value="female"
													checked=""> <label class="form-check-label"
													for="gridRadios1"> Female</label>
									 	</div>

										<div class="col-12">
											<label for="yourEmail" class="form-label">Your Email</label>
											<input type="email" name="email" class="form-control" value="${user.email}">
											
										</div>



										


										<div class="col-12">
											<label for="yourName" class="form-label">ContactNum</label> <input
												type="text" name="contactNum" class="form-control" value="${user.contactNum}">
											
										</div>
										
										<div class="col-12">
											<label for="yourName" class="form-label">City</label> <input
												type="text" name="city" class="form-control" value="${user.city}">
											
										</div>
										
										<div class="col-12">
											<label for="yourName" class="form-label">State</label> <input
												type="text" name="state" class="form-control" value="${user.state}">
										
										</div>
										
										
										<div class="col-12">
											<label for="yourName" class="form-label">Profile Picture</label> <input
												type="file" name="profilePic" class="form-control" >
											
										</div>
										
					
										<div class="col-12">
											<label for="yourName" class="form-label">Date of Birth</label> <input
												type="date" name="dateOfBirth" class="form-control" value="${user.dateOfBirth}">
											
										</div>
										<br>	
										
										<input type="hidden" name="userId"  value="${user.userId}"/>
										
										
										<div class="col-2">
											<button class="btn btn-primary w-100" type="submit">Edit
												User</button>
										</div>
										
									</form><!-- End General Form Elements -->

            </div>

	</main>
	<!-- main content end  -->


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>