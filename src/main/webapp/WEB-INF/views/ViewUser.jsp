<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Expense Tracker | View User</title>

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
              <h5 class="card-title">View User</h5>

              <!-- Default List group -->
              <ul class="list-group">
                <li class="list-group-item">First Name : ${user.firstName }</li>
                <li class="list-group-item">Last Name : ${user.lastName }</li>
                <li class="list-group-item">Email : ${user.email }</li>
                <li class="list-group-item">Contact No. : ${user.contactNum }</li>
                <li class="list-group-item">Date of Birth : ${user.dateOfBirth }</li>
                <li class="list-group-item">Gender : ${user.gender }</li>
                <li class="list-group-item">City : ${user.city }</li>
                       <li class="list-group-item">State : ${user.state }</li>
              </ul><!-- End Default List group -->

            </div>
			
			

	</main>
	<!-- main content end  -->


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>