<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Expense Tracker | Edit Account</title>

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
              <h5 class="card-title"> Edit Account</h5>

              <!-- General Form Elements -->
              <form action="updateaccount" method="post">
				   <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" name="accountName">Account Name</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control"  name="accountName" value="${account.accountName }">
                  </div>
                </div>
                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" name="amount">Amount</label>
                  <div class="col-sm-10">
                    <input type="number" class="form-control" name="amount"  value="${account.amount }">
                  </div>
                </div>
                
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" name="description">Description</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" name="description"   value="${account.description}">
                  </div>
                </div>
                
                
                
                  <input type="hidden" name="accountId"  value="${account.accountId}"/>
                
                
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Edit Account</button>
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