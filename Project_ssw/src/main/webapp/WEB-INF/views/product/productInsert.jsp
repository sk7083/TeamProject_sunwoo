<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<title>product add</title>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
   
   <!--  jQuery, bootstrap -->
    <link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script>

    <!-- summernote css/js-->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
    <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script></head>

<div class="container">
<h1>product add</h1>

	<form action="<c:url value="/productInsert"></c:url>" method="post">
	
		<div class="form-group">
			<input type="text" class="form-control" id="categories-num" name="pr_ca_pid" placeholder="카테고리 선택">
		</div>
		
		<div class="form-group">
			<input type="text" class="form-control" id="title" name="pr_name" placeholder="제목을 입력하세요.">
		</div>
		
		<div id="common">
			<textarea class="summernote" name="pr_content" placeholder="내용을 입력하세요.">
			</textarea>
		</div>
		
		<div class="form-group">
			<input type="text" class="form-control" id="address" name="pr_address" placeholder="주소 입력">
		</div>		
		<div>
			<input type="text" class="form-control" id="address" name="pr_det_address" placeholder="상세주소 입력">
		</div>
		<div class="form-group">
			<input type="text" class="form-control" id="in_time" name="pr_in_time" placeholder="입실 시간대(09:00)">
		</div>	
		
		<div class="form-group">
			<input type="text" class="form-control" id="out_time" name="pr_out_time" placeholder="퇴실 시간대(17:00)">
		</div>	
		
		<button class="btn btn-outline-success" type="submit" style="float: left; margin-right : 20px; margin-top : 20px">상품 생성</button>

	</form>
	<button class="btn btn-outline-danger" name="BoardWriting"
		onclick="BoardWriting();" style="margin-top : 20px">취소</button>
		
</div>

<script type="text/javaScript">

$('.summernote').summernote({
	  height: 150,
	  lang: "ko-KR"
	});

function BoardWriting(){
    location.href = "/springTest";
}
</script>
</body>
</html>