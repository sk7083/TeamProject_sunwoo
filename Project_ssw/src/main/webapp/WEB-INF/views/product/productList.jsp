<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<head>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
	<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
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
<title>상품 현황</title>
<body>
<div class="container">
  <h4>상품</h4>
	<button type="button" class="btn btn-outline-primary" name="btn-Main"
		onclick="Main();">메인화면</button>
		
	<c:if test="${user.me_auth == 2}">
		<button type="button" class="btn btn-outline-success" name="btn-Writing"
			onclick="Writing();">상품 추가</button>
	</c:if>
  <table class="table table-hover">
    <thead>
      <tr>
		<th>상품 번호</th>
		<th>카테고리</th>
		<th>제목</th>
		<th>주소</th>
		<th>입실</th>
		<th>퇴실</th>
		<th><c:if test="${user.me_auth == 2}"></c:if></th>
      </tr>
    </thead>
    <tbody>
			<c:forEach items ="${list}" var="p">	
				<tr><!-- 첫번째 줄 시작 -->
					<td>${p.pr_pid}</td>
					<td>${p.pr_ca_pid}</td>
						<td><a href="<c:url value="/productDetail?pr_pid=${p.pr_pid}"></c:url>" >
						<c:out value="${p.pr_name}" /></a></td>
					<td>${p.pr_address}</td>
					<td>${p.pr_in_time}</td>
					<td>${p.pr_out_time}
					<td><c:if test="${user.me_auth == 2}"><a href="<c:url value="/productUpdate?pr_pid=${p.pr_pid}"></c:url>" class="btn-update" style="text-decoration:none">
						<c:out value="수정" /></a></c:if></td>
					<td><c:if test="${user.me_auth == 2}"><a href="<c:url value="/productDelete/${p.pr_pid}"></c:url>" class="btn-delete" style="text-decoration:none">
						<c:out value="삭제" /></a></c:if></td>
				</tr>
			</c:forEach>
    </tbody>
  </table>
</div>
</body>


<script type="text/javaScript">
function Writing(){
     location.href = "productInsert";
}

function Main(){
    location.href = "/springTest";
}
</script>