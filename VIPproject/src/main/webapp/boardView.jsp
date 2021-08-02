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
<!-- 게시글 -->
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col"><%= dto.getPost_sort() %></th>
      <th scope="col"><%= dto.getPost_title()%></th>
      <th scope="col"><%= dto.getDisplay_name()%></th>
    </tr>
    <tr>
      <th scope="col"><%= dto.getPost_date()%></th>
      <th scope="col">좋아요 수</th>
      <th scope="col">댓글 수</th>
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
<!-- 추천 기능 -->
<div>
	<button type="button" class="btn btn-outline-success">좋아요</button>
	<button type="button" class="btn btn-outline-danger">싫어요</button>	
</div>

<!-- 댓글 기능 -->
<table class="table table-hover">
  <tbody>
	<tr>
	  <td colspan = "3">content</td>
	</tr>
  </tbody>
</table>
<div class="form-group">
  <label for="exampleTextarea" class="form-label mt-4">댓글 작성</label>
  <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
  <button type="button" class="btn btn-success">등록</button>
</div>

<!-- 목록, 글쓰기 -->
<a href = "boardMain.jsp"><button type="button" class="btn btn-outline-dark">목록</button></a>
<a href = "boardWrite.jsp"><button type="button" class="btn btn-dark">글쓰기</button></a>


</body>
</html>