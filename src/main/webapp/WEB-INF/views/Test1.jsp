<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>User Dashboard | Home</title>

<jsp:include page="AdminCss.jsp"></jsp:include>


</head>
<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center header-scrolled">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">Expense Tracker</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-bell"></i>
            <span class="badge bg-primary badge-number">4</span>
          </a><!-- End Notification Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
            <li class="dropdown-header">
              You have 4 new notifications
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-exclamation-circle text-warning"></i>
              <div>
                <h4>Lorem Ipsum</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>30 min. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-x-circle text-danger"></i>
              <div>
                <h4>Atque rerum nesciunt</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>1 hr. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-check-circle text-success"></i>
              <div>
                <h4>Sit rerum fuga</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>2 hrs. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="notification-item">
              <i class="bi bi-info-circle text-primary"></i>
              <div>
                <h4>Dicta reprehenderit</h4>
                <p>Quae dolorem earum veritatis oditseno</p>
                <p>4 hrs. ago</p>
              </div>
            </li>

            <li>
              <hr class="dropdown-divider">
            </li>
            <li class="dropdown-footer">
              <a href="#">Show all notifications</a>
            </li>

          </ul><!-- End Notification Dropdown Items -->

        </li><!-- End Notification Nav -->

        <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
            <i class="bi bi-chat-left-text"></i>
            <span class="badge bg-success badge-number">3</span>
          </a><!-- End Messages Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
            <li class="dropdown-header">
              You have 3 new messages
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="assets/img/messages-1.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>Maria Hudson</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>4 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="assets/img/messages-2.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>Anna Nelson</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>6 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="message-item">
              <a href="#">
                <img src="assets/img/messages-3.jpg" alt="" class="rounded-circle">
                <div>
                  <h4>David Muldon</h4>
                  <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                  <p>8 hrs. ago</p>
                </div>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li class="dropdown-footer">
              <a href="#">Show all messages</a>
            </li>

          </ul><!-- End Messages Dropdown Items -->

        </li><!-- End Messages Nav -->

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="${user.profilePicPath}" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">${user.firstName}</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>${user.firstName }&nbsp;${user.lastName}</h6>
              <span>${user.role }</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                <i class="bi bi-gear"></i>
                <span>Account Settings</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>Need Help?</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-box-arrow-right"></i>
                <span>Sign Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

	
    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="home">
          <i class="bi bi-grid"></i>
          <span>Dashboard</span>
        </a>
      </li><!-- End Dashboard Nav -->

     

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-person-badge"></i><span>Accounts</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="newaccount">
              <i class="bi bi-circle"></i><span>Add Account</span>
            </a>
          </li>
          <li>
            <a href="listaccount">
              <i class="bi bi-circle"></i><span>List Accounts</span>
            </a>
          </li>
         
        </ul>
      </li><!-- End Forms Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-grid"></i><span>Category</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="newcategory">
              <i class="bi bi-circle"></i><span>Add Category</span>
            </a>
          </li>
          <li>
            <a href="listcategory">
              <i class="bi bi-circle"></i><span>List Categories</span>
            </a>
          </li>
        </ul>
      </li>
      <!-- End Tables Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-ui-checks-grid"></i><span>Subcategory</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="newsubcategory">
              <i class="bi bi-circle"></i><span>Add Subcategory</span>
            </a>
          </li>
          <li>
            <a href="listsubcategory">
              <i class="bi bi-circle"></i><span>List Subcategories</span>
            </a>
          </li>
          
        </ul>
      </li><!-- End Charts Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-cash-coin"></i><span>Expense</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="newexpense">
              <i class="bi bi-circle"></i><span>Add Expense</span>
            </a>
          </li>
          <li>
            <a href="listexpense">
              <i class="bi bi-circle"></i><span>List Expenses</span>
            </a>
          </li>
       
        </ul>
      </li>
      
      
      <!-- End Icons Nav -->


		 <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#income-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-cash-stack"></i><span>Income</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="income-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="newincome">
              <i class="bi bi-circle"></i><span>Add Income</span>
            </a>
          </li>
          <li>
            <a href="listincome">
              <i class="bi bi-circle"></i><span>List Income</span>
            </a>
          </li>
       
        </ul>
      </li>
      
       <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#vendor-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-people"></i><span>Vendor</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="vendor-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
          <li>
            <a href="newvendor">
              <i class="bi bi-circle"></i><span>Add Vendor</span>
            </a>
          </li>
          <li>
            <a href="listvendor">
              <i class="bi bi-circle"></i><span>List Vendors</span>
            </a>
          </li>
       
        </ul>
      </li>
      
 
      
      
    
      
      
		
      <li class="nav-heading">Pages</li>

      <li class="nav-item">
        <a class="nav-link collapsed" href="users-profile.html">
          <i class="bi bi-person-vcard"></i>
          <span>Profile</span>
        </a>
      </li><!-- End Profile Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="pages-faq.html">
          <i class="bi bi-question-circle"></i>
          <span>F.A.Q</span>
        </a>
      </li><!-- End F.A.Q Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="pages-contact.html">
          <i class="bi bi-envelope"></i>
          <span>Contact</span>
        </a>
      </li><!-- End Contact Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="signup">
          <i class="bi bi-person-add"></i>
          <span>Register</span>
        </a>
      </li><!-- End Register Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="login">
          <i class="bi bi-box-arrow-in-right"></i>
          <span>Login</span>
        </a>
      </li><!-- End Login Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="errorpage">
          <i class="bi bi-dash-circle"></i>
          <span>Error 404</span>
        </a>
      </li><!-- End Error 404 Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="pages-blank.html">
          <i class="bi bi-file-earmark"></i>
          <span>Blank</span>
        </a>
      </li><!-- End Blank Page Nav -->

    </ul>
	
  </aside><!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>User Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-8">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Expenses <span>| Today</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6>145</h6>
                      <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Expenses <span>| This Month</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6>$3,264</h6>
                      <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->

            <!-- Customers Card -->
            <div class="col-xxl-4 col-xl-12">

              <div class="card info-card customers-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Expenses <span>| This Year</span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                      <h6>1244</h6>
                      <span class="text-danger small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">decrease</span>

                    </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->

            <!-- Reports -->
            <div class="col-12">
              <div class="card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Reports <span>/Today</span></h5>

                  <!-- Line Chart -->
                  <div id="reportsChart" class="apexcharts-tooltip-active" style="min-height: 365px;"><div id="apexchartsy9jdtlp4" class="apexcharts-canvas apexchartsy9jdtlp4 apexcharts-theme-" style="width: 613px; height: 350px;"><svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" class="apexcharts-svg apexcharts-zoomable" xmlns:data="ApexChartsNS" transform="translate(0, 0)" width="613" height="350"><foreignObject x="0" y="0" width="613" height="350"><div class="apexcharts-legend apexcharts-align-center apx-legend-position-bottom" xmlns="http://www.w3.org/1999/xhtml" style="right: 0px; position: absolute; left: 0px; top: 325px; max-height: 175px;"><div class="apexcharts-legend-series" rel="1" seriesname="Sales" data:collapsed="false" style="margin: 4px 5px;"><span class="apexcharts-legend-marker" rel="1" data:collapsed="false" style="height: 16px; width: 16px; left: 0px; top: 0px;"><svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"><path d="M 0, 0 
           m -7, 0 
           a 7,7 0 1,0 14,0 
           a 7,7 0 1,0 -14,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="1" stroke-dasharray="0" cx="0" cy="0" shape="circle" class="apexcharts-legend-marker apexcharts-marker apexcharts-marker-circle" style="transform: translate(50%, 50%);"></path></svg></span><span class="apexcharts-legend-text" rel="1" i="0" data:default-text="Sales" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Expense</span></div><div class="apexcharts-legend-series" rel="2" seriesname="Revenue" data:collapsed="false" style="margin: 4px 5px;"><span class="apexcharts-legend-marker" rel="2" data:collapsed="false" style="height: 16px; width: 16px; left: 0px; top: 0px;"><svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"><path d="M 0, 0 
           m -7, 0 
           a 7,7 0 1,0 14,0 
           a 7,7 0 1,0 -14,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="1" stroke-dasharray="0" cx="0" cy="0" shape="circle" class="apexcharts-legend-marker apexcharts-marker apexcharts-marker-circle" style="transform: translate(50%, 50%);"></path></svg></span><span class="apexcharts-legend-text" rel="2" i="1" data:default-text="Revenue" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Income</span></div><div class="apexcharts-legend-series" rel="3" seriesname="Customers" data:collapsed="false" style="margin: 4px 5px;"><span class="apexcharts-legend-marker" rel="3" data:collapsed="false" style="height: 16px; width: 16px; left: 0px; top: 0px;"><svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" width="100%" height="100%"><path d="M 0, 0 
           m -7, 0 
           a 7,7 0 1,0 14,0 
           a 7,7 0 1,0 -14,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="1" stroke-dasharray="0" cx="0" cy="0" shape="circle" class="apexcharts-legend-marker apexcharts-marker apexcharts-marker-circle" style="transform: translate(50%, 50%);"></path></svg></span><span class="apexcharts-legend-text" rel="3" i="2" data:default-text="Customers" data:collapsed="false" style="color: rgb(55, 61, 63); font-size: 12px; font-weight: 400; font-family: Helvetica, Arial, sans-serif;">Budget</span></div></div><style type="text/css">
      .apexcharts-flip-y {
        transform: scaleY(-1) translateY(-100%);
        transform-origin: top;
        transform-box: fill-box;
      }
      .apexcharts-flip-x {
        transform: scaleX(-1);
        transform-origin: center;
        transform-box: fill-box;
      }
      .apexcharts-legend {
        display: flex;
        overflow: auto;
        padding: 0 10px;
      }
      .apexcharts-legend.apexcharts-legend-group-horizontal {
        flex-direction: column;
      }
      .apexcharts-legend-group {
        display: flex;
      }
      .apexcharts-legend-group-vertical {
        flex-direction: column-reverse;
      }
      .apexcharts-legend.apx-legend-position-bottom, .apexcharts-legend.apx-legend-position-top {
        flex-wrap: wrap
      }
      .apexcharts-legend.apx-legend-position-right, .apexcharts-legend.apx-legend-position-left {
        flex-direction: column;
        bottom: 0;
      }
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-left, .apexcharts-legend.apx-legend-position-top.apexcharts-align-left, .apexcharts-legend.apx-legend-position-right, .apexcharts-legend.apx-legend-position-left {
        justify-content: flex-start;
        align-items: flex-start;
      }
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-center, .apexcharts-legend.apx-legend-position-top.apexcharts-align-center {
        justify-content: center;
        align-items: center;
      }
      .apexcharts-legend.apx-legend-position-bottom.apexcharts-align-right, .apexcharts-legend.apx-legend-position-top.apexcharts-align-right {
        justify-content: flex-end;
        align-items: flex-end;
      }
      .apexcharts-legend-series {
        cursor: pointer;
        line-height: normal;
        display: flex;
        align-items: center;
      }
      .apexcharts-legend-text {
        position: relative;
        font-size: 14px;
      }
      .apexcharts-legend-text *, .apexcharts-legend-marker * {
        pointer-events: none;
      }
      .apexcharts-legend-marker {
        position: relative;
        display: flex;
        align-items: center;
        justify-content: center;
        cursor: pointer;
        margin-right: 1px;
      }

      .apexcharts-legend-series.apexcharts-no-click {
        cursor: auto;
      }
      .apexcharts-legend .apexcharts-hidden-zero-series, .apexcharts-legend .apexcharts-hidden-null-series {
        display: none !important;
      }
      .apexcharts-inactive-legend {
        opacity: 0.45;
      }

    </style></foreignObject><rect width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe"></rect><g class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)"></g><g class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)"></g><g class="apexcharts-yaxis" rel="0" transform="translate(15.359375, 0)"><g class="apexcharts-yaxis-texts-g"><text x="20" y="33.666666666666664" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>100</tspan><title>100</title></text><text x="20" y="86.50666666666666" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>80</tspan><title>80</title></text><text x="20" y="139.34666666666666" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>60</tspan><title>60</title></text><text x="20" y="192.18666666666667" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>40</tspan><title>40</title></text><text x="20" y="245.02666666666667" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>20</tspan><title>20</title></text><text x="20" y="297.8666666666667" text-anchor="end" dominant-baseline="auto" font-size="11px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-yaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>0</tspan><title>0</title></text></g></g><g class="apexcharts-inner apexcharts-graphical" transform="translate(45.359375, 30)"><defs><clipPath id="gridRectMasky9jdtlp4"><rect width="563.640625" height="270.2" x="-3" y="-3" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="gridRectBarMasky9jdtlp4"><rect width="563.640625" height="270.2" x="-3" y="-3" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="gridRectMarkerMasky9jdtlp4"><rect width="577.640625" height="284.2" x="-10" y="-10" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMasky9jdtlp4"></clipPath><clipPath id="nonForecastMasky9jdtlp4"></clipPath><linearGradient x1="0" y1="0" x2="0" y2="1" id="SvgjsLinearGradient1024"><stop stop-opacity="0.3" stop-color="rgba(65,84,241,0.3)" offset="0"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient><linearGradient x1="0" y1="0" x2="0" y2="1" id="SvgjsLinearGradient1025"><stop stop-opacity="0.3" stop-color="rgba(46,202,106,0.3)" offset="0"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient><linearGradient x1="0" y1="0" x2="0" y2="1" id="SvgjsLinearGradient1026"><stop stop-opacity="0.3" stop-color="rgba(255,119,29,0.3)" offset="0"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="0.9"></stop><stop stop-opacity="0.4" stop-color="rgba(255,255,255,0.4)" offset="1"></stop></linearGradient></defs><line x1="147.7533604337501" y1="0" x2="147.7533604337501" y2="264.2" stroke="#b6b6b6" stroke-dasharray="3" stroke-linecap="butt" class="apexcharts-xcrosshairs" x="147.7533604337501" y="0" width="1" height="264.2" fill="#b1b9c4" filter="none" fill-opacity="0.9" stroke-width="1"></line><line x1="23.543303138724827" y1="264.2" x2="23.543303138724827" y2="270.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line x1="98.41599863290273" y1="264.2" x2="98.41599863290273" y2="270.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line x1="173.28869412708062" y1="264.2" x2="173.28869412708062" y2="270.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line x1="248.1613896212585" y1="264.2" x2="248.1613896212585" y2="270.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line x1="323.0340851154364" y1="264.2" x2="323.0340851154364" y2="270.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line x1="397.9067806096143" y1="264.2" x2="397.9067806096143" y2="270.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><line x1="472.7794761037922" y1="264.2" x2="472.7794761037922" y2="270.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-xaxis-tick"></line><g class="apexcharts-grid"><g class="apexcharts-gridlines-horizontal"><line x1="0" y1="52.839999999999996" x2="557.640625" y2="52.839999999999996" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line x1="0" y1="105.67999999999999" x2="557.640625" y2="105.67999999999999" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line x1="0" y1="158.51999999999998" x2="557.640625" y2="158.51999999999998" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line x1="0" y1="211.35999999999999" x2="557.640625" y2="211.35999999999999" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line></g><g class="apexcharts-gridlines-vertical"></g><line x1="0" y1="264.2" x2="557.640625" y2="264.2" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line><line x1="0" y1="1" x2="0" y2="264.2" stroke="transparent" stroke-dasharray="0" stroke-linecap="butt"></line></g><g class="apexcharts-grid-borders"><line x1="0" y1="0" x2="557.640625" y2="0" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line x1="0" y1="264.2" x2="557.640625" y2="264.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-linecap="butt" class="apexcharts-gridline"></line><line x1="0" y1="264.2" x2="557.640625" y2="264.2" stroke="#e0e0e0" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt"></line></g><g class="apexcharts-area-series apexcharts-plot-series"><g class="apexcharts-series" zIndex="0" seriesName="Sales" data:longestSeries="true" rel="1" data:realIndex="0"><path d="M-300.9828125313173 182.298C-143.7501519935437 182.298 -8.97930010402348 158.51999999999998 148.2533604337501 158.51999999999998C253.07513412559913 158.51999999999998 342.92236871861263 190.224 447.7441424104617 190.224C552.5659161023107 190.224 642.4131506953242 129.458 747.2349243871732 129.458C852.0566980790223 129.458 941.9039326720358 153.236 1046.725706363885 153.236C1151.547480055734 153.236 1241.3947146487474 47.55600000000001 1346.2164883405965 47.55600000000001C1451.0382620324456 47.55600000000001 1540.885496625459 116.24799999999999 1645.707270317308 116.24799999999999C1645.707270317308 116.24799999999999 1645.707270317308 116.24799999999999 1645.707270317308 264.2L-300.9828125313173 264.2L-300.9828125313173 182.298C-300.9828125313173 182.298 -300.9828125313173 182.298 -300.9828125313173 182.298 " fill="url(#SvgjsLinearGradient1024)" fill-opacity="1" stroke="none" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMasky9jdtlp4)" pathTo="M -300.9828125313173 182.298C -143.7501519935437 182.298 -8.97930010402348 158.51999999999998 148.2533604337501 158.51999999999998C 253.07513412559913 158.51999999999998 342.92236871861263 190.224 447.7441424104617 190.224C 552.5659161023107 190.224 642.4131506953242 129.458 747.2349243871732 129.458C 852.0566980790223 129.458 941.9039326720358 153.236 1046.725706363885 153.236C 1151.547480055734 153.236 1241.3947146487474 47.55600000000001 1346.2164883405965 47.55600000000001C 1451.0382620324456 47.55600000000001 1540.885496625459 116.24799999999999 1645.707270317308 116.24799999999999C 1645.707270317308 116.24799999999999 1645.707270317308 116.24799999999999 1645.707270317308 264.2 L -300.9828125313173 264.2z" pathFrom="M -125.26093752344744 182.298C -46.644607251697266 182.298 20.74081869551719 158.51999999999998 99.35714896726736 158.51999999999998C 151.7680358151008 158.51999999999998 196.69165311324377 190.224 249.1025399610772 190.224C 301.51342680891065 190.224 346.4370441070536 129.458 398.8479309548871 129.458C 451.25881780272056 129.458 496.1824351008635 153.236 548.5933219486969 153.236C 601.0042087965304 153.236 645.9278260946734 47.55600000000001 698.3387129425068 47.55600000000001C 750.7495997903403 47.55600000000001 795.6732170884832 116.24799999999999 848.0841039363166 116.24799999999999C 848.0841039363166 116.24799999999999 848.0841039363166 116.24799999999999 848.0841039363166 264.2 L -125.26093752344744 264.2zz"></path><path d="M-300.9828125313173 182.298C-143.7501519935437 182.298 -8.97930010402348 158.51999999999998 148.2533604337501 158.51999999999998C253.07513412559913 158.51999999999998 342.92236871861263 190.224 447.7441424104617 190.224C552.5659161023107 190.224 642.4131506953242 129.458 747.2349243871732 129.458C852.0566980790223 129.458 941.9039326720358 153.236 1046.725706363885 153.236C1151.547480055734 153.236 1241.3947146487474 47.55600000000001 1346.2164883405965 47.55600000000001C1451.0382620324456 47.55600000000001 1540.885496625459 116.24799999999999 1645.707270317308 116.24799999999999 " fill="none" fill-opacity="1" stroke="#4154f1" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="0" clip-path="url(#gridRectMasky9jdtlp4)" pathTo="M -300.9828125313173 182.298C -143.7501519935437 182.298 -8.97930010402348 158.51999999999998 148.2533604337501 158.51999999999998C 253.07513412559913 158.51999999999998 342.92236871861263 190.224 447.7441424104617 190.224C 552.5659161023107 190.224 642.4131506953242 129.458 747.2349243871732 129.458C 852.0566980790223 129.458 941.9039326720358 153.236 1046.725706363885 153.236C 1151.547480055734 153.236 1241.3947146487474 47.55600000000001 1346.2164883405965 47.55600000000001C 1451.0382620324456 47.55600000000001 1540.885496625459 116.24799999999999 1645.707270317308 116.24799999999999" pathFrom="M -125.26093752344744 182.298C -46.644607251697266 182.298 20.74081869551719 158.51999999999998 99.35714896726736 158.51999999999998C 151.7680358151008 158.51999999999998 196.69165311324377 190.224 249.1025399610772 190.224C 301.51342680891065 190.224 346.4370441070536 129.458 398.8479309548871 129.458C 451.25881780272056 129.458 496.1824351008635 153.236 548.5933219486969 153.236C 601.0042087965304 153.236 645.9278260946734 47.55600000000001 698.3387129425068 47.55600000000001C 750.7495997903403 47.55600000000001 795.6732170884832 116.24799999999999 848.0841039363166 116.24799999999999" fill-rule="evenodd"></path><g class="apexcharts-series-markers-wrap apexcharts-hidden-element-shown" data:realIndex="0"><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M0,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="-300.9828125313173" cy="182.298" shape="circle" class="apexcharts-marker no-pointer-events wleqxgftp" rel="0" j="0" index="0" default-marker-size="0"></path><path d="M 148.2533604337501, 158.51999999999998 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="148.2533604337501" cy="158.51999999999998" shape="circle" class="apexcharts-marker no-pointer-events w6wkpwbmp" rel="1" j="1" index="0" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M 447.7441424104617, 190.224 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="447.7441424104617" cy="190.224" shape="circle" class="apexcharts-marker no-pointer-events wh9cuazwfl" rel="2" j="2" index="0" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M0,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="747.2349243871732" cy="129.458" shape="circle" class="apexcharts-marker no-pointer-events wlpn65stl" rel="3" j="3" index="0" default-marker-size="0"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M0,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="1046.725706363885" cy="153.236" shape="circle" class="apexcharts-marker no-pointer-events wnypvyx3if" rel="4" j="4" index="0" default-marker-size="0"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M0,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="1346.2164883405965" cy="47.55600000000001" shape="circle" class="apexcharts-marker no-pointer-events weuh86j38" rel="5" j="5" index="0" default-marker-size="0"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M0,0" fill="#4154f1" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="1645.707270317308" cy="116.24799999999999" shape="circle" class="apexcharts-marker no-pointer-events wg77q6vdw" rel="6" j="6" index="0" default-marker-size="0"></path></g></g></g><g class="apexcharts-series" zIndex="1" seriesName="Revenue" data:longestSeries="true" rel="2" data:realIndex="1"><path d="M-300.9828125313173 235.13799999999998C-143.7501519935437 235.13799999999998 -8.97930010402348 179.656 148.2533604337501 179.656C253.07513412559913 179.656 342.92236871861263 145.31 447.7441424104617 145.31C552.5659161023107 145.31 642.4131506953242 179.656 747.2349243871732 179.656C852.0566980790223 179.656 941.9039326720358 174.37199999999999 1046.725706363885 174.37199999999999C1151.547480055734 174.37199999999999 1241.3947146487474 126.816 1346.2164883405965 126.816C1451.0382620324456 126.816 1540.885496625459 155.878 1645.707270317308 155.878C1645.707270317308 155.878 1645.707270317308 155.878 1645.707270317308 264.2L-300.9828125313173 264.2L-300.9828125313173 235.13799999999998C-300.9828125313173 235.13799999999998 -300.9828125313173 235.13799999999998 -300.9828125313173 235.13799999999998 " fill="url(#SvgjsLinearGradient1025)" fill-opacity="1" stroke="none" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="1" clip-path="url(#gridRectMasky9jdtlp4)" pathTo="M -300.9828125313173 235.13799999999998C -143.7501519935437 235.13799999999998 -8.97930010402348 179.656 148.2533604337501 179.656C 253.07513412559913 179.656 342.92236871861263 145.31 447.7441424104617 145.31C 552.5659161023107 145.31 642.4131506953242 179.656 747.2349243871732 179.656C 852.0566980790223 179.656 941.9039326720358 174.37199999999999 1046.725706363885 174.37199999999999C 1151.547480055734 174.37199999999999 1241.3947146487474 126.816 1346.2164883405965 126.816C 1451.0382620324456 126.816 1540.885496625459 155.878 1645.707270317308 155.878C 1645.707270317308 155.878 1645.707270317308 155.878 1645.707270317308 264.2 L -300.9828125313173 264.2z" pathFrom="M -125.26093752344744 235.13799999999998C -46.644607251697266 235.13799999999998 20.74081869551719 179.656 99.35714896726736 179.656C 151.7680358151008 179.656 196.69165311324377 145.31 249.1025399610772 145.31C 301.51342680891065 145.31 346.4370441070536 179.656 398.8479309548871 179.656C 451.25881780272056 179.656 496.1824351008635 174.37199999999999 548.5933219486969 174.37199999999999C 601.0042087965304 174.37199999999999 645.9278260946734 126.816 698.3387129425068 126.816C 750.7495997903403 126.816 795.6732170884832 155.878 848.0841039363166 155.878C 848.0841039363166 155.878 848.0841039363166 155.878 848.0841039363166 264.2 L -125.26093752344744 264.2zz"></path><path d="M-300.9828125313173 235.13799999999998C-143.7501519935437 235.13799999999998 -8.97930010402348 179.656 148.2533604337501 179.656C253.07513412559913 179.656 342.92236871861263 145.31 447.7441424104617 145.31C552.5659161023107 145.31 642.4131506953242 179.656 747.2349243871732 179.656C852.0566980790223 179.656 941.9039326720358 174.37199999999999 1046.725706363885 174.37199999999999C1151.547480055734 174.37199999999999 1241.3947146487474 126.816 1346.2164883405965 126.816C1451.0382620324456 126.816 1540.885496625459 155.878 1645.707270317308 155.878 " fill="none" fill-opacity="1" stroke="#2eca6a" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="1" clip-path="url(#gridRectMasky9jdtlp4)" pathTo="M -300.9828125313173 235.13799999999998C -143.7501519935437 235.13799999999998 -8.97930010402348 179.656 148.2533604337501 179.656C 253.07513412559913 179.656 342.92236871861263 145.31 447.7441424104617 145.31C 552.5659161023107 145.31 642.4131506953242 179.656 747.2349243871732 179.656C 852.0566980790223 179.656 941.9039326720358 174.37199999999999 1046.725706363885 174.37199999999999C 1151.547480055734 174.37199999999999 1241.3947146487474 126.816 1346.2164883405965 126.816C 1451.0382620324456 126.816 1540.885496625459 155.878 1645.707270317308 155.878" pathFrom="M -125.26093752344744 235.13799999999998C -46.644607251697266 235.13799999999998 20.74081869551719 179.656 99.35714896726736 179.656C 151.7680358151008 179.656 196.69165311324377 145.31 249.1025399610772 145.31C 301.51342680891065 145.31 346.4370441070536 179.656 398.8479309548871 179.656C 451.25881780272056 179.656 496.1824351008635 174.37199999999999 548.5933219486969 174.37199999999999C 601.0042087965304 174.37199999999999 645.9278260946734 126.816 698.3387129425068 126.816C 750.7495997903403 126.816 795.6732170884832 155.878 848.0841039363166 155.878" fill-rule="evenodd"></path><g class="apexcharts-series-markers-wrap apexcharts-hidden-element-shown" data:realIndex="1"><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M0,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="-300.9828125313173" cy="235.13799999999998" shape="circle" class="apexcharts-marker no-pointer-events wqmh2da5r" rel="0" j="0" index="1" default-marker-size="0"></path><path d="M 148.2533604337501, 179.656 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="148.2533604337501" cy="179.656" shape="circle" class="apexcharts-marker no-pointer-events wtw8dyy2o" rel="1" j="1" index="1" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M 447.7441424104617, 145.31 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="447.7441424104617" cy="145.31" shape="circle" class="apexcharts-marker no-pointer-events wih6o8twh" rel="2" j="2" index="1" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M0,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="747.2349243871732" cy="179.656" shape="circle" class="apexcharts-marker no-pointer-events woa6l7w9j" rel="3" j="3" index="1" default-marker-size="0"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M0,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="1046.725706363885" cy="174.37199999999999" shape="circle" class="apexcharts-marker no-pointer-events wfrvmmayp" rel="4" j="4" index="1" default-marker-size="0"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M0,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="1346.2164883405965" cy="126.816" shape="circle" class="apexcharts-marker no-pointer-events wnihq1sh4" rel="5" j="5" index="1" default-marker-size="0"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M0,0" fill="#2eca6a" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="1645.707270317308" cy="155.878" shape="circle" class="apexcharts-marker no-pointer-events wkju7gzfo" rel="6" j="6" index="1" default-marker-size="0"></path></g></g></g><g class="apexcharts-series" zIndex="2" seriesName="Customers" data:longestSeries="true" rel="3" data:realIndex="2"><path d="M-300.9828125313173 224.57C-143.7501519935437 224.57 -8.97930010402348 235.13799999999998 148.2533604337501 235.13799999999998C253.07513412559913 235.13799999999998 342.92236871861263 179.656 447.7441424104617 179.656C552.5659161023107 179.656 642.4131506953242 216.644 747.2349243871732 216.644C852.0566980790223 216.644 941.9039326720358 240.422 1046.725706363885 240.422C1151.547480055734 240.422 1241.3947146487474 200.792 1346.2164883405965 200.792C1451.0382620324456 200.792 1540.885496625459 235.13799999999998 1645.707270317308 235.13799999999998C1645.707270317308 235.13799999999998 1645.707270317308 235.13799999999998 1645.707270317308 264.2L-300.9828125313173 264.2L-300.9828125313173 224.57C-300.9828125313173 224.57 -300.9828125313173 224.57 -300.9828125313173 224.57 " fill="url(#SvgjsLinearGradient1026)" fill-opacity="1" stroke="none" stroke-opacity="1" stroke-linecap="butt" stroke-width="0" stroke-dasharray="0" class="apexcharts-area" index="2" clip-path="url(#gridRectMasky9jdtlp4)" pathTo="M -300.9828125313173 224.57C -143.7501519935437 224.57 -8.97930010402348 235.13799999999998 148.2533604337501 235.13799999999998C 253.07513412559913 235.13799999999998 342.92236871861263 179.656 447.7441424104617 179.656C 552.5659161023107 179.656 642.4131506953242 216.644 747.2349243871732 216.644C 852.0566980790223 216.644 941.9039326720358 240.422 1046.725706363885 240.422C 1151.547480055734 240.422 1241.3947146487474 200.792 1346.2164883405965 200.792C 1451.0382620324456 200.792 1540.885496625459 235.13799999999998 1645.707270317308 235.13799999999998C 1645.707270317308 235.13799999999998 1645.707270317308 235.13799999999998 1645.707270317308 264.2 L -300.9828125313173 264.2z" pathFrom="M -125.26093752344744 224.57C -46.644607251697266 224.57 20.74081869551719 235.13799999999998 99.35714896726736 235.13799999999998C 151.7680358151008 235.13799999999998 196.69165311324377 179.656 249.1025399610772 179.656C 301.51342680891065 179.656 346.4370441070536 216.644 398.8479309548871 216.644C 451.25881780272056 216.644 496.1824351008635 240.422 548.5933219486969 240.422C 601.0042087965304 240.422 645.9278260946734 200.792 698.3387129425068 200.792C 750.7495997903403 200.792 795.6732170884832 235.13799999999998 848.0841039363166 235.13799999999998C 848.0841039363166 235.13799999999998 848.0841039363166 235.13799999999998 848.0841039363166 264.2 L -125.26093752344744 264.2zz"></path><path d="M-300.9828125313173 224.57C-143.7501519935437 224.57 -8.97930010402348 235.13799999999998 148.2533604337501 235.13799999999998C253.07513412559913 235.13799999999998 342.92236871861263 179.656 447.7441424104617 179.656C552.5659161023107 179.656 642.4131506953242 216.644 747.2349243871732 216.644C852.0566980790223 216.644 941.9039326720358 240.422 1046.725706363885 240.422C1151.547480055734 240.422 1241.3947146487474 200.792 1346.2164883405965 200.792C1451.0382620324456 200.792 1540.885496625459 235.13799999999998 1645.707270317308 235.13799999999998 " fill="none" fill-opacity="1" stroke="#ff771d" stroke-opacity="1" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" class="apexcharts-area" index="2" clip-path="url(#gridRectMasky9jdtlp4)" pathTo="M -300.9828125313173 224.57C -143.7501519935437 224.57 -8.97930010402348 235.13799999999998 148.2533604337501 235.13799999999998C 253.07513412559913 235.13799999999998 342.92236871861263 179.656 447.7441424104617 179.656C 552.5659161023107 179.656 642.4131506953242 216.644 747.2349243871732 216.644C 852.0566980790223 216.644 941.9039326720358 240.422 1046.725706363885 240.422C 1151.547480055734 240.422 1241.3947146487474 200.792 1346.2164883405965 200.792C 1451.0382620324456 200.792 1540.885496625459 235.13799999999998 1645.707270317308 235.13799999999998" pathFrom="M -125.26093752344744 224.57C -46.644607251697266 224.57 20.74081869551719 235.13799999999998 99.35714896726736 235.13799999999998C 151.7680358151008 235.13799999999998 196.69165311324377 179.656 249.1025399610772 179.656C 301.51342680891065 179.656 346.4370441070536 216.644 398.8479309548871 216.644C 451.25881780272056 216.644 496.1824351008635 240.422 548.5933219486969 240.422C 601.0042087965304 240.422 645.9278260946734 200.792 698.3387129425068 200.792C 750.7495997903403 200.792 795.6732170884832 235.13799999999998 848.0841039363166 235.13799999999998" fill-rule="evenodd"></path><g class="apexcharts-series-markers-wrap apexcharts-hidden-element-shown" data:realIndex="2"><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M0,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="-300.9828125313173" cy="224.57" shape="circle" class="apexcharts-marker no-pointer-events wbpq10lqb" rel="0" j="0" index="2" default-marker-size="0"></path><path d="M 148.2533604337501, 235.13799999999998 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="148.2533604337501" cy="235.13799999999998" shape="circle" class="apexcharts-marker no-pointer-events wo3ot824p" rel="1" j="1" index="2" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M 447.7441424104617, 179.656 
           m -4, 0 
           a 4,4 0 1,0 8,0 
           a 4,4 0 1,0 -8,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="447.7441424104617" cy="179.656" shape="circle" class="apexcharts-marker no-pointer-events wrs28nqkd" rel="2" j="2" index="2" default-marker-size="4"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M0,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="747.2349243871732" cy="216.644" shape="circle" class="apexcharts-marker no-pointer-events wv7ljldvk" rel="3" j="3" index="2" default-marker-size="0"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M0,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="1046.725706363885" cy="240.422" shape="circle" class="apexcharts-marker no-pointer-events w2yl76j78" rel="4" j="4" index="2" default-marker-size="0"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M0,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="1346.2164883405965" cy="200.792" shape="circle" class="apexcharts-marker no-pointer-events wfkw5c8el" rel="5" j="5" index="2" default-marker-size="0"></path></g><g class="apexcharts-series-markers" clip-path="url(#gridRectMarkerMasky9jdtlp4)"><path d="M0,0" fill="#ff771d" fill-opacity="1" stroke="#ffffff" stroke-opacity="0.9" stroke-linecap="butt" stroke-width="2" stroke-dasharray="0" cx="1645.707270317308" cy="235.13799999999998" shape="circle" class="apexcharts-marker no-pointer-events wwbtg5409" rel="6" j="6" index="2" default-marker-size="0"></path></g></g></g><g class="apexcharts-datalabels" data:realIndex="0"></g><g class="apexcharts-datalabels" data:realIndex="1"></g><g class="apexcharts-datalabels" data:realIndex="2"></g></g><line x1="0" y1="0" x2="557.640625" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="1" stroke-linecap="butt" class="apexcharts-ycrosshairs"></line><line x1="0" y1="0" x2="557.640625" y2="0" stroke="#b6b6b6" stroke-dasharray="0" stroke-width="0" stroke-linecap="butt" class="apexcharts-ycrosshairs-hidden"></line><g class="apexcharts-xaxis" transform="translate(0, 0)"><g class="apexcharts-xaxis-texts-g" transform="translate(0, -4)"><text x="23.543303138724827" y="292.2" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>01:05:00</tspan><title>01:05:00</title></text><text x="98.41599863290273" y="292.2" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>01:20:00</tspan><title>01:20:00</title></text><text x="173.28869412708062" y="292.2" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>01:35:00</tspan><title>01:35:00</title></text><text x="248.1613896212585" y="292.2" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>01:50:00</tspan><title>01:50:00</title></text><text x="323.0340851154364" y="292.2" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>02:05:00</tspan><title>02:05:00</title></text><text x="397.9067806096143" y="292.2" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>02:20:00</tspan><title>02:20:00</title></text><text x="472.7794761037922" y="292.2" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan>02:35:00</tspan><title>02:35:00</title></text><text x="547.6521715979706" y="292.2" text-anchor="middle" dominant-baseline="auto" font-size="12px" font-family="Helvetica, Arial, sans-serif" font-weight="400" fill="#373d3f" class="apexcharts-text apexcharts-xaxis-label " style="font-family: Helvetica, Arial, sans-serif;"><tspan></tspan><title></title></text></g></g><g class="apexcharts-yaxis-annotations apexcharts-hidden-element-shown"></g><g class="apexcharts-xaxis-annotations apexcharts-hidden-element-shown"></g><g class="apexcharts-point-annotations apexcharts-hidden-element-shown"></g></g><rect width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-zoom-rect"></rect><rect width="0" height="0" x="0" y="0" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fefefe" class="apexcharts-selection-rect"></rect></svg><div class="apexcharts-tooltip apexcharts-theme-light apexcharts-active" style="left: 208.613px; top: 158.2px;"><div class="apexcharts-tooltip-title" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;">19/09/18 01:30</div><div class="apexcharts-tooltip-series-group apexcharts-tooltip-series-group-0 apexcharts-active" style="order: 1; display: flex;"><span class="apexcharts-tooltip-marker" shape="circle" style="color: rgb(65, 84, 241);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">Sales: </span><span class="apexcharts-tooltip-text-y-value">40</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group apexcharts-tooltip-series-group-1 apexcharts-active" style="order: 2; display: flex;"><span class="apexcharts-tooltip-marker" shape="circle" style="color: rgb(46, 202, 106);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">Revenue: </span><span class="apexcharts-tooltip-text-y-value">32</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div><div class="apexcharts-tooltip-series-group apexcharts-tooltip-series-group-2 apexcharts-active" style="order: 3; display: flex;"><span class="apexcharts-tooltip-marker" shape="circle" style="color: rgb(255, 119, 29);"></span><div class="apexcharts-tooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px;"><div class="apexcharts-tooltip-y-group"><span class="apexcharts-tooltip-text-y-label">Customers: </span><span class="apexcharts-tooltip-text-y-value">11</span></div><div class="apexcharts-tooltip-goals-group"><span class="apexcharts-tooltip-text-goals-label"></span><span class="apexcharts-tooltip-text-goals-value"></span></div><div class="apexcharts-tooltip-z-group"><span class="apexcharts-tooltip-text-z-label"></span><span class="apexcharts-tooltip-text-z-value"></span></div></div></div></div><div class="apexcharts-xaxistooltip apexcharts-xaxistooltip-bottom apexcharts-theme-light" style="left: 142.074px; top: 296.2px;"><div class="apexcharts-xaxistooltip-text" style="font-family: Helvetica, Arial, sans-serif; font-size: 12px; min-width: 73.4062px;">19/09/18 01:30</div></div><div class="apexcharts-yaxistooltip apexcharts-yaxistooltip-0 apexcharts-yaxistooltip-left apexcharts-theme-light"><div class="apexcharts-yaxistooltip-text"></div></div></div></div>

                  <script>
                    document.addEventListener("DOMContentLoaded", () => {
                      new ApexCharts(document.querySelector("#reportsChart"), {
                        series: [{
                          name: 'Expense',
                          data: [31, 40, 28, 51, 42, 82, 56],
                        }, {
                          name: 'Income',
                          data: [11, 32, 45, 32, 34, 52, 41]
                        }, {
                          name: 'Budget',
                          data: [15, 11, 32, 18, 9, 24, 11]
                        }],
                        chart: {
                          height: 350,
                          type: 'area',
                          toolbar: {
                            show: false
                          },
                        },
                        markers: {
                          size: 4
                        },
                        colors: ['#4154f1', '#2eca6a', '#ff771d'],
                        fill: {
                          type: "gradient",
                          gradient: {
                            shadeIntensity: 1,
                            opacityFrom: 0.3,
                            opacityTo: 0.4,
                            stops: [0, 90, 100]
                          }
                        },
                        dataLabels: {
                          enabled: false
                        },
                        stroke: {
                          curve: 'smooth',
                          width: 2
                        },
                        xaxis: {
                          type: 'datetime',
                          categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
                        },
                        tooltip: {
                          x: {
                            format: 'dd/MM/yy HH:mm'
                          },
                        }
                      }).render();
                    });
                  </script>
                  <!-- End Line Chart -->

                </div>

              </div>
            </div><!-- End Reports -->

           
          </div>
        </div><!-- End Left side columns -->

        <!-- Right side columns -->
        <div class="col-lg-4">

        
            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="#">Today</a></li>
                <li><a class="dropdown-item" href="#">This Month</a></li>
                <li><a class="dropdown-item" href="#">This Year</a></li>
              </ul>
            </div>


          <!-- Budget Report -->
          <div class="card">
            <div class="filter">
              <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
              <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                <li class="dropdown-header text-start">
                  <h6>Filter</h6>
                </li>

                <li><a class="dropdown-item" href="#">Today</a></li>
                <li><a class="dropdown-item" href="#">This Month</a></li>
                <li><a class="dropdown-item" href="#">This Year</a></li>
              </ul>
            </div>

            <div class="card-body pb-0">
              <h5 class="card-title">Budget Report <span>| This Month</span></h5>

              <div id="budgetChart" style="min-height: 400px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);" class="echart" _echarts_instance_="ec_1743573945640"><div style="position: relative; width: 274px; height: 400px; padding: 0px; margin: 0px; border-width: 0px; cursor: default;"><canvas data-zr-dom-id="zr_0" width="274" height="400" style="position: absolute; left: 0px; top: 0px; width: 274px; height: 400px; user-select: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); padding: 0px; margin: 0px; border-width: 0px;"></canvas></div></div>

              <script>
                document.addEventListener("DOMContentLoaded", () => {
                  var budgetChart = echarts.init(document.querySelector("#budgetChart")).setOption({
                    legend: {
                      data: ['Allocated Budget', 'Actual Spending']
                    },
                    radar: {
                      // shape: 'circle',
                      indicator: [{
                          name: 'Entertainment',
                          max: 6500
                        },
                        {
                          name: 'Health',
                          max: 16000
                        },
                        {
                          name: 'Transportation',
                          max: 30000
                        },
                        {
                          name: ' Savings',
                          max: 38000
                        },
                        {
                          name: 'Education',
                          max: 52000
                        },
                        {
                          name: 'Utilities',
                          max: 25000
                        }
                      ]
                    },
                    series: [{
                      name: 'Budget vs spending',
                      type: 'radar',
                      data: [{
                          value: [4200, 3000, 20000, 35000, 50000, 18000],
                          name: 'Allocated Budget'
                        },
                        {
                          value: [5000, 14000, 28000, 26000, 42000, 21000],
                          name: 'Actual Spending'
                        }
                      ]
                    }]
                  });
                });
              </script>

            </div>
          </div><!-- End Budget Report -->



      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
   <div class="copyright">
		© Copyright <strong><span>Expense Tracker</span></strong>. All Rights
		Reserved
	</div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center active"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>



</body>
</html>