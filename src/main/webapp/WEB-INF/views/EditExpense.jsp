<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Expense Tracker | Edit Expense</title>

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
              <h5 class="card-title"> Edit Expense</h5>

              <!-- General Form Elements -->
              <form action="updateexpense" method="post" enctype="multipart/form-data">
               	   <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" name="title">Expense Name</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control"  name="expenseName" value="${expense.expenseName}">
                  </div>
                </div>
                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" name="amount">Amount</label>
                  <div class="col-sm-10">
                    <input type="number" class="form-control"  name="amount" value="${expense.amount}">
                  </div>
                </div>
                
                
                 <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" name="billPic">Picture of Bill</label>
                  <div class="col-sm-10">
                    <input type="file" class="form-control" name="billPic">
                  </div>
                </div>
                
                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" name="description">Description</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="description" value="${expense.description}">
                  </div>
                </div>
             
               
               
                <div class="row mb-3">
                  <label for="inputDate" class="col-sm-2 col-form-label">Transaction Date</label>
                  <div class="col-sm-10">
                    <input type="date" class="form-control" name="transactionDate" value="${expense.transactionDate}">
                  </div>
                </div>
                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" name="status">Status</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="status" value="${expense.status}">
                  </div>
                </div>
                
				
				<input type="hidden" name="expenseId"  value="${expense.expenseId}"/>
				

                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Edit Expense</button>
                  </div>
                </div>

              </form><!-- End General Form Elements -->

            </div>

	</main>
	<!-- main content end  -->


	<jsp:include page="AdminFooter.jsp"></jsp:include>

	<jsp:include page="AdminJs.jsp"></jsp:include>
</body>
</html>