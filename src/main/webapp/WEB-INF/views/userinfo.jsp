<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>SSAFY HAPPY HOME</title>

  <!-- Favicons -->
  <link href="img/ssafy_logo.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="css/zabuto_calendar.css">
  <link rel="stylesheet" type="text/css" href="lib/gritter/css/jquery.gritter.css" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">
  <script src="lib/chart-master/Chart.js"></script>

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
</head>

<body>
  <section id="container">
  
  	<!-- 헤더 -->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--로고-->
      <a href="${root}/" class="logo"><b>SSAFY<span>HOME</span></b></a>
      <!--로고 끝!-->
      <div class="nav notify-row" id="top_menu">
        <!-- 상단 네비게이션 바에 추가할만한 내용  -->
      </div>
      <!-- 로그인 기능 / 아직 구현 내용이 없음 -->
      <c:if test="${userinfo eq null}">
	      <div class="top-menu" id="logout_state">
	        <ul class="nav pull-right top-menu">
	          <li><a class="logout" href="#" data-toggle="modal" data-target="#loginModal">Login</a></li>
	          <li><a class="logout" href="${root}/user/join">Join Us</a></li>
	        </ul>
	      </div>      	
      </c:if>
      <c:if test="${userinfo ne null}">
      <div class="top-menu" id="login_state">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="${root}/user/logout">Logout</a></li>
        </ul>
      </div>
      </c:if>
    </header>
    <!--header end-->
      
    
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <p class="centered"><img src="img/ssafy_logo.png" class="img-thumbnail" width="100"></p>
          <h5 class="centered"> PACK MIN KWANG <br> KIM JU HYUN </h5>
          <li class="mt">
            <a href="${root}/mapindex">
              <i class="fa fa-dashboard"></i>
              <span>건물 거래 정보 테이블</span>
            </a>
          </li>
          <li class="sub-menu">
            <a class="active" href="${root}/userinfo">
              <i class=" fa fa-bar-chart-o"></i>
              <span>회원 정보</span>
            </a>
          </li>
          <li class="sub-menu">
            <a href="${root}/notice">
              <i class="fa fa-th"></i>
              <span>공지 사항</span>
            </a>
          </li>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
   <!--main content start-->
   <section id="main-content">
    <section class="wrapper site-min-height">
      <div class="row mt">
        <div class="col-lg-12">
          <div class="row content-panel">
            <div class="col-md-12 profile-text">
              <h3>${userinfo.username}</h3>
              <h6>님 안녕하세요!</h6>
              <p>자기 소개를 작성해주세요.</p>
              <br>
            </div>
          </div>
          <!-- /row -->
        </div>
        <!-- /col-lg-12 -->
        <div class="col-lg-12 mt">
          <div class="row content-panel">
            <div class="panel-heading">
              <ul class="nav nav-tabs nav-justified">
                <li class="active">
                  <a data-toggle="tab" href="#overview">Overview</a>
                </li>
                <li>
                  <a data-toggle="tab" href="#edit">Edit Profile</a>
                </li>
              </ul>
            </div>
            <div class="panel-body">
              <div class="tab-content">
                <div id="overview" class="tab-pane active">
                  <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 detailed">
                      <h4 class="mb">Personal Information</h4>
                      <h3>Name</h3> 
                      <h5>${userinfo.username}</h5>
                      <h3>Address</h3>
                      <h5>${userinfo.address}</h5>
                      <h3>ID</h3>
                      <h5>${userinfo.userid}</h5>
                      <h3>JoinDate</h3>
                      <h5>${userinfo.joindate}</h5>
                      <h3>E-mail</h3>
                      <h5>${userinfo.email}</h5>
                    </div>
                  </div>
                </div>
                <div id="edit" class="tab-pane">
                  <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 detailed">
                      <h4 class="mb">Edit Information</h4>
                      <form id="updateForm" class="form-horizontal style-form" action="${root}/user/modify" method="post">
                        <div class="form-group">
                          <label class="col-sm-2 col-sm-2 control-label">ID</label>
                          <div class="col-sm-10">
                            <input type="text" name="userid" class="form-control" value="${userinfo.userid}" readonly> 
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-sm-2 col-sm-2 control-label">Old Password</label>
                          <div class="col-sm-10">
                            <input type="password" name="oldpw" class="form-control">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-sm-2 col-sm-2 control-label">New Password</label>
                          <div class="col-sm-10">
                            <input type="password" name="userpwd" class="form-control">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-sm-2 col-sm-2 control-label">Name</label>
                          <div class="col-sm-10">
                            <input type="text" name="username" class="form-control" value="${userinfo.username}">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-sm-2 col-sm-2 control-label">Address</label>
                          <div class="col-sm-10">
                            <input type="address" name="address" class="form-control" value="${userinfo.address}">
                          </div>
                        </div>
                        <div class="form-group">
                          <label class="col-sm-2 col-sm-2 control-label">Email</label>
                          <div class="col-sm-10">
                            <input type="email" name="email" class="form-control" value="${userinfo.email}">
                          </div>
                        </div>
      					     <button type="submit" form="updateForm" class="btn btn-theme btn-block" id="btn_detail">수정하기</a></button>
                      </form>
                      <button type="button" onclick="location.href='/user/delete?userid=${userinfo.userid}'" class="btn btn-delete btn-block" id="btn_detail">탈퇴하기</a></button>
                    </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </section>
  <!-- /MAIN CONTENT -->
  <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>Dashio</strong>. All Rights Reserved
        </p>
        <div class="credits">
          <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
          Created with Dashio template by <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="index.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>

  <!-- The Modal -->
	<div class="modal" id="loginModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Login</h4>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="form-group">
						<label for="loginid">ID</label> <input type="text" class="form-control" placeholder="ID" id="userid" autofocus>
					</div>
					<div class="form-group">
						<label for="loginpw">Password</label> <input type="password" class="form-control" placeholder="Password" id="userpwd">
					</div>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-theme btn-block" data-dismiss="modal" id="btn_login">Login</button>
				</div>
			</div>
		</div>
	</div>

  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="lib/jquery.sparkline.js"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <script type="text/javascript" src="lib/gritter/js/jquery.gritter.js"></script>
  <script type="text/javascript" src="lib/gritter-conf.js"></script>
  <!--script for this page-->
  <script src="lib/sparkline-chart.js"></script>
  <script src="lib/zabuto_calendar.js"></script>
  <script type="text/javascript">
  	// 스크립트 작성!
  </script>
</body>

</html>
