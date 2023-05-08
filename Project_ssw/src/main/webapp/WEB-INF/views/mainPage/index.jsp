<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<!-- ================ Style Start ================= -->	
<style>

<!-- 추가한 폰트 -->

@import url('https://fonts.googleapis.com/css2?family=Genos&display=swap');
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
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Seaplace Hotel</title>

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
</head>



<body>
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
<!-- ===================================== 상단 메뉴 [Start] ===================================== -->

          <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
            <ul class="nav navbar-nav menu_nav">
              <li class="nav-item active"><a class="nav-link" href="<c:url value="/"></c:url>">Home</a></li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false">Product</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="<c:url value="/motel"></c:url>">Motel</a></li>
                  <li class="nav-item"><a class="nav-link" href="<c:url value="/blogSingle"></c:url>">Hotel</a></li>
                  <li class="nav-item"><a class="nav-link" href="<c:url value="/blogSingle"></c:url>">Guest House</a></li>
                </ul>
              </li>
              <li class="nav-item submenu dropdown">
                <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false">Notice</a>
                <ul class="dropdown-menu">
                  <li class="nav-item"><a class="nav-link" href="<c:url value="/boardList1"></c:url>" style="font-family: 'Genos', sans-serif; opacity: 0.8">공지사항</a></li>
                  <li class="nav-item"><a class="nav-link" href="<c:url value="/boardList2"></c:url>" style="font-family: 'Genos', sans-serif; opacity: 0.8">문의사항</a></li>
                  <li class="nav-item"><a class="nav-link" href="<c:url value="/boardList3"></c:url>" style="font-family: 'Genos', sans-serif; opacity: 0.8">이벤트</a></li>
                </ul>
              </li>
              <li class="nav-item"><a class="nav-link" href="<c:url value="/properties"></c:url>">Properties</a></li>
              <li class="nav-item"><a class="nav-link" href="<c:url value="/gallery"></c:url>">Gallery</a></li>
              <li class="nav-item"><a class="nav-link" href="<c:url value="/contact"></c:url>">Contact</a></li>
<!-- ===================================== 상단 메뉴 [End] ===================================== -->

<!-- ================================= 관리자 전용 메뉴 [Start] ================================= -->
			
			<c:if test="${user.me_auth == 2}">
				<li class="nav-item submenu dropdown">
				  <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
				  aria-expanded="false">Manager</a>
			  	<ul class="dropdown-menu">
				    <li class="nav-item"><a class="nav-link" href="<c:url value="/memberManager"></c:url>">Management</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/productInsert"></c:url>">Product Add</a></li>
					<li class="nav-item"><a class="nav-link" href="<c:url value="/boardInsert"></c:url>">Notice</a></li>
				</ul>
				</li>
			</c:if>
<!-- ================================= 관리자 전용 메뉴 [End] ================================= -->
            </ul>
          </div>

	<!-- 우측 상단 로그인 / 회원가입 버튼 -->
          <ul class="social-icons ml-auto" style="padding-top: 14px;">
			<c:if test="${user.me_id == null}">
				<li><a id="loginBtn2" class="button-login-right" href="#" style="font-size: 16px; font-weight: bold;">로그인</a></li>
			</c:if>
			<c:if test="${user.me_id != null}">
				<li><a href="<c:url value="/myPage#tel123"></c:url>"  style="font-size: 16px; font-weight: bold;">내 정보</a></li>
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
      
      <!-- <div class="search_input" id="search_input_box">
        <div class="container">
          <form class="d-flex justify-content-between">
            <input type="text" class="form-control" id="search_input" placeholder="Search Here">
            <button type="submit" class="btn"></button>
            <span class="lnr lnr-cross" id="close_search" title="Close Search"></span>
          </form>
        </div>
      </div> -->
    </div>
	</header>
	<!-- ================ header section end ================= -->	

  <main class="site-main">
    

    <!-- ================ start banner area ================= --> 
    <section class="home-banner-area" id="home">
      <div class="container h-100">
        <div class="home-banner">
          <div class="text-center">
            <h4>See What a Difference a stay makes</h4>
            <h1>Luxury <em>is</em> personal</h1>
           	<c:if test="${user.me_id == null}">
	            <a id="loginBtn1" class="button home-banner-btn" href="#" style="width: 180px;">로그인</a>
           	</c:if>
           	<div>
				<c:if test="${user.me_auth == 1 || user.me_auth == 2}">
		            <a class="button home-banner-btn" href="<c:url value="/myPage#tel123"></c:url>" style="width: 180px;">내 정보</a>
	           	</c:if>
           	</div>
            <div> <c:url value=""></c:url>
          	  <a class="button home-banner-btn" href="#" style="width: 180px; margin-top: 10px">예약하기</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ================ end banner area ================= -->
  

    <!-- ================ start banner form ================= --> 
    <!-- 사용할 예정 없음 (임시 주석)
    <form class="form-search form-search-position">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 gutters-19">
            <div class="form-group">
              <input class="form-control" type="text" placeholder="Enter your keywords.." required>
            </div>
          </div>
          <div class="col-lg-6 gutters-19">
            <div class="row">
              <div class="col-sm">
                <div class="form-group">
                  <div class="form-select-custom">
                    <select name="" id="">
                      <option value="" disabled selected>Arrival</option>
                      <option value="8 AM">8 AM</option>
                      <option value="12 PM">12 PM</option>
                    </select>
                  </div>
                </div>
              </div>
              <div class="col-sm gutters-19">
                <div class="form-group">
                  <div class="form-select-custom">
                    <select name="" id="">
                      <option value="" disabled selected>Number of room</option>
                      <option value="8 AM">8 AM</option>
                      <option value="12 PM">12 PM</option>
                    </select>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm gutters-19">
            <div class="form-group">
              <div class="form-select-custom">
                <select name="" id="">
                  <option value="" disabled selected>Departure</option>
                  <option value="8 AM">8 AM</option>
                  <option value="12 PM">12 PM</option>
                </select>
              </div>
            </div>
          </div>
          <div class="col-sm gutters-19">
            <div class="form-group">
              <div class="form-select-custom">
                <select name="" id="">
                  <option value="" disabled selected>Adult</option>
                  <option value="8 AM">8 AM</option>
                  <option value="12 PM">12 PM</option>
                </select>
              </div>
            </div>
          </div>
          <div class="col-sm gutters-19">
            <div class="form-group">
              <div class="form-select-custom">
                <select name="" id="">
                  <option value="" disabled selected>Child</option>
                  <option value="8 AM">8 AM</option>
                  <option value="12 PM">12 PM</option>
                </select>
              </div>
            </div>
          </div>
          <div class="col-lg-4 gutters-19">
            <div class="form-group">
              <button class="button button-form" type="submit">Check Availability</button>
            </div>
          </div>
        </div>
      </div>
    </form>
     -->
    <!-- ================ end banner form ================= --> 

    <!-- ================ welcome section start ================= --> 
    <section class="welcome">
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-5 mb-4 mb-lg-0">
            <div class="row no-gutters welcome-images">
              <div class="col-sm-7">
                <div class="card">
                  <img class="" src="resources/seapalace-master/img/home/welcomeBanner1.png" alt="Card image cap">
                </div>
              </div>
              <div class="col-sm-5">
                <div class="card">
                  <img class="" src="resources/seapalace-master/img/home/welcomeBanner2.png" alt="Card image cap">
                </div>
              </div>
              <div class="col-lg-12">
                <div class="card">
                  <img class="" src="resources/seapalace-master/img/home/welcomeBanner3.png" alt="Card image cap">
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-7">
            <div class="welcome-content">
              <h2 class="mb-4"><span class="d-block">Welcome</span> to our residence</h2>
              <p>Beginning blessed second a creepeth. Darkness wherein fish years good air whose after seed appear midst evenin, appear void give third bearing divide one so blessed moved firmament gathered </p>
              <p>Beginning blessed second a creepeth. Darkness wherein fish years good air whose after seed appear midst evenin, appear void give third bearing divide one so blessed</p>
              <a class="button button--active home-banner-btn mt-4" href="#">Learn More</a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ================ welcome section end ================= --> 


    <!-- ================ Explore section start ================= -->
    <section class="section-margin">
      <div class="container">
        <div class="section-intro text-center pb-80px">
          <div class="section-intro__style">
            <img src="resources/seapalace-master/img/home/bed-icon.png" alt="">
          </div>
          <h2>Explore Our Rooms</h2>
        </div>

        <div class="row">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-explore">
              <div class="card-explore__img">
                <img class="card-img" src="resources/seapalace-master/img/home/explore1.png" alt="">
              </div>
              <div class="card-body">
                <h3 class="card-explore__price">$150.00 <sub>/ Per Night</sub></h3>
                <h4 class="card-explore__title"><a href="#">Classic Bed Room</a></h4>
                <p>Beginning fourth dominion creeping god was. Beginning, which fly yieldi dry beast moved blessed </p>
                <a class="card-explore__link" href="#">Book Now <i class="ti-arrow-right"></i></a>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-explore">
              <div class="card-explore__img">
                <img class="card-img" src="resources/seapalace-master/img/home/explore2.png" alt="">
              </div>
              <div class="card-body">
                <h3 class="card-explore__price">$170.00 <sub>/ Per Night</sub></h3>
                <h4 class="card-explore__title"><a href="#">Premium Room</a></h4>
                <p>Beginning fourth dominion creeping god was. Beginning, which fly yieldi dry beast moved blessed </p>
                <a class="card-explore__link" href="#">Book Now <i class="ti-arrow-right"></i></a>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-explore">
              <div class="card-explore__img">
                <img class="card-img" src="resources/seapalace-master/img/home/explore3.png" alt="">
              </div>
              <div class="card-body">
                <h3 class="card-explore__price">$190.00 <sub>/ Per Night</sub></h3>
                <h4 class="card-explore__title"><a href="#">Family Room</a></h4>
                <p>Beginning fourth dominion creeping god was. Beginning, which fly yieldi dry beast moved blessed </p>
                <a class="card-explore__link" href="#">Book Now <i class="ti-arrow-right"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ================ Explore section end ================= --> 



    <!-- ================ video section start ================= --> 
    <section class="video-area">
      <div class="container">
        <div class="row justify-content-center align-items-center flex-column text-center">
          <a id="play-home-video" class="video-play-button" href="https://www.youtube.com/watch?v=vParh5wE-tM">
            <span></span>
          </a>
          <h3>Seaplace</h3>
          <p>View four has said does men saw find dear shy talent</p>
        </div>
      </div>  
    </section>
    <!-- ================ video section end ================= --> 

    <!-- ================ special section start ================= -->
    <section class="section-padding bg-porcelain">
      <div class="container">
        <div class="section-intro text-center pb-80px">
          <div class="section-intro__style">
            <img src="resources/seapalace-master/img/home/bed-icon.png" alt="">
          </div>
          <h2>Special Facilities</h2>
        </div>
        <div class="special-img mb-30px">
          <img class="img-fluid" src="resources/seapalace-master/img/home/special.png" alt="">
        </div>

        <div class="row">
          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-special">
              <div class="media align-items-center mb-1">
                <span class="card-special__icon"><i class="ti-home"></i></span>
                <div class="media-body">
                  <h4 class="card-special__title">Conference Room</h4>
                </div>
              </div>
              <div class="card-body">
                <p>Built purse maids cease her ham new seven among and. Pulled coming wooded tended it answer remain</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-special">
              <div class="media align-items-center mb-1">
                <span class="card-special__icon"><i class="ti-bell"></i></span>
                <div class="media-body">
                  <h4 class="card-special__title">Swimming Pool</h4>
                </div>
              </div>
              <div class="card-body">
                <p>Built purse maids cease her ham new seven among and. Pulled coming wooded tended it answer remain</p>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4 mb-lg-0">
            <div class="card card-special">
              <div class="media align-items-center mb-1">
                <span class="card-special__icon"><i class="ti-car"></i></span>
                <div class="media-body">
                  <h4 class="card-special__title">Sports Culb</h4>
                </div>
              </div>
              <div class="card-body">
                <p>Built purse maids cease her ham new seven among and. Pulled coming wooded tended it answer remain</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ================ special section end ================= -->

    <!-- ================ carousel section start ================= -->
    <section class="section-margin">
      <div class="container">
        <div class="section-intro text-center pb-20px">
          <div class="section-intro__style">
            <img src="resources/seapalace-master/img/home/bed-icon.png" alt="">
          </div>
          <h2>Our Guest Love Us</h2>
        </div>
        <div class="owl-carousel owl-theme testi-carousel">
          <div class="testi-carousel__item">
            <div class="media">
              <div class="testi-carousel__img">
                <img src="resources/seapalace-master/img/home/testimonial1.png" alt="">
              </div>
              <div class="media-body">
                <p>Incidunt deleniti blanditiis quas aperiam recusandae consillo ullam quibusdam cum libero illo repell endus!</p>
                <div class="testi-carousel__intro">
                  <h3>Robert Mack</h3>
                  <p>CEO & Founder</p>
                </div>
              </div>
            </div>
          </div>

          <div class="testi-carousel__item">
            <div class="media">
              <div class="testi-carousel__img">
                <img src="resources/seapalace-master/img/home/testimonial2.png" alt="">
              </div>
              <div class="media-body">
                <p>Incidunt deleniti blanditiis quas aperiam recusandae consillo ullam quibusdam cum libero illo repell endus!</p>
                <div class="testi-carousel__intro">
                  <h3>David Alone</h3>
                  <p>CEO & Founder</p>
                </div>
              </div>
            </div>
          </div>

          <div class="testi-carousel__item">
            <div class="media">
              <div class="testi-carousel__img">
                <img src="resources/seapalace-master/img/home/testimonial3.png" alt="">
              </div>
              <div class="media-body">
                <p>Incidunt deleniti blanditiis quas aperiam recusandae consillo ullam quibusdam cum libero illo repell endus!</p>
                <div class="testi-carousel__intro">
                  <h3>Adam Pallin</h3>
                  <p>CEO & Founder</p>
                </div>
              </div>
            </div>
          </div>

          <div class="testi-carousel__item">
            <div class="media">
              <div class="testi-carousel__img">
                <img src="resources/seapalace-master/img/home/testimonial1.png" alt="">
              </div>
              <div class="media-body">
                <p>Incidunt deleniti blanditiis quas aperiam recusandae consillo ullam quibusdam cum libero illo repell endus!</p>
                <div class="testi-carousel__intro">
                  <h3>Robert Mack</h3>
                  <p>CEO & Founder</p>
                </div>
              </div>
            </div>
          </div>

          <div class="testi-carousel__item">
            <div class="media">
              <div class="testi-carousel__img">
                <img src="resources/seapalace-master/img/home/testimonial2.png" alt="">
              </div>
              <div class="media-body">
                <p>Incidunt deleniti blanditiis quas aperiam recusandae consillo ullam quibusdam cum libero illo repell endus!</p>
                <div class="testi-carousel__intro">
                  <h3>David Alone</h3>
                  <p>CEO & Founder</p>
                </div>
              </div>
            </div>
          </div>

          <div class="testi-carousel__item">
            <div class="media">
              <div class="testi-carousel__img">
                <img src="resources/seapalace-master/img/home/testimonial3.png" alt="">
              </div>
              <div class="media-body">
                <p>Incidunt deleniti blanditiis quas aperiam recusandae consillo ullam quibusdam cum libero illo repell endus!</p>
                <div class="testi-carousel__intro">
                  <h3>Adam Pallin</h3>
                  <p>CEO & Founder</p>
                </div>
              </div>
            </div>
          </div>

          <div class="testi-carousel__item">
              <div class="media">
                <div class="testi-carousel__img">
                  <img src="resources/seapalace-master/img/home/testimonial1.png" alt="">
                </div>
                <div class="media-body">
                  <p>Incidunt deleniti blanditiis quas aperiam recusandae consillo ullam quibusdam cum libero illo repell endus!</p>
                  <div class="testi-carousel__intro">
                    <h3>Robert Mack</h3>
                    <p>CEO & Founder</p>
                  </div>
                </div>
              </div>
            </div>
    
            <div class="testi-carousel__item">
              <div class="media">
                <div class="testi-carousel__img">
                  <img src="resources/seapalace-master/img/home/testimonial2.png" alt="">
                </div>
                <div class="media-body">
                  <p>Incidunt deleniti blanditiis quas aperiam recusandae consillo ullam quibusdam cum libero illo repell endus!</p>
                  <div class="testi-carousel__intro">
                    <h3>David Alone</h3>
                    <p>CEO & Founder</p>
                  </div>
                </div>
              </div>
            </div>
        </div>
      </div>
    </section>
    <!-- ================ carousel section end ================= -->


    <!-- ================ news section start ================= -->
    <section class="section-margin">
      <div class="container">
        <div class="section-intro text-center pb-80px">
          <div class="section-intro__style">
            <img src="resources/seapalace-master/img/home/bed-icon.png" alt="">
          </div>
          <h2>News & Events</h2>
        </div>

        <div class="row">
          <div class="col-md-6 col-lg-4 mb-4 mb-md-0">
            <div class="card card-news">
              <div class="card-news__img">
                <img class="card-img" src="resources/seapalace-master/img/home/explore1.png" alt="">
              </div>
              <div class="card-body">
                <h4 class="card-news__title"><a href="#">Hotel companies tipped the scales</a></h4>
                <ul class="card-news__info">
                  <li><a href="#"><span class="news-icon"><i class="ti-notepad"></i></span> 20th Nov, 2018</a></li>
                  <li><a href="#"><span class="news-icon"><i class="ti-comment"></i></span> 03 Comments</a></li>
                </ul>
                <p>Not thoughts all exercise blessing Indulgence way everything joy alteration boisterous the attachment party we years to order</p>
                <a class="card-news__link" href="#">Read More <i class="ti-arrow-right"></i></a>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4 mb-md-0">
            <div class="card card-news">
              <div class="card-news__img">
                <img class="card-img" src="resources/seapalace-master/img/home/explore2.png" alt="">
              </div>
              <div class="card-body">
                <h4 class="card-news__title"><a href="#">Try your hand inaugural industry crossword</a></h4>
                <ul class="card-news__info">
                  <li><a href="#"><span class="news-icon"><i class="ti-notepad"></i></span> 20th Nov, 2018</a></li>
                  <li><a href="#"><span class="news-icon"><i class="ti-comment"></i></span> 03 Comments</a></li>
                </ul>
                <p>Not thoughts all exercise blessing Indulgence way everything joy alteration boisterous the attachment party we years to order</p>
                <a class="card-news__link" href="#">Read More <i class="ti-arrow-right"></i></a>
              </div>
            </div>
          </div>

          <div class="col-md-6 col-lg-4 mb-4 mb-md-0">
            <div class="card card-news">
              <div class="card-news__img">
                <img class="card-img" src="resources/seapalace-master/img/home/explore3.png" alt="">
              </div>
              <div class="card-body">
                <h4 class="card-news__title"><a href="#">Hoteliers resolve to invest in guests</a></h4>
                <ul class="card-news__info">
                  <li><a href="#"><span class="news-icon"><i class="ti-notepad"></i></span> 20th Nov, 2018</a></li>
                  <li><a href="#"><span class="news-icon"><i class="ti-comment"></i></span> 03 Comments</a></li>
                </ul>
                <p>Not thoughts all exercise blessing Indulgence way everything joy alteration boisterous the attachment party we years to order</p>
                <a class="card-news__link" href="#">Read More <i class="ti-arrow-right"></i></a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- ================ news section end ================= -->

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
							 required="" type="email">
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
			  <h2 style="text-align: center; margin-left: 10px; margin-bottom: 30px">SEAPLACE</h2>
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
</body>

	<!-- ================ Script Start ================= -->

<script type="text/javascript">

	//========================= Login 모달창 [Start] =========================
	const modal = document.querySelector('.modal');
	const loginBtn1 = document.querySelector('#loginBtn1');
	const loginBtn2 = document.querySelector('#loginBtn2');
	
	loginBtn1.addEventListener('click', () => {
	modal.style.display = 'block';
	});
	
	loginBtn2.addEventListener('click', () => {
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

	
	//========================= Login 모달창 [End] ===========================

</script>

</html>