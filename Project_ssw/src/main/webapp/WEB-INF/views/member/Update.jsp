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
</style>
</head>
<body>

<div class="container">
	<form action="<c:url value="/Update?me_id=${Detail.me_id}"></c:url>" method="post">
	
		  <div class="row">
		    <div class="col-25">
		      <label for="fname">아이디</label>
		    </div>
		    <div class="col-75">
		      <input type="text" name="me_id" value="${Detail.me_id}" class="wer" disabled> 
		    </div>
		  </div>
		  
  		  <div class="row">
		    <div class="col-25">
		      <label for="fname">비밀번호</label>
		    </div>
		    <div class="col-75">
		      <input type="text" name="me_pw" value="${Detail.me_pw}" class="wer"> 
		    </div>
		  </div>
		  
  		  <div class="row">
		    <div class="col-25">
		      <label for="fname">이름</label>
		    </div>
		    <div class="col-75">
		      <input type="text" name="me_name" value="${Detail.me_name}" class="wer"> 
		    </div>
		  </div>
		  
  		  <div class="row">
		    <div class="col-25">
		      <label for="fname">이메일</label>
		    </div>
		    <div class="col-75">
		      <input type="text" name="me_email" value="${Detail.me_email}" class="wer"> 
		    </div>
		  </div>
		  
		<c:if test="${Detail.me_auth == 2}">
  		  <div class="row">
		    <div class="col-25">
		      <label for="fname">권한</label>
		    </div>
		    <div class="col-75">
		      <input type="text" name="me_auth" value="${Detail.me_auth}" class="wer"> 
		    </div>
		  </div>
		</c:if>
		  
  		  <div class="row">
		    <div class="col-25">
		      <label for="fname">번호</label>
		    </div>
		    <div class="col-75">
		      <input type="text" name="me_phone" value="${Detail.me_phone}" class="wer" placeholder="010-1234-5678"> 
		    </div>
		  </div>
		  
  		  <div class="row">
		    <div class="col-25">
		      <label for="fname">주소</label>
		    </div>
		    <div class="col-75">
		      <input type="text" name="me_address" value="${Detail.me_address}" class="wer"> 
		    </div>
		  </div>
		  
  		  <div class="row">
		    <div class="col-25">
		      <label for="fname">생년월일</label>
		    </div>
		    <div class="col-75">
		      <input type="text" name="me_birth" value="${Detail.me_birth}" class="wer" placeholder="2000-01-01"> 
		    </div>
		  </div>


		<button type="submit" class="btn btn-outline-primary" style="float: left; margin-top : 20px">수d정완료</button>

	</form>
		<button class="btn btn-outline-danger" name="cancle"
				onclick="cancle();" style="margin-left : 20px; margin-top : 20px">취소</button>
</div>
</body>
</html>

<script type="text/javascript">

function cancle(){
    location.href = "information";
}
</script>

