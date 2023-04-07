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
				<input class="form-control" type="text" id="id" name="me_id" />
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
				<label class="control-label" for="userAddress">주소</label>
				<input class="form-control" type="text" id="address" name="me_address" />
			</div>

			
			<div class="form-group has-feedback">
				<button class="btn btn-success" type="submit" id="submit">회원가입</button>
				<button class="cencle btn btn-danger" type="button">취소</button>
			</div>
		</form>
	</section>
</div>
<script src="<c:url value='/resources/js/jquery.validate.min.js'></c:url>"></script>
<script src="<c:url value='/resources/js/additional-methods.min.js'></c:url>"></script>
<script src="<c:url value='/resources/js/jquery-ui.min.js'></c:url>"></script>
