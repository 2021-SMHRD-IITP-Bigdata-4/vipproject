<%@page import="Model.LikeDAO"%>
<%@page import="Model.CommentDAO"%>
<%@page import="Model.BoardPage"%>
<%@page import="Model.VipMemberDTO"%>
<%@page import="Model.BoardDAO"%>
<%@page import="Model.BoardDTO"%>
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
		BoardDAO dao = new BoardDAO();
		VipMemberDTO info = (VipMemberDTO)session.getAttribute("info");
		
		int pageNum = 1;
		if(request.getParameter("pageNum") != null) {
		pageNum = Integer.parseInt(request.getParameter("pageNum"));		
		}
		int countList = 20;
		int countPage = 10;
		int totalCount = dao.totalCount(); 	
		BoardPage bp = new BoardPage(totalCount,countList,countPage,pageNum);
		bp.pagingCount();	
		
		ArrayList<BoardDTO> list = dao.pagingBoard(pageNum, countList);
		
		CommentDAO cDao = new CommentDAO();
		LikeDAO lDao = new LikeDAO();
	%>
	
<h4>���� �Խ���</h4>
  <div class="form-group">
      <!-- Ÿ�� ���� -->
      <label for="exampleSelect1" class="form-label mt-4">Type</label>
      <select class="form-select" id="exampleSelect1" name = "post_sort">
        <option value = "��ü">��ü</option>
        <option value = "������">������</option>
        <option value = "������å">������å</option>
        <option value = "���ݽü�">���ݽü�</option>
        <option value = "��ǰ">��ǰ</option>
        <option value = "����">����</option> 
      </select>
      
      <!-- ��õ��, �ϸ�ũ -->
      
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
      <th scope="row" id = "post_sort"><%= list.get(i).getPost_sort() %></th>
      <td><a href = "boardView.jsp?post_num=<%=list.get(i).getPost_num()%>"><%= list.get(i).getPost_title()%></a></td>
      <td><%= list.get(i).getDisplay_name()%></td>
      <td><%= list.get(i).getPost_date()%></td>
      <td>��� <%= cDao.countComment(list.get(i).getPost_num()) %></td>
      <td>���ƿ� <%= lDao.countLike(list.get(i).getPost_num()) %></td>      
    </tr>
     <%} }%>
   </tbody>
</table>

<!-- Ȩ, �۾��� -->
<a href = "index.jsp"><button type="button" class="btn btn-outline-dark">Home</button></a>
<%if (info != null){ %>
	<a href = "boardWrite.jsp"><button type="button" class="btn btn-dark">Write</button></a>
<%} %>

<!-- ����¡ -->
<div>
  <ul class="pagination">
    <%if(bp.getStartPage() > 1) {  %>
    <li class="page-item">
      <a class="page-link" href="BoardPaging?pageNum=1">ó��</a>
    </li>
    <%} %>
    <%if(bp.getNowPage() > 1) { %>
    <li class="page-item">
      <a class="page-link" href="BoardPaging?pageNum=<%=bp.getNowPage()-1%>">&laquo;</a>
    </li>
    <%}%>
    <% for (int i = bp.getStartPage(); i <= bp.getEndPage() ; i++) {
		if (i == bp.getNowPage()) { %>
    <li class="page-item active">
      <b class="page-link"><%=i%></b>      
    </li>
    <%} else { %>
    <li class="page-item">
      <a class="page-link" href="BoardPaging?pageNum=<%=i%>"><%=i%></a>
    </li>
    <%	}	} %>
    <% if (bp.getNowPage() < bp.getTotalPage()) { %>
    <li class="page-item">
      <a class="page-link" href="BoardPaging?pageNum=<%=bp.getNowPage()+1%>">&raquo;</a>
    </li>
    <%} %>
    <%if (bp.getEndPage() < bp.getTotalPage()) { %>
    <li class="page-item">
      <a class="page-link" href="BoardPaging?pageNum=<%=bp.getTotalPage()%>">��</a>
    </li>
    <%} %>
  </ul>
</div>

<!-- �˻�â -->
   <form class="d-flex">
        <input class="form-control me-sm-2" type="text" placeholder="Search">
        <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
   </form>
 

</body>
</html>