<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


	<!-- ================ Style Start ================= -->	
<style>

.btn-pw-check{
width: 100%;
    height: calc(1.5em + 0.75rem + 2px);
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: 0.25rem;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}
.btn-updateLink{
display: inline-block;
    font-weight: 400;
    color: #212529;
    text-align: center;
    vertical-align: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-color: #f8f9fa;
    border: 1px solid #f8f9fa;
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    line-height: 1.5;
    border-radius: 0.25rem;
    transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out,box-shadow .15s ease-in-out;
	text-decoration: none;
	
}
.btn-updateLink:hover{
    color: #212529;
    background-color: #e6e8ea;
    border-color: #e6e8ea;
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
            <h2 style="color: white; margin-bottom: 30px;">MyPage</h2>
	            <a class="button home-banner-btn" href="<c:url value="/"></c:url>" style="width: 180px;">HOME</a>
           	<div>
           	</div>
            <div> <c:url value=""></c:url>
          	  <a class="button home-banner-btn" href="#" style="width: 180px; margin-top: 10px">예약하기</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ================ end banner area ================= -->
    <!-- 이동할 위치 지정 -->
    <span id="location123"></span>
    <!-- 이동할 위치 지정 -->
    <div class="section-intro__style" style="margin-bottom: 40px;
    text-align: center;
    margin-top: 40px;">
		<img src="resources/seapalace-master/img/home/bed-icon.png" alt="">
	<h2 style="margin-top: 10px">SEAPALACE</h2>
	</div>
	
    <!-- ===================================== 시작 지점 [Start] ===================================== -->

<form action="<c:url value="/Update?me_id=${Detail.me_id}"></c:url>" method="post">
	<div style="margin-left: 20%; margin-right: 20%">
		<p style="font-size: 22px; margin-left: 150px; font-weight: bold; position: relative; margin-bottom: 40px">내 정보 수정</p>
		 <div class="form-inlin" style="border-top: 1px solid #cfcfcf; padding-top: 5px; margin-bottom: 0px; margin-left: 200px; display: flex;">
			  <label for="email" class="mr-sm-2" style="width: 150px; display: block;">ID</label>
			  <input type="text" class="form-control mb-2 mr-sm-2" value="${Detail.me_id}" disabled style="background: white; width: 200px" name="me_id">
		  </div>
		  
  		 <div class="form-inl" style="border-top: 1px solid #cfcfcf; padding-top: 5px; margin-bottom: 0px; margin-left: 200px; display: flex;">
			  <label for="email" class="mr-sm-2" style="width: 150px; display: block;">이름</label>
			  <input type="text" class="form-control mb-2 mr-sm-2" value="${Detail.me_name}"  style="background: white; width: 200px" name="me_name">
		  </div>
		  
  		 <div id="pw-check1" style="border-top: 1px solid #cfcfcf; padding-top: 5px; margin-bottom: 0px; margin-left: 200px;">
			  <div style="display: flex;">
				  <label for="email" class="mr-sm-2" style="width: 150px; display: block;">PW</label>
				  <input type="password" class="btn-pw-check" value="${Detail.me_pw}"  style="background: white; width: 200px" disabled id="password" name="me_pw">
				  <button class="btn btn-light" type="button" style="margin-left: 20px;" onclick="showPw2();" >비밀번호 변경</button>
		  	</div>
			  <div id="pwdcheck_blank1"></div>
			  </div>
		  

			<div id="pw-check2" style="border-top: 1px solid #cfcfcf; padding-top: 5px; margin-bottom: 0px; margin-left: 200px; display: flex; display: none">
				<div style="display: flex;">
					<label for="email" class="mr-sm-2" style="width: 150px; display: block;">PW Check</label>
					<input type="password" class="btn-pw-check"  style="background: white; width: 200px; display: flex;" disabled id="password_check">
				</div>
			<div id="pwdcheck_blank2"></div>
			</div>

		  
  		 <div class="form-inline" style="border-top: 1px solid #cfcfcf; padding-top: 5px; margin-bottom: 0px; margin-left: 200px; display: flex;">
			  <label for="email" class="mr-sm-2" style="width: 150px; display: block;">이메일</label>
			  <input type="text" class="form-control mb-2 mr-sm-2" value="${Detail.me_email}"  style="background: white; width: 200px" name="me_email">
		  </div>
		  
  		 <div class="form-inline" style="border-top: 1px solid #cfcfcf; padding-top: 5px; margin-bottom: 0px; margin-left: 200px; display: flex;">
			  <label for="email" class="mr-sm-2" style="width: 150px; display: block;">생년월일</label>
			  <input type="text" class="form-control mb-2 mr-sm-2" value="${Detail.me_birth}"  style="background: white; width: 200px" id="datepicker" name="me_birth">
		  </div>
		  
		<div class="form-inline" style="border-top: 1px solid #cfcfcf; padding-top: 5px; margin-bottom: 0px; margin-left: 200px; display: flex;">
			  <label for="email" class="mr-sm-2" style="width: 150px; display: block;">전화번호</label>
			  <input type="text" class="form-control mb-2 mr-sm-2" value="${Detail.me_phone}"  style="background: white; width: 200px" name="me_phone">
		</div>
		  
		<div class="form-inline" style="border-top: 1px solid #cfcfcf; padding-top: 5px; margin-bottom: 0px; margin-left: 200px; display: flex;">
			  <label for="email" class="mr-sm-2" style="width: 150px; display: block;">우편번호</label>
			  
			  <input type="text" class="form-control mb-2 mr-sm-2" value="${Detail.me_address1}"  style="background: white; width: 200px" id="sample6_postcode" name="me_address1">
			  <input class="btn btn-light"  type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"  style="margin-left: 15px;">
		</div>
		  
		<div class="form-inline" style="border-top: 1px solid #cfcfcf; padding-top: 5px; margin-bottom: 0px; margin-left: 200px; display: flex;">
			  <label for="email" class="mr-sm-2" style="width: 150px; display: block;">주소</label>
			  <input type="text" class="form-control mb-2 mr-sm-2" value="${Detail.me_address2}"  style="background: white; width: 355px" id="sample6_address" name="me_address2">
		</div>
		
		<div class="form-inline" style="border-top: 1px solid #cfcfcf; padding-top: 5px; margin-bottom: 0px; margin-left: 200px; display: flex;">
			  <label for="email" class="mr-sm-2" style="width: 150px; display: block;">상세주소</label>
			  <input type="text" class="form-control mb-2 mr-sm-2" value="${Detail.me_address3}"  style="background: white; width: 200px" id="sample6_detailAddress" name="me_address3">
				<input type="text" id="sample6_extraAddress" placeholder="참고항목" style="display: none">
		</div>
		
		<c:if test="${Detail.me_auth == 2}">
			<div class="form-inline" style="border-top: 1px solid #cfcfcf; padding-top: 5px; margin-bottom: 0px; margin-left: 200px; display: flex;">
				  <label for="email" class="mr-sm-2" style="width: 150px; display: block;">권한</label>
				  <input type="text" class="form-control mb-2 mr-sm-2" value="${Detail.me_auth}"  style="background: white; width: 200px" name="me_auth">
			</div>
		</c:if>
		<button id="signup" class="btn btn-light" type="submit" style="text-decoration:none; margin-top : 50px; margin-left: 190px; margin-bottom: 50px" onclick="goodPw1();" >수정완료</button>
		<a href="<c:url value="/myPage"></c:url>" class="btn-updateLink" style="margin-top : 50px; margin-left: 10px; margin-bottom: 50px">뒤로가기</a>
		<a href="<c:url value="/Delete/${user.me_id}"></c:url>" class="btn-updateLink" style="margin-top : 50px; margin-left: 180px; margin-bottom: 50px;">회원탈퇴</a>
	</div>
</form>
    <!-- ======================================= 끝 지점 [End] ======================================= -->
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

//===================================== 비밀번호 변경 누를 경우 비밀번호 체크 등장 / 수정 가능하게 변경 [start] =====================================
function showPw2(){
    var con = document.getElementById("pw-check2");
    con.style.display = (con.style.display != 'none') ? "none" : "block";
    $(".btn-pw-check").attr("disabled", false);
}

function goodPw1(){
    var con = document.getElementById("pw-check1");
    $(".btn-pw-check").attr("disabled", false);
}


//===================================== 카카오 주소창 api 사용 [start] =====================================
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
//===================================== 카카오 주소창 api 사용 [end] =====================================      
    
//===================================== 비밀번호 유효성 및 비밀번호 확인 체크 [start] =====================================
    
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
	
   	//======================= 비밀번호 재확인 [start] ======================= 
   		
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
   	
//===================================== 비밀번호 유효성 및 비밀번호 확인 체크 [start] =====================================		
$( function() {
$( "#datepicker" ).datepicker();
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
//===================================== 전화번호 유효성 [010-0000-0000] [start] =====================================
const autoHyphen2 = (target) => {
  target.value = target.value
    .replace(/[^0-9]/g, '')
   .replace(/^(\d{0,3})(\d{0,4})(\d{0,4})$/g, "$1-$2-$3").replace(/(\-{1,2})$/g, "");
 }
</script>




