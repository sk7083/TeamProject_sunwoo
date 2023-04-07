<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<head>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<title>회원 정보</title>
<style>
 .btn-update{
 	display: block;
    width: 60px;
    background: #4E9CAF;
    padding: 10px;
    text-align: center;
    border-radius: 5px;
    color: white;
    font-weight: bold;
    line-height: auto;
    text-decoration: none;
 }
 
 .btn-delete:hover{
   	color: white;
 }
 
 .btn-update:hover{
   	color: white;
 }
 
  .btn-delete{
 	display: block;
    width: 60px;
    background: red;
    padding: 10px;
    text-align: center;
    border-radius: 5px;
    color: white;
    font-weight: bold;
    line-height: auto;
    text-decoration: none;
 }
</style>
<div class="container">
<h1>회원 정보</h1>
	<button type="button" class="btn btn-outline-primary" name="btn-Main"
		onclick="Update();">정보수정</button>
	<button type="button" class="btn btn-outline-danger" name="btn-Writing"
		onclick="Writing();">회원탈퇴</button>
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
				<th><c:if test="${user.me_auth == 2}"></c:if></th>
			<tr>
		</thead>
			<c:forEach items ="${list}" var="m">
			
			<tr><!-- 첫번째 줄 시작 -->
				<td>${m.me_id}</td>
				<td>${m.me_pw}</td>
				<td>${m.me_email}</td>
				<td>${m.me_birth}</td>
				<td>${m.me_auth}</td>
				<td>${m.me_name}</td>
				<td>${m.me_phone}</td>
				<td>${m.me_address}</td>
				<td><c:if test="${user.me_auth == 2}"><a href="<c:url value="/Detail?me_id=${m.me_id}"></c:url>" class="btn-update" style="text-decoration:none">
						<c:out value="수정" /></a></c:if></td>
				<td><c:if test="${user.me_auth == 2}"><a href="<c:url value="/Delete/${m.me_id}"></c:url>" class="btn-delete" style="text-decoration:none">
						<c:out value="삭제" /></a></c:if></td>
			</tr>
			</c:forEach>

	</table>

</div>


<script type="text/javaScript">
function Writing(){
     location.href = "boardInsert";
}

function Update(){
    location.href = "Update";
}
</script>