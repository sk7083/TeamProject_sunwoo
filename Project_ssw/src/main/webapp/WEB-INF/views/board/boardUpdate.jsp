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
</style>
</head>
<body>

<div class="container">
	<form action="<c:url value="/boardUpdate?bo_pid=${Detail.bo_pid}"></c:url>" method="post">
		<div class="row">
		   <div class="col-25">
		      <label for="fname">게시글 번호</label>
		    </div>
		    <div class="col-75">
		      <input type="text" name="bo_pid" value="${Detail.bo_pid}" disabled> 
		    </div>
		</div>
		  
		  <div class="row">
		    <div class="col-25">
		      <label for="fname">제목</label>
		    </div>
		    <div class="col-75">
		      <input type="text" name="bo_title" value="${Detail.bo_title}"> 
		    </div>
		  </div>

		  <div class="row">
		    <div class="col-25">
		      <label for="subject">내용</label>
		    </div>
		    <div class="col-75">
				<input type="text" name="bo_content" value="${Detail.bo_content}"> 
		    </div>
		  </div>
		  
  		  <div class="row">
		    <div class="col-25">
		      <label for="subject">작성자</label>
		    </div>
		    <div class="col-75">
				<input type="text" name="bo_writer" value="${Detail.bo_writer}" disabled> 
		    </div>
		  </div>
		  
   		  <div class="row">
		    <div class="col-25">
		      <label for="subject">작성 날짜</label>
		    </div>
		    <div class="col-75">
				<input type="text" name="bo_created" value="${Detail.bo_created}" disabled> 
		    </div>
		  </div>
	  


		
		<div class="form-group mt-3">
			<label>첨부파일:</label>
			<input type="file" class="form-control" name="files">
			<input type="file" class="form-control" name="files">
			<input type="file" class="form-control" name="files">
		</div>
		
		<c:if test="${user.me_auth == 2 || user.me_auth == 1}">
			<button type="submit" class="btn btn-outline-primary" style="float: left; margin-top : 20px">수정완료</button>
		</c:if>
	</form>
			<button class="btn btn-outline-danger" name="cancle"
					onclick="cancle();" style="margin-left : 20px; margin-top : 20px">취소</button>
</div>
</body>
</html>

<script type="text/javascript">
function cancle(){
    location.href = "boardList";
}
</script>

