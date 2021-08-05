<%@page import="Model.BoardDAO"%>
<%@page import="Model.BoardDTO"%>
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
	<%
	String post_num = request.getParameter("post_num");
		BoardDAO dao = new BoardDAO();
		BoardDTO dto = dao.selectOne(post_num);
	%>
<!-- Ÿ�� -->
<form action="BoardUpdateService?post_num=<%=post_num%>" method="post" enctype="multipart/form-data">
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
  		<input type="text" class="form-control" placeholder="Title" id="inputDefault" name = "post_title" value = "<%= dto.getPost_title() %>">
	</div>
	
<!-- ���� -->
	<div class="form-group">
      <label for="exampleTextarea" class="form-label mt-4">content</label>
      <textarea class="form-control" id="exampleTextarea" rows="3" name = "post_memo" ><%= dto.getPost_memo() %></textarea>
    </div>
    
<!-- ����÷�� -->    
    <div class="form-group">
      <label for="formFile" class="form-label mt-4">Photo</label>
      <input class="form-control" type="file" id="formFile" name = "post_photo">
    </div>
    
<!-- �ۼ� -->
	<input type="submit" class="btn btn-outline-dark" value = "�ۼ��ϱ�">
	<a href = "boardMain.jsp"><button class="btn btn-outline-dark">���</button></a>
	
	<script src = "js/jquery-3.6.0.min.js"></script>
	<script>
		$("#exampleSelect1").val("<%= dto.getPost_sort()%>").prop("selected", true);
	</script>
</form>
</body>
</html>