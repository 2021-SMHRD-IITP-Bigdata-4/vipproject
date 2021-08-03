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
<!-- Ÿ�� -->
<form action="BoardWriteService" method="post" enctype="multipart/form-data">
  	<div class="form-group">
	  <label for="exampleSelect1" class="form-label mt-4">Type</label>
      <select class="form-select" id="exampleSelect1" name = "post_sort">
        <option value = "������">������</option>
        <option value = "������å">������å</option>
        <option value = "���ݽü�">���ݽü�</option>
        <option value = "��ǰ">��ǰ</option>
        <option value = "����">����</option>        
      </select>
    </div>
    
<!-- ���� -->
	<div class="form-group">
  		<label class="col-form-label mt-4" for="inputDefault">Title</label>
  		<input type="text" class="form-control" placeholder="Title" id="inputDefault" name = "post_title">
	</div>
	
<!-- ���� -->
	<div class="form-group">
      <label for="exampleTextarea" class="form-label mt-4">content</label>
      <textarea class="form-control" id="exampleTextarea" rows="3" name = "post_memo"></textarea>
    </div>
    
<!-- ����÷�� -->    
    <div class="form-group">
      <label for="formFile" class="form-label mt-4">Photo</label>
      <input class="form-control" type="file" id="formFile" name = "post_photo">
    </div>
    
<!-- �ۼ� -->
	<input type="submit" class="btn btn-outline-dark" value = "�ۼ��ϱ�">
	<a href = "boardMain.jsp"><button class="btn btn-outline-dark">���</button></a>
</form>
</body>
</html>