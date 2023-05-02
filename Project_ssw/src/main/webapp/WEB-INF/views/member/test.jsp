<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>



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


<!-- 타임 피커 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="resources/css/jquery.timepicker.min.css">
<script src="resources/jquery/jquery.timepicker.min.js"></script>
 
  
  <label for="time">시간 선택</label>
<input type="text" id="time1" name="time1" class="form-control" style="width:200px;">
 
	<!-- ================ Start Login Modal ================= -->

	<!-- ================ End Login Modal ================= -->
    


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


<!-- datepicker 달력 -->

<script type="text/javascript">
$(function() {
    $("#time1").timepicker({
        timeFormat: 'h:mm p',
        interval: 60,
        minTime: '10',
        maxTime: '6:00pm',
        defaultTime: '11',
        startTime: '10:00',
        dynamic: false,
        dropdown: true,
        scrollbar: true        
    });
});
//========================= [수정] 버튼 클릭 시 [Update.jsp]로 이동 =========================
function Update(){
     location.href = "Update";
}
</script>




