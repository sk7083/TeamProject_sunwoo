<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
	<head>
		<title>파일 업로드 폼</title>
	</head>
	<body>
		<h3>파일 업로드</h3>
		
		<form action="<c:url value="/fileUploadForm"></c:url>" method="post" enctype="multipart/form-data">
			파일 : <input type="file" id="uploadFile" name="file">		
			<input type="submit" value="업로드">
		</form>
		
		<!-- 
		
		<h3>여러 개의 파일 업로드</h3>
		<form id="fileUploadFormMulti" method="post" 
			action="<c:url value='/fileUploadMultiple'/>" 
								enctype="multipart/form-data">
			파일 : <input type="file" id="uploadFileMulti" name="uploadFileMulti" 					   																		multiple="multiple">
			<input type="submit" value="업로드">
		</form>
		
		<h3>파일명 변경하지 않고 파일 업로드</h3>
		<form id="fileOriginNameUploadForm" method="post" 
			action="<c:url value='/fileOriginNameUpload'/>"
				enctype="multipart/form-data">
			파일 : <input type="file" id="uploadFile" name="uploadFile">		
			<input type="submit" value="업로드">
		</form>
		
		 -->

	</body>
</html>
