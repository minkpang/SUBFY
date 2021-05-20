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
      <a href="${root}/house?act=alllist" class="logo"><b>SSAFY<span>HOME</span></b></a>
      <!--로고 끝!-->
      <div class="nav notify-row" id="top_menu">
        <!-- 상단 네비게이션 바에 추가할만한 내용  -->
      </div>
      <!-- 로그인 기능 / 아직 구현 내용이 없음 -->
      <c:if test="${userinfo eq null}">
	      <div class="top-menu" id="logout_state">
	        <ul class="nav pull-right top-menu">
	          <li><a class="logout" href="#" data-toggle="modal" data-target="#loginModal">Login</a></li>
	          <li><a class="logout" href="${root}/join">Join Us</a></li>
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
            <a class="active" href="${root}">
              <i class="fa fa-dashboard"></i>
              <span>건물 거래 정보 테이블</span>
            </a>
          </li>
          <li class="sub-menu">
            <a href="${root}/userinfo">
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
      <section class="wrapper">
        <div class="row">
          <!-- 왼쪽 파트! -->
          <div class="col-lg-6 main-chart">      
	        <h3><i class="fa fa-angle-right"></i> 건물 거래 내역 </h3>
            <div style="height: 1000px">
            	<!-- BOARD 출력할 곳 -->
					<div class="col-md-12">
						<div class="content-panel">
							<div style="margin-left: 23px">
								<label class="checkbox-inline">
                					<input type="checkbox" id="inlineCheckbox1" value="option1" checked> 아파트 매매
                				</label>
              					<label class="checkbox-inline">
                					<input type="checkbox" id="inlineCheckbox2" value="option2" checked> 아파트 전월세
                				</label>
              					<label class="checkbox-inline">
                					<input type="checkbox" id="inlineCheckbox3" value="option3" checked> 다세대, 주택 매매
              					</label>
              					<label class="checkbox-inline">
                					<input type="checkbox" id="inlineCheckbox3" value="option3" checked> 다세대, 주택 전월세
              					</label>
							</div>
							
							<hr>
							<div class="row" style="margin-left: 5px">
							    <!--  <form method="post" action="${root}/house/search">-->
							    <form method="post" action="${root}/search">
							      <!--  <form>-->
							      <table>
							        <tr>
							          <td>검색:</td>
							          <td>
							            <select name="searchKey">
							              <option value=""></option>
							              <option value="dongSearch">동</option>
							              <option value="aptSearch">아파트 이름</option>
							            </select>
							          </td>
							          <td><input type="text" name="searchWord" /></td>
							          <td><button id="btSearch">검색</button></td>
							        </tr>
							      </table>
							    </form>
							</div>	
							<hr>						
							<table class="table">
								<thead>
									<tr>
										<th>번호</th>
										<th>동</th>
										<th>아파트이름</th>
										<th>거래금액</th>
										<th>거래종류</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${houseDealList}" var="houseDeal">
									<tr>
										<!--  <td><a href="${root}/house?act=searchbyno&key=${dto.no}">${dto.aptName}</a></td>-->
						                <td>${houseDeal.no}</td>
						                <td>${houseDeal.dong}</td>
						                <td>${houseDeal.aptName}</td>
						                <td>${houseDeal.dealAmount}</td>
						                <td>${houseDeal.type}</td>				
									</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
          </div>

        <!-- 오른쪽 파트! --> 
        <!--  
	    <c:if test="${houseDealList ne null}"> 
          <div class="col-lg-6 ds">
	        <h3><i class="fa fa-angle-right"></i> 건물 거래 정보 </h3>
            <div style="height: 1000px">
            	<div style="text-align: center;"> <img src="img/창신동창신쌍용1.jpg" class="rounded-circle" width="300"> </div>
            	<div>
            		<h4><i class="fa fa-angle-right"></i> 주택명: ${houseDeal.aptName} </h4>
            		<h4><i class="fa fa-angle-right"></i> 거래금액: ${houseDeal.dealAmount} </h4>
            		<h4><i class="fa fa-angle-right"></i> 월세금액: ${houseDeal.rentMoney eq null ? "없음" : houseDeal.rentMoney}</h4>
            		<h4><i class="fa fa-angle-right"></i> 건축연도: ${houseDeal.buildYear} </h4>
            		<h4><i class="fa fa-angle-right"></i> 전용면적: ${houseDeal.area} </h4>
            		<h4><i class="fa fa-angle-right"></i> 거래일: ${houseDeal.dealYear}년 ${houseDeal.dealMonth}월 ${houseDeal.dealDay}일 </h4>
            		<h4><i class="fa fa-angle-right"></i> 법정동: ${houseDeal.dong} </h4>
            		<h4><i class="fa fa-angle-right"></i> 지번: ${houseDeal.jibun} </h4>
      				<!--  <button type="button" onclick="location.href='house?act=mapindex&key=${houseDeal.aptName}'"class="btn btn-theme btn-block" id="btn_detail">
      					상세 정보 확인
      				</button>-->
            	</div>
            </div>
          </div>
          </c:if>
          -->
          <!-- /col-lg-3 -->
        </div>
        <!-- /row -->
      </section>
    </section>
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
				<form action="${root}/user/login" method="post" id="loginForm">
					<div class="modal-body">
						<div class="form-group">
							<label for="loginid">ID</label> <input type="text" class="form-control" placeholder="ID" id="loginid" name="userid" autofocus>
						</div>
						<div class="form-group">
							<label for="loginpw">Password</label> <input type="password" class="form-control" placeholder="Password" name="userpwd" id="loginpw">
						</div>
					</div>
					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="submit" form="loginForm" class="btn btn-theme btn-block" id="btn_login">Login</button>
						<button type="button" class="btn btn-theme btn-block" data-dismiss="modal" id="btn_login" data-toggle="modal" data-target="#findPwModal">비밀번호 찾기</button>
					</div>
				</form>
			</div>
		</div>
	</div>

  <!-- The Modal -->
	<div class="modal" id="findPwModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Find password</h4>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<div class="form-group">
						<label for="loginid">ID</label> <input type="text" class="form-control" placeholder="ID" id="findId" autofocus>
					</div>
					<div class="form-group">
						<label for="loginpw">E-mail</label> <input type="email" class="form-control" placeholder="EMAIL" id="findEmail">
					</div>
					<div class="form-group">
						<label for="loginpw">Tel</label> <input type="tel" class="form-control" placeholder="010-0000-0000" id="findTel">
					</div>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<button type="button" class="btn btn-theme btn-block" data-dismiss="modal" id="btn_login">Submit</button>
					<button type="button" class="btn btn-theme btn-block" data-dismiss="modal" id="btn_login" data-toggle="modal" data-target="#loginModal">뒤로 가기</button>
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
    