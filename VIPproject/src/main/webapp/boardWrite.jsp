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
  	<div class="form-group">
	  <label for="exampleSelect1" class="form-label mt-4">Type</label>
      <select class="form-select" id="exampleSelect1">
        <option>1</option>
        <option>2</option>
        <option>3</option>
        <option>4</option>
        <option>5</option>
      </select>
    </div>
<!-- 제목 -->
	<div class="form-group">
  		<label class="col-form-label mt-4" for="inputDefault">Title</label>
  		<input type="text" class="form-control" placeholder="Title" id="inputDefault">
	</div>
<!-- 내용 -->
	<div class="form-group">
      <label for="exampleTextarea" class="form-label mt-4"></label>
      <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
    </div>
<!-- 파일첨부 -->    
    <div class="form-group">
      <label for="formFile" class="form-label mt-4">Photo</label>
      <input class="form-control" type="file" id="formFile">
    </div>
<!-- 작성 -->
<button type="button" class="btn btn-outline-dark">작성하기</button>
	
</body>
</html>