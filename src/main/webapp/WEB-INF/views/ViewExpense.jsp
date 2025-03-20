<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Expense Tracker | View Expense</title>

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
              <h5 class="card-title">View Expense</h5>

              <!-- Default List group -->
              <ul class="list-group">
                <li class="list-group-item">Expense Name : ${expense[0][10] }</li>
                <li class="list-group-item">Amount : ${expense[0][2]}</li>
                <li class="list-group-item">Description : ${expense[0][4]}</li>
                <li class="list-group-item">Transaction Date : ${expense[0][7]}</li>
                <li class="list-group-item">Status : ${expense[0][5]}</li>
                <li class="list-group-item">Picture of Bill : <img src="${expense[0][11]}"  height="200px" width="200px"/></li>
                 <li class="list-group-item">Category : ${expense[0][14]}</li>
                 <li class="list-group-item">Subcategory : ${expense[0][15] }</li>
                 <li class="list-group-item">Account : ${expense[0][13] }</li>
                 <li class="list-group-item">Vendor : ${expense[0][16] }</li>
                 <li class="list-group-item">User : ${expense[0][12]}</li>
                 
                 
                 
              </ul><!-- End Default List group -->

            </div>
			
			

	</main>
	<!-- main content end  -->


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>