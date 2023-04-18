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
				<label class="control-label" for="userId">아이디</label>
				<input class="form-control" type="text" id="me_id" name="me_id" oninput = "checkId()" />
				<!-- id ajax 중복체크 -->
				<span class="id_ok" style="display: none">사용 가능한 아이디입니다.</span>
				<span class="id_already" style="display: none">누군가 이 아이디를 사용하고 있어요.</span>
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="userPass">패스워드</label>
				<input class="form-control" type="password" id="password" name="me_pw" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="userEmail">이메일</label>
				<input class="form-control" type="text" id="email" name="me_email" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="userBirth">생년월일</label>
				<input class="form-control" type="text" id="birth" name="me_birth" placeholder="1999-01-01" />
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
	function checkId(){
        var id = $('#me_id').val(); //id값이 "id"인 입력란의 값을 저장
        $.ajax({
            url:'./idCheck', //Controller에서 요청 받을 주소
            type:'post', //POST 방식으로 전달
            data:{"me_id":"me_id"},
            success:function(cnt){ //컨트롤러에서 넘어온 cnt값을 받는다 
                if(cnt == 0){ //cnt가 1이 아니면(=0일 경우) -> 사용 가능한 아이디 
                    $('.id_ok').css("display","inline-block"); 
                    $('.id_already').css("display", "none");
                } else { // cnt가 1일 경우 -> 이미 존재하는 아이디
                    $('.id_already').css("display","inline-block");
                    $('.id_ok').css("display", "none");
                    alert("아이디를 다시 입력해주세요");
                    $('#me_id').val('');
                }
            },
            error:function(){
                alert("에러입니다");
            }
        });
        };
	 
 
</script>
