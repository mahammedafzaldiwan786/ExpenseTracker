<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Expense TRacker | Edit City</title>

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
					<li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

			<div class="card-body">
              <h5 class="card-title"> Edit City</h5>

              <!-- General Form Elements -->
              <form action="updatecity" method="post">
              
                <div class="row mb-3">
                  <label for="inputText" class="col-sm-2 col-form-label" >City Name</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control"  name="cityName" value="${city.cityName}">
                  </div>
                </div>
                
                    <input type="hidden" name="cityId"  value="${city.cityId}"/>
                
                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label">Select State</label>
                  <div class="col-sm-10">
                    <select class="form-select" aria-label="Default select example" name="stateId">
                      <option selected="">select state</option>
                     	 <c:forEach items="${stateList}" var="state">

								<option value="${state.stateId}">${state.stateName }</option>
			
						</c:forEach>

                    </select>
                  </div>
                </div>

              

                <div class="row mb-3">
                  <label class="col-sm-2 col-form-label"></label>
                  <div class="col-sm-10">
                    <button type="submit" class="btn btn-primary">Save City</button>
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