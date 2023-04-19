<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<title>회원가입</title>

<link rel="stylesheet" href="<c:url value='/resources/css/jquery-ui.min.css'></c:url>">
<div class="container">
<h1>회원가입</h1>
	<section id="container">
		<form action="<c:url value="/register"></c:url>" method="post">
			<div class="form-group has-feedback">
			<!--
				<label class="control-label" for="userId">아이디</label>
				<input class="form-control" type="text" id="me_id" name="me_id" oninput = "checkId()" />
			 id ajax 중복체크 
				<span class="id_ok" style="display: none">사용 가능한 아이디입니다.</span>
				<span class="id_already" style="display: none">누군가 이 아이디를 사용하고 있어요.</span>
			-->
			
			<!-- 아이디 -->
		<div class="form-group">
			<label for="user_id">아이디</label>
				<input type="text" class="form-control" id="user_id" name="me_id" placeholder="ID" required maxlength="16">
		<div class="check_font" id="id_check"></div>
		</div>
		
		<div class="form-group">
			<label for="user_id">비밀번호</label>
				<input type="password" name="me_pw" id="password" placeholder="PW" maxlength="16">
		<div id="pwdcheck_blank1"></div>
		</div>
		
				<div class="form-group">
			<label for="user_id">비밀번호 재확인</label>
				<input type="password" name="password_check" id="password_check" placeholder="PW" maxlength="16">
		<div id="pwdcheck_blank2"></div>
		</div>
			
		
			<div class="form-group has-feedback">
				<label class="control-label" for="userEmail">이메일</label>
				<input class="form-control" type="text" id="email" name="me_email" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="userBirth">생년월일</label>
				<input class="form-control" type="text" id="datepicker" name="me_birth" placeholder="2000-01-01" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="userName">이름</label>
				<input class="form-control" type="text" id="name" name="me_name" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="userPhone">핸드폰 번호</label>
				<input class="form-control" type="text" id="phone" name="me_phone" />
			</div>
			<div class="form-group has-feedback">
				<input type="text" id="sample6_postcode" placeholder="우편번호" name="me_address1">
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
				<input type="text" id="sample6_address" placeholder="주소" name="me_address2" ><br>
				<input type="text" id="sample6_detailAddress" placeholder="상세주소" name="me_address3" >
				<input type="text" id="sample6_extraAddress" placeholder="참고항목" style="display: none">
			</div>




			<div class="form-group has-feedback">
				<button class="btn btn-success" type="submit" id="signup">회원가입</button>
				<button class="cencle btn btn-danger" type="reset">취소</button>
			</div>
		</form>
	</section>
</div>
<script src="<c:url value='/resources/js/jquery.validate.min.js'></c:url>"></script>
<script src="<c:url value='/resources/js/additional-methods.min.js'></c:url>"></script>
<script src="<c:url value='/resources/js/jquery-ui.min.js'></c:url>"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<!-- 제이쿼리 -->
<script src='https://code.jquery.com/jquery-3.3.1.min.js'></script>
<!-- datepicker 달력 -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<script type="text/javascript">

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
	   	
// ===================================== 비밀번호 유효성 및 비밀번호 확인 체크 =====================================		
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
</script>
