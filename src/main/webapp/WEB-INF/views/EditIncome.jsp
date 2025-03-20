<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Expense Tracker | Edit Income</title>

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
              <h5 class="card-title">Edit Income</h5>

              <!-- General Form Elements -->
              <form action="updateincome" method="post">
               	   <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" name="title">Income Name</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="incomeName" value="${income.incomeName}">
                  </div>
                </div>
                
                
                  
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">Select Account</label>
                  <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example" name="accountId">
                      <option selected="">select account</option>
                     	 <c:forEach items="${accountList}" var="account">

								<option value="${account.accountId}">${account.accountName }</option>
			
						</c:forEach>

                    </select>
                  </div>
                </div>
                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" name="amount">Amount</label>
                  <div class="col-sm-10">
                    <input type="number" class="form-control" name="amount" value="${income.amount}">
                  </div>
                </div>
                
              
               
               
                <div class="row mb-3">
                  <label for="inputDate" class="col-sm-2 col-form-label">Transaction Date</label>
                  <div class="col-sm-10">
                    <input type="date" class="form-control" name="transactionDate" value="${income.transactionDate}">
                  </div>
                </div>
                
                
                 <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" name="description">Description</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="description" value="${income.description}">
                  </div>
                </div>
                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" name="status">Status</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="status" value="${income.status}">
                  </div>
                </div>
                
					    <input type="hidden" name="incomeId"  value="${income.incomeId}"/>

                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Edit Income</button>
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