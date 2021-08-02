<%@page import="Model.CommunityDAO"%>
<%@page import="Model.CommunityDTO"%>
<%@page import="java.util.ArrayList"%>
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
	.form-control.me-sm-2{
		width : 20%;
	}
	
</style>
<body>

	<% 
	CommunityDAO dao = new CommunityDAO();
	ArrayList<CommunityDTO> list = dao.selectAll(); 
	%>
<h4>자유 게시판</h4>
  <div class="form-group">
      <!-- 타입 선택 -->
      <label for="exampleSelect1" class="form-label mt-4">Type</label>
      <select class="form-select" id="exampleSelect1">
        <option>강아지</option>
        <option>법과정책</option>
        <option>동반시설</option>
        <option>용품</option>
        <option>자유</option>
      </select>
      
      <!-- 추천글, 북마크 -->
      
      <button type="button" class="btn btn-outline-primary">Super</button>
      <button type="button" class="btn btn-outline-success">10 Likes</button>
      <button type="button" class="btn btn-outline-warning">Bookmark</button>     
    </div>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Type</th>
      <th scope="col">Title</th>
      <th scope="col">Writer</th>
      <th scope="col">Date</th>
      <th scope="col">View</th>
      <th scope="col">Like</th>      
    </tr>
  </thead>
  <tbody>
     <% if (list != null){ %>
     	<% for (int i = 0; i <list.size(); i++){ %>  
     <tr>
      <th scope="row"><%= list.get(i).getPost_sort() %></th>
      <td><a href = "boardView.jsp?post_num=<%=list.get(i).getPost_num()%>"><%= list.get(i).getPost_title()%></a></td>
      <td><%= list.get(i).getDisplay_name()%></td>
      <td><%= list.get(i).getPost_date()%></td>
      <td>댓글 수</td>
      <td>좋아요 수</td>      
    </tr>
     <%} }%>
   </tbody>
</table>

<!-- 홈, 글쓰기 -->
<a href = "index.jsp"><button type="button" class="btn btn-outline-dark">Home</button></a>
<a href = "boardWrite.jsp"><button type="button" class="btn btn-dark">Write</button></a>

<!-- 페이징 -->
<div>
  <ul class="pagination">
    <li class="page-item disabled">
      <a class="page-link" href="#">&laquo;</a>
    </li>
    <li class="page-item active">
      <a class="page-link" href="#">1</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">2</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">3</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">4</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">5</a>
    </li>
    <li class="page-item">
      <a class="page-link" href="#">&raquo;</a>
    </li>
  </ul>
</div>

<!-- 검색창 -->
   <form class="d-flex">
        <input class="form-control me-sm-2" type="text" placeholder="Search">
        <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
   </form>
      
	
</body>
</html>