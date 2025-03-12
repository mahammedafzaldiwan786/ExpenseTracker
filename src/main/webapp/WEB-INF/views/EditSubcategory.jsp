<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Expense Tracker | Edit Subcategory</title>

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
              <h5 class="card-title">Edit  Subcategory</h5>

              <!-- General Form Elements -->
              <form action="updatesubcategory" method="post">
              
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" >Subcategory Name</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control"  name="subcategoryName" value="${subcategory.subcategoryName}">
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

              <input type="hidden" name="subcategoryId"  value="${subcategory.subcategoryId}"/>

                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Edit Subcategory</button>
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