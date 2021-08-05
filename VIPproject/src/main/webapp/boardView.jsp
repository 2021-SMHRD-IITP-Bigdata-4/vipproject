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
<!-- 게시글 -->
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
   	  	<th scope="col"><a href = "boardUpdate.jsp?post_num=<%=dto.getPost_num()%>">수정</a></th>
     	<th scope="col"><a href = "BoardDeleteService?post_num=<%=dto.getPost_num()%>">삭제</a></th>
      <%} else {%>
      	<th scope = "col">수정 불가</th>
      	<th scope = "col">삭제 불가</th>
      <%} %>
      <th scope="col">좋아요 수</th>
      <th scope="col">댓글 수</th>
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
<!-- 추천 기능 -->
<div>
	<button type="button" class="btn btn-outline-success" id = "likeButton">좋아요 <span>0</span></button>
	<button type="button" class="btn btn-outline-danger" id = "hateButton">싫어요 <span>0</span></button>	
</div>

<!-- 댓글 기능 -->
<table class="table table-hover" id = "commentList">
  <tbody>
	<tr>
  	  <th>writer</th>
	  <td colspan = "2">content</td>
	</tr>
  </tbody>
</table>
<div class="form-group">
  <label for="exampleTextarea" class="form-label mt-4">댓글 (<span id = "commentCnt"></span>)</label>
  <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
  <button type="button" class="btn btn-success">등록</button>
</div>

<!-- 목록, 글쓰기 -->
<a href = "boardMain.jsp"><button type="button" class="btn btn-outline-dark">목록</button></a>
<% if (info != null){ %>
<a href = "boardWrite.jsp"><button type="button" class="btn btn-dark">글쓰기</button></a>
 <%} %>



</body>
</html>