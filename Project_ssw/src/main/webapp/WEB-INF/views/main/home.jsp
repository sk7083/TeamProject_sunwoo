<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>메인 화면</title>
</head>
<body>
<h3>Main</h3><br>


<c:if test="${user.me_id == null}">
<a href="<c:url value="/login"></c:url>">로그인</a><br>
<a href="<c:url value="/register"></c:url>">회원가입</a><br>
</c:if>

<c:if test="${user.me_auth == 1 || user.me_auth == 2}">
	<a href="<c:url value="/Detail?me_id=${user.me_id}"></c:url>">마이페이지</a><br>
	<a href="<c:url value="/logout"></c:url>">로그아웃</a><br>
	<a href="<c:url value="/boardList"></c:url>">게시판 리스트</a><br>
	<a href="<c:url value="/index"></c:url>">새로운 집</a><br>
</c:if>

<!-- 관리자 전용 me_auth == 2 이상 -->
<c:if test="${user.me_auth == 2}">
<a href="<c:url value="/boardInsert"></c:url>">글쓰기</a> <br>
<a href="<c:url value="/information"></c:url>">회원정보</a><br>
</c:if>

</body>
</html>

