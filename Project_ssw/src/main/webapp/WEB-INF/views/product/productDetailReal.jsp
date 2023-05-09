<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link href="<c:url value='/resources/css/summernote-bs4.min.css'></c:url>" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
<script src="<c:url value='/resources/js/summernote-bs4.min.js'></c:url>"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row::after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}

.btn-update{
 	display: block;
    width: 60px;
    background: white;
    padding: 10px;
    text-align: center;
    border-radius: 5px;
    color: green;
    border: 1px solid green;
    font-weight: bold;
    line-height: auto;
    text-decoration: none;
 }
 
 .btn-update:hover{
   	text-decoration: none;
   	color: white;
   	background: green;
 }
 
 .btn-back{
 	display: block;
    width: 90px;
    background: white;
    padding: 10px;
    text-align: center;
    border-radius: 5px;
    color: blue;
    border: 1px solid blue;
    font-weight: bold;
    line-height: auto;
    text-decoration: none;
 }
 
 .btn-back:hover{
   	text-decoration: none;
   	color: white;
   	background: blue;
 }
</style>
</head>
<body>


			
			

<div class="container">
		  <div class="row">
		    <div class="col-25">
		      <label for="fname">상품 번호</label>
		    </div>
		    <div class="col-75">
		      <input type="text" name="pr_pid" value="${Detail.pr_pid}" class="wer" disabled> 
		    </div>
		  </div>
		  
		  <div class="row">
		    <div class="col-25">
		      <label for="subject">카테고리</label>
		    </div>
		    <div class="col-75">
				<input type="text" name="pr_ca_pid" value="${Detail.pr_ca_pid}" class="wer" disabled> 
		    </div>
		  </div>
		  
  		  <div class="row">
		    <div class="col-25">
		      <label for="fname">이름</label>
		    </div>
		    <div class="col-75">
		      <input type="text" name="pr_name" value="${Detail.pr_name}" class="wer" disabled> 
		    </div>
		  </div>
		  

		  <div class="row">
		    <div class="col-25">
		      <label for="subject">내용</label>
		    </div>
		    <div class="col-75">
				<input type="text" name="pr_content" value="${Detail.pr_content}" class="wer" disabled> 
		    </div>
		  </div>
		  
		  
	  
		  
	  
		  <div class="row">
		    <div class="col-25">
		      <label for="subject">입실 시간</label>
		    </div>
		    <div class="col-75">
				<input type="text" name="pr_in_time" value="${Detail.pr_in_time}" class="wer" disabled> 
		    </div>
		  </div>
		  
		  <div class="row">
		    <div class="col-25">
		      <label for="subject">퇴실 시간</label>
		    </div>
		    <div class="col-75">
				<input type="text" name="pr_out_time" value="${Detail.pr_out_time}" class="wer" disabled> 
		    </div>
		  </div> 
		  
		  <div class="row">
		    <div class="col-25">
		      <label for="subject">댓글</label>
		    </div>
		    <div class="col-75">
				<input type="text" name="re_pid" value="${Detail.re_pid}" class="wer" disabled> 
		    </div>
		  </div> 

		<div class="form-group mt-3">
			<label>첨부파일:</label>
			<input type="file" class="form-control" name="fi_pid">
			<input type="file" class="form-control" name="fi_pid">
			<input type="file" class="form-control" name="fi_pid">
		</div>
		
		<c:if test="${user.me_auth == 2}">
			<div class="row" style="float: left;">	
			<a href="<c:url value="/productUpdate?pr_pid=${Detail.pr_pid}"></c:url>" class="btn-update" style="margin-right: 30px">수정</a>
			</div>		
		</c:if>
		<div class="row">	
			<a href="<c:url value="/productList"></c:url>" class="btn-back">뒤로가기</a>
		</div>
</div>
</body>
</html>

<script type="text/javascript">

	
</script>

