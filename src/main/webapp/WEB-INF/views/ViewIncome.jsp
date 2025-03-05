<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Expense Tracker | View Income</title>

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
              <h5 class="card-title">View Income</h5>

              <!-- Default List group -->
              <ul class="list-group">
                <li class="list-group-item">Title : ${income.title }</li>
                <li class="list-group-item">Amount : ${income.amount }</li>
                <li class="list-group-item">Description : ${income.description }</li>
                <li class="list-group-item">Transaction Date : ${income.transactionDate }</li>
                <li class="list-group-item">Status : ${income.status }</li>
              </ul><!-- End Default List group -->

            </div>
			
			

	</main>
	<!-- main content end  -->


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>