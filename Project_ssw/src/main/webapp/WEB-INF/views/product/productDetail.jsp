<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<!-- ================ Style Start ================= -->	
<style>
#motel-Btn:hover{
	background-color: #f8f9fa;
}
.success1{
	border: 2px solid #cca772;
	background: #cca772;
	font-weight: 700;
	cursor: pointer;
	text-transform: uppercase;
	color: #fff;
	font-family: "Playfair Display", serif;
	text-decoration: none;
}
.success1:hover{
	background-color: white;
	color: black;
}

.modal {
     position: absolute;
     top: 0;
     left: 0;
     width: 100%;
     height: 100%;
     display: none;
     background-color: rgba(0, 0, 0, 0.4);
}
		
.modal.show {
  display: block;
}

.modal_body {
  position: absolute;
  top: 55%;
  left: 50%;

  width: 400px;
  height: 600px;

  padding: 40px;

  text-align: center;

  background-color: rgb(255, 255, 255);
  border-radius: 10px;
  box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);

  transform: translateX(-50%) translateY(-50%);
}

</style>
	<!-- ================ Style End ================= -->	

  <title>Seaplace Hotel</title>
	
	<!-- 메인화면 필수 link -->
	<link rel="icon" href="resources/seapalace-master/img/favicon.png" type="image/png">
  <link rel="stylesheet" href="resources/seapalace-master/vendors/bootstrap/bootstrap.min.css">
  <link rel="stylesheet" href="resources/seapalace-master/vendors/fontawesome/css/all.min.css">
	<link rel="stylesheet" href="resources/seapalace-master/vendors/themify-icons/themify-icons.css">
	<link rel="stylesheet" href="resources/seapalace-master/vendors/linericon/style.css">
  <link rel="stylesheet" href="resources/seapalace-master/vendors/magnefic-popup/magnific-popup.css">
  <link rel="stylesheet" href="resources/seapalace-master/vendors/owl-carousel/owl.theme.default.min.css">
  <link rel="stylesheet" href="resources/seapalace-master/vendors/owl-carousel/owl.carousel.min.css">
  <link rel="stylesheet" href="resources/seapalace-master/vendors/nice-select/nice-select.css">

  <link rel="stylesheet" href="resources/seapalace-master/css/style.css">
  
  <!-- w3schools 부트스트랩 Forms (로그인 창) -->
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

	<!-- w3schools 부트스트랩 드롭다운 (지역 선택) -->
	<script src="resources/W3school/jquery.slim.min.js"></script>
	<script src="resources/W3school/popper.min.js"></script>
	<script src="resources/W3school/bootstrap.bundle.min.js"></script>






	<!-- ================ header section start ================= -->	
	<header class="header_area">
    <div class="header-top">
      <div class="container">
        <div class="d-flex align-items-center">
          <div id="logo">
            <a href="<c:url value="/"></c:url>"><img src="resources/seapalace-master/img/Logo.png" alt="" title="" /></a>
          </div>
          <div class="ml-auto d-none d-md-block d-md-flex">
            <div class="media header-top-info">
              <span class="header-top-info__icon"><i class="fas fa-phone-volume"></i></span>
              <div class="media-body">
                <p>Have any question?</p>
                <p>Free: <a href="tel:+12 365 5233">+12 365 5233</a></p>
              </div>
            </div>
            <div class="media header-top-info">
              <span class="header-top-info__icon"><i class="ti-email"></i></span>
              <div class="media-body">
                <p>Have any question?</p>
                <p>Free: <a href="tel:+12 365 5233">+12 365 5233</a></p>
              </div>
            </div>
          </div>
        </div>
        
      </div>
    </div>


    <div class="main_menu">
      <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
          <!-- Brand and toggle get grouped for better mobile display -->
          <!-- <a class="navbar-brand logo_h" href="index.html"><img src="img/logo.png" alt=""></a> -->
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav">
              <li class="nav-item active"><a class="nav-link" href="<c:url value="/"></c:url>">Home</a></li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false">Product</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="<c:url value="/blog"></c:url>">Motel</a></li>
                  <li class="nav-item"><a class="nav-link" href="<c:url value="/blogSingle"></c:url>">Hotel</a></li>
                  <li class="nav-item"><a class="nav-link" href="<c:url value="/blogSingle"></c:url>">Guest House</a></li>
                </ul>
              </li>
              <li class="nav-item"><a class="nav-link" href="<c:url value="/about"></c:url>">About</a></li>
              <li class="nav-item"><a class="nav-link" href="<c:url value="/properties"></c:url>">Properties</a></li>
              <li class="nav-item"><a class="nav-link" href="<c:url value="/gallery"></c:url>">Gallery</a></li>
              <li class="nav-item"><a class="nav-link" href="<c:url value="/contact"></c:url>">Contact</a></li>
            </ul>
          </div>

         <!-- 우측 상단 로그인 / 회원가입 버튼 -->
          <ul class="social-icons ml-auto" style="padding-top: 14px;">
			<c:if test="${user.me_id == null}">
				<li><a id="loginBtn" class="button-login-right" href="#" style="font-size: 16px; font-weight: bold;">로그인</a></li>
			</c:if>
			<c:if test="${user.me_id != null}">
				<li><a href="<c:url value="/myPage"></c:url>"  style="font-size: 16px; font-weight: bold;">내 정보</a></li>
			</c:if>
        	<c:if test="${user.me_id == null}">
				<li><a href="<c:url value="/register"></c:url>"  style="font-size: 16px; font-weight: bold;">회원가입</a></li>
			</c:if>
			<c:if test="${user.me_id != null}">
				<li><a href="<c:url value="/logout"></c:url>"  style="font-size: 16px; font-weight: bold;">로그아웃</a></li>
			</c:if>
            
          </ul>
        </div>
      </nav>
    </div>
	</header>
	<!-- ================ header section end ================= -->	

  <main class="site-main">
    <!-- ================ start banner area ================= --> 
    <section class="home-banner-area" id="home">
      <div class="container h-100">
        <div class="home-banner">
          <div class="text-center">
            <h4>Welcome <em>to</em> SEAPALACE </h4>
            <h2 style="color: white; margin-bottom: 30px;">Motel</h2>
	            <a class="button home-banner-btn" href="<c:url value="/"></c:url>" style="width: 180px;">HOME</a>
           	<div>
				<c:if test="${user.me_auth == 1 || user.me_auth == 2}">
		            <a class="button home-banner-btn" href="<c:url value="/myPage"></c:url>" style="width: 180px;">내 정보</a>
	           	</c:if>
           	</div>
            <div> <c:url value=""></c:url>
          	  <a class="button home-banner-btn" href="#" style="width: 180px; margin-top: 10px">예약하기</a>
            </div>
          </div>
        </div>
      </div>
    </section>
 	<!-- 이동할 위치 지정 -->	
	<span id="tel123"></span>
	<!-- 이동할 위치 지정 -->
    <!-- =================================== 시작 지점 [start] =================================== -->
    <div class="section-intro__
    tyle" style="margin-bottom: 40px; text-align: center; margin-top: 40px;">
		<img src="resources/seapalace-master/img/home/bed-icon.png" alt="">
		<h2 style="margin-top: 10px; margin-bottom: 50px">SEAPALACE</h2>
	</div>
	<div style="margin-left: 15%; margin-right: 15%; border-bottom: 1px solid #cbcbcb; margin-bottom: 30px">
		<!-- ============================ [사진 첨부 코드] [Start] ============================ -->
		<div style="border: 1px solid #ced4da; border-radius: 10px; padding: 25px; display: flex; margin-bottom: 50px">
			<!-- 사진 담을 박스 -->
			<div style="width: 600px; height: 450px; border: 1px solid #ced4da; border-radius: 10px; margin-right: 30px">
				<!-- 메인 사진 -->
				<div style="width: 550px; height: 300px; border-radius: 10px; margin-left: 20px; margin-right: 20px; margin-top: 20px; outline: 1px solid #cbcbcb; border-radius: 5px;">
					<img src="https://via.placeholder.com/550x300.jpg" alt="550 * 300 size image">
				</div>
				<!-- 작은 사진 -->
				<div style="display: flex;">
					<div style="width: 160px; height: 90px; border-radius: 10px; margin-left: 30px; margin-top: 20px; outline: 1px solid #cbcbcb; border-radius: 5px;">
						<img src="https://via.placeholder.com/160x90.jpg" alt="160 * 90 size image">
					</div>
					<div style="width: 160px; height: 90px; border-radius: 10px; margin-left: 30px; margin-top: 20px; outline: 1px solid #cbcbcb; border-radius: 5px;">
						<img src="https://via.placeholder.com/160x90.jpg" alt="160 * 90 size image">
					</div>
					<div style="width: 160px; height: 90px; border-radius: 10px; margin-left: 30px; margin-right: 30px; margin-top: 20px; outline: 1px solid #cbcbcb; border-radius: 5px;">
						<img src="https://via.placeholder.com/160x90.jpg" alt="160 * 90 size image">
					</div>
				</div>
			</div>
			<!-- ============================ [사진 첨부 코드] [End] ============================ -->
			
			<!-- ============================ [상품 관련 코드] [Start] ============================ -->
			<div style="width: 50%; height: 450px; border: 1px solid #ced4da; border-radius: 10px;">
				<!-- 상품 제목 부분 -->
				<div style="margin-left: 40px; margin-right: 40px; margin-top: 20px">
					<a href="<c:url value="/productDetail?pr_pid=${p.pr_pid}"></c:url>" style="text-decoration: none; color: black; font-weight: bold;"><c:out value="${p.pr_name}" /></a>						
				</div>
				<!-- 상품 내용 및 가격 박스 -->
				<div style="height: 340px; border: 1px solid #ced4da; border-radius: 10px; margin-left: 20px; margin-right: 20px; margin-top: 20px">
					<!-- 상품 내용 -->
					<div style="height: 100px; border: 1px solid #ced4da; border-radius: 10px; margin: 20px 20px 20px 20px;">
						<input value="${p.pr_content}" name="pr_content" style="width: 100%; height: 100%; text-align: left; background-color: white; border: none; outline: 1px solid #ced4da; border-radius: 10px;" disabled="disabled">
					</div>
					<!-- 상품 가격 -->
					<div style="height: 100px; border: 1px solid #ced4da; border-radius: 10px; margin: 20px 20px 20px 20px;">
						<input value="" placeholder="상품 가격 (ro_price) : ro_pid 1기준 가격" name="pr_content" disabled="disabled" style="width: 100%; height: 100%; background-color: white; border: none; outline: 1px solid #ced4da; border-radius: 10px;">
					</div>
					<!-- 상품 주소 -->
					<div style="height: 50px; border: 1px solid #ced4da; border-radius: 10px; margin: 20px 20px 20px 20px; display: flex;">
						<input value="${p.pr_address2} (${p.pr_address1})" name="pr_address2" style="width: 100%; height: 100%; border: none; background-color: white; outline: 1px solid #ced4da; border-radius: 10px;" disabled="disabled">
						<input value="${p.pr_address1}" name="pr_address1" style="display: none;" disabled="disabled">
						<input value="${p.pr_address3}" name="pr_address3" style="display: none;" disabled="disabled">
					</div>
				</div>
			</div>
			<!-- ============================ [상품 관련 코드] [End] ============================ -->
		</div>
	</div>
	<!-- ============================ [상품 상세 관련 코드] [Start] ============================ -->
	<div style="margin-left: 15%; margin-right: 15%; border-bottom: 1px solid #cbcbcb; margin-bottom: 30px">
		<!-- 예약 부분 -->
		<label class="control-label" for="datepicker">예약 날짜</label>
		<div style="width: 250px; margin-right: 30px; display: flex; margin-bottom: 10px">
			<input class="form-control" type="text" id="datepicker" name="re_str_date" placeholder="2023-01-01" />
			<p style="font-weight: bold; margin-left: 5px; margin-right: 5px; margin-top: 4;">~</p>
			<input class="form-control" type="text" id="datepicker2" name="re_str_date" placeholder="2023-01-02" />
		</div>
		<!-- 상세 상품 [ROOM] 사진 -->
		<div style="border: 1px solid #ced4da; border-radius: 10px; padding: 25px; display: flex; margin-bottom: 50px; display: inline-flex;">
			<div style="width: 300px; height: 300px; border-radius: 10px; margin-left: 20px; margin-right: 20px; margin-top: 20px; outline: 1px solid #cbcbcb; border-radius: 5px;">
				<img src="https://via.placeholder.com/300x300.jpg" alt="300 * 300 size image" style="border-right: 1px solid #cbcbcb; padding-right: 50px;">
			</div>
			<!-- 상세 상품 [ROOM] 제목 -->
			<div style="width: 100%; margin-left: 75px; padding: 25px; position: relative;">
				<div style="border: 1px solid #ced4da; border-radius: 10px; height: 50px; margin-bottom: 20px">
				</div>
					<!-- ====================================== [대실 / 숙박] [Start] ============================================= -->
				<div style="display: flex;">
					<div style="border: 1px solid #ced4da; border-radius: 10px; width: 50%; height: 225px; margin-right: 10px">
					<!-- ========================== 이 아래부터 대실 ========================== -->
						<p style="font-size: 18px; position: relative; padding-left: 20px; padding-top: 20px">대실</p>
						<!-- 대실 가격 박스 -->
						<div style="border: 1px solid #ced4da; border-radius: 10px; height: 40px; margin-bottom: 5px">
							<input value="" name="ro_price" placeholder="room 가격 (ro_price)" style="outline: none; width: 100%; height: 100%; border: none;">
						</div>
						<!-- 대실 입실 시간 / 퇴실 시간 박스 -->
						<div style="border: 1px solid #ced4da; border-radius: 10px; margin-bottom: 5px; display: flex; width: 100%">
						<div style="margin-left: 5px; font-weight: bold; font-size: 14px; margin-bottom: 0px; width: 78px;">이용시간</div>
							<input value="" name="pr_in_time" placeholder="09:00:00" style="outline: none; border: none; width: 70px; height: 100%;">
							<p style="margin-left: 5px; margin-right: 5px; font-weight: bold; margin-bottom: 0px; height: 25px;">~</p>
							<input value="" name="pr_out_time" placeholder="12:00:00" style="outline: none; border: none; width: 70px; height: 100%;">
						</div>
						<!-- 예약 버튼 -->
						<div style="border: 1px solid #ced4da; border-radius: 10px; height: 40px; margin-top: 20px">
							<a href='<c:url value="/"></c:url>' id="motel-Btn"
		            			style="background: #f8f9fa; padding: 7px; border-radius: 5px; color: black; text-decoration: none; width: 100%; height: 100%">예약하기</a>
						</div>
					</div>
					<!-- ========================== 이 아래부터 숙박 ========================== -->
					<div style="border: 1px solid #ced4da; border-radius: 10px; height: 50px; width: 50%; height: 225px; margin-left: 10px">
						<p style="font-size: 18px; position: relative; padding-left: 20px; padding-top: 20px">숙박</p>
						<!-- 숙박 가격 박스 -->
						<div style="border: 1px solid #ced4da; border-radius: 10px; height: 40px; margin-bottom: 5px">
							<input value="" name="ro_price" placeholder="room 가격 (ro_price)" style="outline: none; width: 100%; height: 100%; border: none;">
						</div>
						<!-- 숙박 입실 시간 / 퇴실 시간 박스 -->
						<div style="border: 1px solid #ced4da; border-radius: 10px; margin-bottom: 5px; display: flex; width: 100%">
						<p style="margin-left: 5px; font-weight: bold; font-size: 14px; margin-bottom: 0px; width: 78px;">이용시간</p>
							<input value="" name="pr_in_time" placeholder="09:00:00" style="outline: none; border: none; width: 70px; height: 100%;">
							<p style="margin-left: 5px; margin-right: 5px; font-weight: bold; margin-bottom: 0px; height: 25px;">~</p>
							<input value="" name="pr_out_time" placeholder="12:00:00" style="outline: none; border: none; width: 70px; height: 100%;">
						</div>
						<!-- 예약 버튼 -->
						<div style="border: 1px solid #ced4da; border-radius: 10px; height: 40px; margin-top: 20px">
							<a href='<c:url value="/"></c:url>' id="motel-Btn"
		            			style="background: #f8f9fa; padding: 7px; border-radius: 5px; color: black; text-decoration: none; width: 100%; height: 100%">예약하기</a>
						</div>
					</div>
					<!-- ====================================== [대실 / 숙박] [End] ============================================= -->
				</div>
			</div>
		</div>
	</div>
	<!-- ============================ [상품 상세 관련 코드] [End] ============================ -->
	
    <!-- ===================================== 끝 지점 [End] ===================================== -->
  
</main>



  <!-- ================ start footer Area ================= -->
  <footer class="footer-area section-gap">
		<div class="container">
			<div class="row">
				<div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					<h4>Top Products</h4>
					<ul>
						<li><a href="#">Managed Website</a></li>
						<li><a href="#">Manage Reputation</a></li>
						<li><a href="#">Power Tools</a></li>
						<li><a href="#">Marketing Service</a></li>
					</ul>
				</div>
				<div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					<h4>Quick Links</h4>
					<ul>
						<li><a href="#">Jobs</a></li>
						<li><a href="#">Brand Assets</a></li>
						<li><a href="#">Investor Relations</a></li>
						<li><a href="#">Terms of Service</a></li>
					</ul>
				</div>
				<div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					<h4>Features</h4>
					<ul>
						<li><a href="#">Jobs</a></li>
						<li><a href="#">Brand Assets</a></li>
						<li><a href="#">Investor Relations</a></li>
						<li><a href="#">Terms of Service</a></li>
					</ul>
				</div>
				<div class="col-xl-2 col-sm-6 mb-4 mb-xl-0 single-footer-widget">
					<h4>Resources</h4>
					<ul>
						<li><a href="#">Guides</a></li>
						<li><a href="#">Research</a></li>
						<li><a href="#">Experts</a></li>
						<li><a href="#">Agencies</a></li>
					</ul>
				</div>
				<div class="col-xl-4 col-md-8 mb-4 mb-xl-0 single-footer-widget">
					<h4>Newsletter</h4>
					<p>You can trust us. we only send promo offers,</p>
					<div class="form-wrap" id="mc_embed_signup">
						<form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
						 method="get" class="form-inline">
							<input class="form-control" name="EMAIL" placeholder="Your Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email Address '"
							  type="email">
							<button class="click-btn btn btn-default text-uppercase">subscribe</button>
							<div style="position: absolute; left: -5000px;">
								<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
							</div>

							<div class="info"></div>
						</form>
					</div>
				</div>
			</div>
			<div class="footer-bottom row align-items-center text-center text-lg-left">
				<p class="footer-text m-0 col-lg-8 col-md-12"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
				<div class="col-lg-4 col-md-12 text-center text-lg-right footer-social">
					<a href="#"><i class="fab fa-facebook-f"></i></a>
					<a href="#"><i class="fab fa-twitter"></i></a>
					<a href="#"><i class="fab fa-dribbble"></i></a>
					<a href="#"><i class="fab fa-behance"></i></a>
				</div>
			</div>
		</div>
	</footer>
  <!-- ================ End footer Area ================= -->
  
  
	<!-- ================ Start Login Modal ================= -->
<form action="<c:url value="/login"></c:url>" method="post">
	<div id="mod" class="modal">
		<div class="modal_body">
			<button class="close-btn" onclick="modalClose()" style="float: right; display: flex; background-color: white; border: 0px solid; font-weight: bold; font-size: 26px; position: absolute; right: 6%; top: 2%">X</button><br>
			<div class="container">
			  <h2 style="text-align: center; margin-left: 10px; margin-bottom: 30px">SunMall</h2>
			  <!-- 
			  <form action="/action_page.php" class="was-validated">
			   -->
			    <div class="form-group">
			      <label for="uname">UserID:</label>
			      <input type="text" class="form-control" id="uname" placeholder="UserID" name="me_id" required>
			      <div class="valid-feedback"></div>
			      <div class="invalid-feedback">아이디를 입력하세요.</div>
			    </div>
			    <div class="form-group">
			      <label for="pwd">Password:</label>
			      <input type="password" class="form-control" id="pwd" placeholder="Password" name="me_pw" required>
			      <div class="valid-feedback"></div>
			      <div class="invalid-feedback">비밀번호를 입력하세요.</div>
			    </div>

			    <!-- 모달창에서 또다른 모달창을 띄워서 회원가입 진행 -->
			    <a href="<c:url value="/register"></c:url>" style="text-decoration: none; color: black;">회원가입</a>
			    <!-- 체크박스 임시 주석
			    <div class="form-group form-check">
			      <label class="form-check-label">
			        <input class="form-check-input" type="checkbox" name="remember" required> I agree on blabla.
			        <div class="valid-feedback"></div>
			        <div class="invalid-feedback">Check this checkbox to continue.</div>
			      </label>
			    </div>
			    -->
			    <button type="submit" id="Modal-login-btn" class="btn btn-outline-light text-dark">로그인</button>
			    
			  <!-- 
			  </form>
			   -->
			</div>
		</div>
	</div>
</form>
	<!-- ================ End Login Modal ================= -->
    


  <script src="resources/seapalace-master/vendors/jquery/jquery-3.2.1.min.js"></script>
  <script src="resources/seapalace-master/vendors/bootstrap/bootstrap.bundle.min.js"></script>
  <script src="resources/seapalace-master/vendors/magnefic-popup/jquery.magnific-popup.min.js"></script>
  <script src="resources/seapalace-master/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="resources/seapalace-master/vendors/easing.min.js"></script>
  <script src="resources/seapalace-master/vendors/superfish.min.js"></script>
  <script src="resources/seapalace-master/vendors/nice-select/jquery.nice-select.min.js"></script>
  <script src="resources/seapalace-master/vendors/jquery.ajaxchimp.min.js"></script>
  <script src="resources/seapalace-master/vendors/mail-script.js"></script>
  <script src="resources/seapalace-master/js/main.js"></script>


	<!-- ================ Script Start ================= -->
<script src="resources/js/jquery.validate.js"></script>
<script src="resources/js/jquery-ui.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<!-- datepicker 달력 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">
	//========================= Login 모달창 [Start] =========================
/* 현재 Login 모달창으로 인해 아래 제이쿼리가 작동하지 않게 됨. (임시 사용 중지) [2023.05.01] 
	const modal = document.querySelector('.modal');
	const loginBtn = document.querySelector('#loginBtn');
	
	loginBtn.addEventListener('click', () => {
	modal.style.display = 'block';
	});
		
	// 모달 on
	body.style.overflow = 'hidden';
	// 모달 off
	body.style.overflow = 'auto';
	//모달 닫는 이벤트
	function modalClose() {
		$('#mod').modal('hide'); 
        $('#mod').hide();
	}
	*/
	//========================= Login 모달창 [End] ===========================

// ===================================== 카카오 주소창 api 사용 =====================================
	function sample6_execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var addr = ''; // 주소 변수
	            var extraAddr = ''; // 참고항목 변수
	
	            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }
	
	            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	            if(data.userSelectedType === 'R'){
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraAddr !== ''){
	                    extraAddr = ' (' + extraAddr + ')';
	                }
	                // 조합된 참고항목을 해당 필드에 넣는다.
	                document.getElementById("sample6_extraAddress").value = extraAddr;
	            
	            } else {
	                document.getElementById("sample6_extraAddress").value = '';
	            }
	
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('sample6_postcode').value = data.zonecode;
	            document.getElementById("sample6_address").value = addr;
	            // 커서를 상세주소 필드로 이동한다.
	            document.getElementById("sample6_detailAddress").focus();
	        }
	    }).open();
	}
// ===================================== 카카오 주소창 api 사용 =====================================      
        
// ===================================== 아이디 유효성 및 중복 체크 =====================================

	$("#user_id").blur(function() {
    		
    		let memberCheck = /^[a-zA-Z0-9]{8,16}$/;
    		// id = "id_reg" / name = "userId"
    		var me_id = $('#user_id').val();
    		$.ajax({
    			url : '${pageContext.request.contextPath}/idCheck?meId='+ me_id,
    			type : 'get',
    			success : function(data) {
    				console.log("1 = 중복o / 0 = 중복x : "+ data);							
    				
    				if (data == 1) {
    						// 1 : 아이디가 중복되는 문구
    						$("#id_check").text("사용중인 아이디입니다.");
    						$("#id_check").css("color", "red");
    						$("#signup").attr("disabled", true);
    					} else  {
    						if(me_id == ""){
    							$('#id_check').text('아이디는 필수 항목입니다.');
    							$('#id_check').css('color', 'red');
    							$("#signup").attr("disabled", true);				
    							
    						} else if(!memberCheck.test($('#user_id').val())){
    							// 정규식 체크 / 조건 : 영문과 숫자 조합하여 8~16자만 가능
    							$("#id_check").text("아이디는 영문 + 숫자인 8 ~ 16자만 가능합니다.");
    							$("#id_check").css("color", "red");
    							$("#signup").attr("disabled", true);
    							
    							
    						} else {
    							
    							$('#id_check').text("사용 가능한 아이디입니다.");
    							$('#id_check').css('color', 'green');
    							$("#signup").attr("disabled", false);
    						}
    						
    					}
    				}, error : function() {
    						console.log("실패");
    				}
    			});
    		});
// ===================================== 아이디 유효성 및 중복 체크 =====================================        
      
// ===================================== 비밀번호 유효성 및 비밀번호 확인 체크 =====================================
        
        $("#password").blur(function() {
        	//비밀번호 유효성 / 조건 : 영문 + 숫자(특문) 8~16자리
        	let pwCheck= /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;
        	if ($("#password").val() == "") {
   	         $("#pwdcheck_blank1").text("비밀번호는 필수 항목입니다.");
   	         $("#pwdcheck_blank1").css("color", "red");
			 $("#signup").attr("disabled", true);
			 
   	      }	 else if (!pwCheck.test($("#password").val())) {
   	    	 $("#pwdcheck_blank1").text("");
   		  	 $("#pwdcheck_blank1").css("color", "red");
   		     $("#pwdcheck_blank1").text("비밀번호는 영문+숫자(특문)인 8~16자만 가능합니다.");
   			 $("#signup").attr("disabled", true);
   	      }else {
   	    	  $("#pwdcheck_blank1").css('color', 'green');
   			  $("#pwdcheck_blank1").text("사용 가능한 비밀번호입니다.");
   			  $("#signup").attr("disabled", true);
   	      }
   	 });
   	
	   	//======================= 비밀번호 재확인 =======================
	   		
	   	$("#password_check").blur(function() {
	   		if($("#password_check").val() == "") {
	   			$("#pwdcheck_blank2").css("color", "red");
	   	        $("#pwdcheck_blank2").text("비밀번호 재확인은 필수 항목입니다.");
	   	    	$("#signup").attr("disabled", true);
	   		}
	   		else if($("#password").val() == $("#password_check").val()) {
	   			$("#pwdcheck_blank2").css("color", "green");
	   			$("#pwdcheck_blank2").text("비밀번호가 일치합니다");
	   			$("#signup").attr("disabled", false);
	   		}else {
	   			$("#pwdcheck_blank2").css("color", "red");
	   			$("#pwdcheck_blank2").text("비밀번호와 일치하지 않습니다.");
	   			$("#password_check").val("");
	   			$("#signup").attr("disabled", true);
	   		}
	   	});
	   	
// ===================================== 데이터피커 =====================================		
  $( function() {
    $( "#datepicker" ).datepicker({ minDate: 0});
  } );
  
  $.datepicker.setDefaults({
      dateFormat: 'yy-mm-dd',
      prevText: '이전 달',
      nextText: '다음 달',
      monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
      monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
      dayNames: ['일', '월', '화', '수', '목', '금', '토'],
      dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
      dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
      showMonthAfterYear: true,
      yearSuffix: '년'
  });
  
  $( function() {
	    $( "#datepicker2" ).datepicker({ minDate: 0});
	  } );
	  
	  $.datepicker.setDefaults({
	      dateFormat: 'yy-mm-dd',
	      prevText: '이전 달',
	      nextText: '다음 달',
	      monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	      monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	      dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	      dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	      dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	      showMonthAfterYear: true,
	      yearSuffix: '년'
	  });
//===================================== 전화번호 유효성 [010-0000-0000] =====================================
  const autoHyphen2 = (target) => {
	  target.value = target.value
	    .replace(/[^0-9]/g, '')
	   .replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
	 }
</script>
