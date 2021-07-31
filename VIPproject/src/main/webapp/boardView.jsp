<%@page import="Model.CommunityDTO"%>
<%@page import="Model.CommunityDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<% 
	String post_num = request.getParameter("post_num");
	CommunityDAO dao = new CommunityDAO();
	CommunityDTO dto = dao.selectOne(post_num);
%>
<!-- �Խñ� -->
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col"><%= dto.getPost_sort() %></th>
      <th scope="col"><%= dto.getPost_title()%></th>
      <th scope="col"><%= dto.getDisplay_name()%></th>
    </tr>
    <tr>
      <th scope="col"><%= dto.getPost_date()%></th>
      <th scope="col">���ƿ� ��</th>
      <th scope="col">��� ��</th>
    </tr>
  </thead>
    <tbody>
     <tr>
      <td colspan = "3">
      	<% if (dto.getPost_photo() != null) {%>
      		<img src = "./img/<%=dto.getPost_photo()%>">
      	<%} %>
      	<%= dto.getPost_memo()%>
      </td>
    </tr>
    </tbody>
</table>
<!-- ��õ ��� -->
<div>
	<button type="button" class="btn btn-outline-success">���ƿ�</button>
	<button type="button" class="btn btn-outline-danger">�Ⱦ��</button>	
</div>

<!-- ��� ��� -->
<table class="table table-hover">
  <tbody>
	<tr>
	  <td colspan = "3">content</td>
	</tr>
  </tbody>
</table>
<div class="form-group">
  <label for="exampleTextarea" class="form-label mt-4">��� �ۼ�</label>
  <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
  <button type="button" class="btn btn-success">���</button>
</div>

<!-- ���, �۾��� -->
<a href = "boardMain.jsp"><button type="button" class="btn btn-outline-dark">���</button></a>
<a href = "boardWrite.jsp"><button type="button" class="btn btn-dark">�۾���</button></a>


</body>
</html>