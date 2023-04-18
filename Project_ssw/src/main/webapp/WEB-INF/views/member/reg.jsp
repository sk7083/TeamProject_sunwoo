<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<title>회원가입</title>


<div class="container">
<h1>회원가입</h1>
	<section id="container">
		<form name="joinForm" action="<c:url value="/register"></c:url>" method="post">
		
		    <input type="text" name="me_id" id="me_id" value="" maxlength="80" placeholder="아이디(이메일)" /><br/>
		    
		    <button class="me_idCheck" type="button" id="me_idCheck" onclick="fn_me_idCheck();" value="N">중복확인</button>
		    
		    <input type="password" name="member_pw"  value="" maxlength="20" placeholder="비밀번호"><p/>            
		    <input type="text" name="member_name" maxlength="40" value="" placeholder="이름"><p/>
		    <input type="tel" name="member_phone"  value="" autocomplete="off" placeholder="휴대폰 번호"><p/>
		    <input type="submit" value="가입하기">
		    <input type="reset"  value="취소하기">
		    
		    <!--  기본 코드
		    <input type="text" id="datepicker">
		     -->
		     
		</form> 
		
		<p>테스트 시작</p>
		<input type="text" id="datePicker" class="form-control" value="2019-06-27" />
		
	</section>
</div>

<!-- 제이쿼리 -->

<!-- sunwooTest 23-04-18 -->
<!-- 
<script src="<c:url value='/resources/sunwooTest/jquery-1.12.4.js'></c:url>"></script>
<script src="<c:url value='/resources/sunwooTest/jquery-ui.css'></c:url>"></script>
<script src="<c:url value='/resources/sunwooTest/jquery-ui.js'></c:url>"></script>
 -->
 
 <!-- 테스트용  -->
 <link rel="stylesheet" href="<c:url value='/resources/sunwooTest/css/bootstrap.min.css'></c:url>" >


<script src="<c:url value='/resources/sunwooTest/css/jquery-3.2.1.js'></c:url>"></script>
<script src="<c:url value='/resources/sunwooTest/css/bootstrap-datepicker.ko.min.js'></c:url>" integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
 
<script type="text/javascript">
	function fn_me_idCheck(){
        $.ajax({
            url:"/idCheck",
            type:"POST",
            dataType : "JSON",
            data: {"me_id":$("#me_id").val()}, // 원하는 값을 중복확인하기위해서  JSON 형태로 DATA 전송
            success: function(data){ 
                if(data == 1){
                	alert("중복");

                    $("#result_checkId").html(result).css("color", "green");
                    $("#member_pw").trigger("focus");
                 
	             }else if (data == 0){
	            	 $("#me_idCheck").attr("value", "Y");
	            	 alert("중복아님");
	
	                 $("#result_checkId").html(result).css("color","red");
	                 $("#me_id").val("").trigger("focus");
	             }
         }
            
    })
}
 
/*
	$(document).ready(function() {

        $("#datepicker").datepicker({

            //옵션

        })

    });
*/

//======================================= 기본 설정 =======================================

$(function() {
    //input을 datepicker로 선언
    $("#datepicker").datepicker({
        dateFormat: 'yy-mm-dd' //Input Display Format 변경
        ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
        ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
        ,changeYear: true //콤보박스에서 년 선택 가능
        ,changeMonth: true //콤보박스에서 월 선택 가능                
        ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
        ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
        ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
        ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
        ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
        ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
        ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
        ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
        ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
        ,minDate: "-1M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
        ,maxDate: "+1M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                
    });                    
    
    //초기값을 오늘 날짜로 설정
    $('#datepicker').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)            
});
//======================================= 기본 설정 =======================================
	
	
	//테스트 시작
	 $('#datePicker')
      .datepicker({
         format: 'yyyy-mm-dd', //데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
         startDate: '-10d', //달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
         endDate: '+10d', //달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
         autoclose: true, //사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
         calendarWeeks: false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
         clearBtn: false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
         datesDisabled: ['2019-06-24', '2019-06-26'], //선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
         daysOfWeekDisabled: [0, 6], //선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
         daysOfWeekHighlighted: [3], //강조 되어야 하는 요일 설정
         disableTouchKeyboard: false, //모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
         immediateUpdates: false, //사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false
         multidate: false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false
         multidateSeparator: ',', //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
         templates: {
            leftArrow: '&laquo;',
            rightArrow: '&raquo;',
         }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징
         showWeekDays: true, // 위에 요일 보여주는 옵션 기본값 : true
         title: '테스트', //캘린더 상단에 보여주는 타이틀
         todayHighlight: true, //오늘 날짜에 하이라이팅 기능 기본값 :false
         toggleActive: true, //이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
         weekStart: 0, //달력 시작 요일 선택하는 것 기본값은 0인 일요일
         language: 'ko', //달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
      })
      .on('changeDate', function (e) {
         /* 이벤트의 종류 */
         //show : datePicker가 보이는 순간 호출
         //hide : datePicker가 숨겨지는 순간 호출
         //clearDate: clear 버튼 누르면 호출
         //changeDate : 사용자가 클릭해서 날짜가 변경되면 호출 (개인적으로 가장 많이 사용함)
         //changeMonth : 월이 변경되면 호출
         //changeYear : 년이 변경되는 호출
         //changeCentury : 한 세기가 변경되면 호출 ex) 20세기에서 21세기가 되는 순간

         console.log(e);
         // e.date를 찍어보면 Thu Jun 27 2019 00:00:00 GMT+0900 (한국 표준시) 위와 같은 형태로 보인다.
      });
</script>
