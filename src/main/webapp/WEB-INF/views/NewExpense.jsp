<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
		
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Expense Tracker | New Expense</title>

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
              <h5 class="card-title">Add New Expense</h5>

              <!-- General Form Elements -->
              <form action="saveexpense" method="post" enctype="multipart/form-data">
               	   <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" name="title">Expense Name</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control"  name="expenseName">
                  </div>
                </div>
                
                
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">Select Category</label>
                  <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example" name="categoryId">
                      <option selected="">select category</option>
                     	 <c:forEach items="${categoryList}" var="category">

								<option value="${category.categoryId}">${category.categoryName }</option>
			
						</c:forEach>

                    </select>
                  </div>
                </div>
                
                
                
                
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">Select Subcategory</label>
                  <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example" name="subcategoryId">
                      <option selected="">select subcategory</option>
                     	 <c:forEach items="${subcategoryList}" var="subcategory">

								<option value="${subcategory.subcategoryId}">${subcategory.subcategoryName }</option>
			
						</c:forEach>

                    </select>
                  </div>
                </div>
                
                
                
                
                
                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" name="amount">Amount</label>
                  <div class="col-sm-10">
                    <input type="number" class="form-control"  name="amount">
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
                  <label for="inputText" class="col-sm-2 col-form-label" name="description">Picture of Bill</label>
                  <div class="col-sm-10">
                    <input type="file" class="form-control" name="billPic">
                  </div>
                </div>
                
                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" name="description">Description</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="description">
                  </div>
                </div>
             
               
               
                <div class="row mb-3">
                  <label for="inputDate" class="col-sm-2 col-form-label">Transaction Date</label>
                  <div class="col-sm-10">
                    <input type="date" class="form-control" name="transactionDate">
                  </div>
                </div>
                
                
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">Select Vendor</label>
                  <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example" name="vendorId">
                      <option selected="">select vandor</option>
                     	 <c:forEach items="${vendorList}" var="vendor">

								<option value="${vendor.vendorId}">${vendor.vendorName }</option>
			
						</c:forEach>

                    </select>
                  </div>
                </div>
                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" name="status">Status</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="status">
                  </div>
                </div>
                


                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Save Expense</button>
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