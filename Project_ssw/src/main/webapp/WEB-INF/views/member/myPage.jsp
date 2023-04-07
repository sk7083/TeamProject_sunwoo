<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<head>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<title>마이페이지</title>


<div class="container">
<h1>마이페이지</h1>
	<table class="table table-hover">
	<thead>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이메일</th>
			<th>생년월일</th>
			<th>권한</th>
			<th>이름</th>
			<th>핸드폰 번호</th>
			<th>주소</th>
		<tr>
</thead>
		<c:if test="${user.me_auth == 1 || user.me_auth == 2}">
			<tr><!-- 첫번째 줄 시작 -->
				<td>${user.me_id}</td>
				<td>${user.me_pw}</td>
				<td>${user.me_email}</td>
				<td>${user.me_birth}</td>
				<td>${user.me_auth}</td>
				<td>${user.me_name}</td>
				<td>${user.me_phone}</td>
				<td>${user.me_address}</td>
			</tr>
		</c:if>
	</table>
	
	<table class="table table-hover">
	<thead>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이메일</th>
			<th>생년월일</th>
			<th>권한</th>
			<th>이름</th>
			<th>핸드폰 번호</th>
			<th>주소</th>
		<tr>
</thead>
		<c:if test="${user.me_auth == 2}">
			<c:forEach items ="${list}" var="l">
				<tr><!-- 첫번째 줄 시작 -->
					<td>${l.me_id}</td>
					<td>${l.me_pw}</td>
					<td>${l.me_email}</td>
					<td>${l.me_birth}</td>
					<td>${l.me_auth}</td>
					<td>${l.me_name}</td>
					<td>${l.me_phone}</td>
					<td>${l.me_address}</td>
				</tr>
			</c:forEach>
		</c:if>
	</table>
	
	
</div>

