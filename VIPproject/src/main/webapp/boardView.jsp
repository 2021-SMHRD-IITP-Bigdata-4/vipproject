<%@page import="Model.LikeDAO"%>
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
	
	LikeDAO ldao = new LikeDAO();
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
      <th scope="col">���ƿ� <span class = "likeCnt"><%= ldao.countLike(Integer.parseInt(post_num)) %></span></th>
      <th scope="col">��� <span class = "commentCnt"></span></th>
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
	<button type="button" class="btn btn-outline-success" id = "likeButton">���ƿ� <span class = "likeCnt"><%= ldao.countLike(Integer.parseInt(post_num)) %></span></button>
	<button type="button" class="btn btn-outline-danger" id = "hateButton">�Ⱦ�� <span class = "hateCnt"><%= ldao.countHate(Integer.parseInt(post_num)) %></span></button>	
</div>

<!-- ��� ��� -->
<div class="form-group">
  <label for="exampleTextarea" class="form-label mt-4">��� (<span class = "commentCnt"></span>)</label>
	<table class="table table-hover" >
	  	<tbody id = "commentList">
			<tr>
  	  		  <th>writer</th>
	  		  <td colspan = "2">content</td>
			</tr>
	  </tbody>
	</table>
  <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
  <button type="button" class="btn btn-success">��� ���</button>
</div>

<!-- ���, �۾��� -->
<a href = "boardMain.jsp"><button type="button" class="btn btn-outline-dark">���</button></a>
<% if (info != null){ %>
<a href = "boardWrite.jsp"><button type="button" class="btn btn-dark">�۾���</button></a>
 <%} %>

<script src = "js/jquery-3.6.0.min.js"></script>
<script>
// ���ƿ� 
$('#likeButton').on('click', function(){
	$.ajax({
		url: 'BoardLikeAddService',
		type: 'post',
		dataType:'json',
		data : {
			post_num : <%=post_num%>,
			like : 1,
			hate : 0
		},
		success : function(result){
			if(result>0){
				alert('�� ���� �����մϴ�');
				$('.likeCnt').html(<%= ldao.countLike(Integer.parseInt(post_num)) %> + 1)
			} else {
				alert('�̹� ��õ/����õ�� �Խù��Դϴ�');
			}
		},
		error : function(){
			alert('�α����� �Ͻ� �� �̿��� �ֽñ� �ٶ��ϴ�');
		}
		
	})
	
});
// �Ⱦ��
$('#hateButton').on('click', function(){
	$.ajax({
		url: 'BoardLikeAddService',
		type: 'post',
		dataType:'json',
		data : {
			post_num : <%=post_num%>,
			like : 0,
			hate : 1
		},
		success : function(result){
			if(result>0){
				alert('�� ���� �Ⱦ��մϴ�');
				$('.hateCnt').html(<%= ldao.countHate(Integer.parseInt(post_num)) %> + 1)
			} else {
				alert('�̹� ��õ/����õ�� �Խù��Դϴ�');
			}
		},
		error : function(){
			alert('�α����� �Ͻ� �� �̿��� �ֽñ� �ٶ��ϴ�');
		}
		
	})
	
});

// ��� �ۼ�
$('.btn.btn-success').on('click',function(){
	let comment = $('#exampleTextarea').val();
	$.ajax({
		url: 'CommentAddService',
		type: 'post',
		dataType : 'json',
		data: {
			comment : comment,
			post_num : <%= post_num %>
			},
		success: function(result){
			if (result > 0){
				getCommentList();
				$('#exampleTextarea').val("");
				alert("��� ����");
			}
		},
		error: function(){
			alert("�α����� �Ͻ� �� �̿��� �ֽñ� �ٶ��ϴ�");
		}
	})
});
	
// ������ �ε� �� ��� �ҷ�����
$(document).ready(function(){ 
	getCommentList();
});
	
// ��� �ҷ����� 
function getCommentList(){
	let comment = $('#exampleTextarea').val();	
	$.ajax({
		url: 'CommentListService',
		type: 'get',
		dataType : 'json',
		data: {
			comment : comment,
			post_num : <%= post_num %>
			},
		success: function(result){
			let html = "";
			let commentCnt = result.length;
			
			if (result.length > 0){
				for (let i = 0; i<result.length; i++){
					html += "<tr>";
					html += "<th>"+result[i].display_name+"</th>";
					html += "<td>"+result[i].reply_memo+"</td>";
					html += "</tr>";
				}
			} else {
					html += "<tr>";
					html += "<td>��ϵ� ����� �����ϴ�.</td>";
					html += "</tr>";				
			}
			
			$(".commentCnt").html(commentCnt);
			$("#commentList").html(html); 
		},
		
		error: function(){
			alert("error");
		}
		
	})
	
}


</script>

</body>
</html>