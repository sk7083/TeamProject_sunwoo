<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<title>로그인</title>

<div class="container">
<h1>로그인</h1>
	<section id="container">
		<form action="<c:url value="/login"></c:url>" method="post">
			<div class="form-group has-feedback">
				<label class="control-label" for="userId">아이디</label>
				<input class="form-control" type="text" id="id" name="me_id" />
			</div>
			<div class="form-group has-feedback">
				<label class="control-label" for="userPass">패스워드</label>
				<input class="form-control" type="password" id="password" name="me_pw" />
			</div>
			<div class="login_button_wrap">
				<button class="login_button" type="submit" id="submit">로그인</button>
			</div>
		</form>
	</section>
</div>

<script>
 
    /* 로그인 버튼 클릭 메서드 */
    $(".login_button").click(function(){
        
        alert("로그인 버튼 작동");
        
    });
 
    /* 로그인 메서드 서버 요청 */
    $("#login_form").attr("action", "/member/login");
    $("#login_form").submit();
</script>
