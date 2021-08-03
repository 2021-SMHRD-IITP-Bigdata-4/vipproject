<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
	#exampleSelect1{
		width : 20%;
	}	
</style>
<body>
<!-- 타입 -->
<form action="BoardWriteService" method="post" enctype="multipart/form-data">
  	<div class="form-group">
	  <label for="exampleSelect1" class="form-label mt-4">Type</label>
      <select class="form-select" id="exampleSelect1" name = "post_sort">
        <option value = "강아지">강아지</option>
        <option value = "법과정책">법과정책</option>
        <option value = "동반시설">동반시설</option>
        <option value = "용품">용품</option>
        <option value = "자유">자유</option>        
      </select>
    </div>
    
<!-- 제목 -->
	<div class="form-group">
  		<label class="col-form-label mt-4" for="inputDefault">Title</label>
  		<input type="text" class="form-control" placeholder="Title" id="inputDefault" name = "post_title">
	</div>
	
<!-- 내용 -->
	<div class="form-group">
      <label for="exampleTextarea" class="form-label mt-4">content</label>
      <textarea class="form-control" id="exampleTextarea" rows="3" name = "post_memo"></textarea>
    </div>
    
<!-- 파일첨부 -->    
    <div class="form-group">
      <label for="formFile" class="form-label mt-4">Photo</label>
      <input class="form-control" type="file" id="formFile" name = "post_photo">
    </div>
    
<!-- 작성 -->
	<input type="submit" class="btn btn-outline-dark" value = "작성하기">
	<a href = "boardMain.jsp"><button class="btn btn-outline-dark">취소</button></a>
</form>
</body>
</html>