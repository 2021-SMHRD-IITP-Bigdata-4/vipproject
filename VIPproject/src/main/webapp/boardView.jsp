<%@page import="Model.VipMemberDTO"%>
<%@page import="Model.BoardDTO"%>
<%@page import="Model.BoardDAO"%>
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
	BoardDAO dao = new BoardDAO();
	BoardDTO dto = dao.selectOne(post_num);
	VipMemberDTO info = (VipMemberDTO)session.getAttribute("info");
%>
<!-- �Խñ� -->
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col"><%= dto.getPost_sort() %></th>
      <th scope="col" colspan ="5"><%= dto.getPost_title()%></th>
    </tr>
    <tr>
      <th scope="col"><%= dto.getPost_date()%></th>
      <th scope="col"><%= dto.getDisplay_name()%></th>
      <% if (info != null && dto.getUser_id().equals(info.getUser_id())){ %> 
   	  	<th scope="col"><a href = "boardUpdate.jsp?post_num=<%=dto.getPost_num()%>">����</a></th>
     	<th scope="col"><a href = "BoardDeleteService?post_num=<%=dto.getPost_num()%>">����</a></th>
      <%} else {%>
      	<th scope = "col">���� �Ұ�</th>
      	<th scope = "col">���� �Ұ�</th>
      <%} %>
      <th scope="col">���ƿ� ��</th>
      <th scope="col">��� ��</th>
    </tr>
  </thead>
    <tbody>
     <tr>
      <td colspan = "6">
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
	<button type="button" class="btn btn-outline-success" id = "likeButton">���ƿ� <span>0</span></button>
	<button type="button" class="btn btn-outline-danger" id = "hateButton">�Ⱦ�� <span>0</span></button>	
</div>

<!-- ��� ��� -->
<table class="table table-hover" id = "commentList">
  <tbody>
	<tr>
  	  <th>writer</th>
	  <td colspan = "2">content</td>
	</tr>
  </tbody>
</table>
<div class="form-group">
  <label for="exampleTextarea" class="form-label mt-4">��� (<span id = "commentCnt"></span>)</label>
  <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
  <button type="button" class="btn btn-success">���</button>
</div>

<!-- ���, �۾��� -->
<a href = "boardMain.jsp"><button type="button" class="btn btn-outline-dark">���</button></a>
<% if (info != null){ %>
<a href = "boardWrite.jsp"><button type="button" class="btn btn-dark">�۾���</button></a>
 <%} %>



</body>
</html>