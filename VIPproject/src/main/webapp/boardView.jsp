<%@page import="Model.LikeDAO"%>
<%@page import="Model.VipMemberDTO"%>
<%@page import="Model.BoardDTO"%>
<%@page import="Model.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>boardView</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
    
    
    <style>
    	.btn-success{
    		margin-top: 1.5rem!important;
    		margin-bottom : 3px;
    	}
    	.row.text-center.pt-5.pb-3{
    		    padding-top: 1rem!important;
    	}
    	.form-login{
    			padding-bottom : 3rem!important;	
    	}
    	.post-index{
    		font-size : 10px!important;
    	}
    	#commentList{
    		font-size : 13px;
    	}
    	.commentCntCase{
    		font-size : 13px;
    	}
    	#commentCntCase{
    		font-size : 13px;
    	}
    	.commentCnt{
    		font-size : 11px;			
    	}
    	.post-sort-title{
    		width : 20;
    	}
    	#likeButton{
    		font-size : 13px;
    	}
    	#hateButton{
    		font-size : 13px;
    	}
    	.post-memo{
    		font-size : 13px;
    	}
		.btn.btn-success{
			font-size : 15px;
		}
		#board-list-go{
			font-size : 14px;
		}
		#board-write-go{
			font-size : 14px;
		}
.p-text{
	margin-top: 25px;
	text-aline:center;
	padding-bottom: 1rem;
}
.ptag1{
	padding-bottom: 1rem;
	text-aline:center;
}
.ptag2{
	margin-top: 25px;
	padding-bottom: 1rem;
	text-aline:center;
}
.con{
	padding-bottom: 3rem!important; 
	width: 100%;
    padding-right: var(--bs-gutter-x,.75rem);
    padding-left: var(--bs-gutter-x,.75rem);
    margin-right: auto;
    margin-left: auto;
}
.in{
	font-size: 19px;
	font-weight: bold;
}
.cate{
	font-size: 18px;
	font-weight: bold;
}
.img{
	width: 100%;
	height: 100%;
}
.categori{
	height: 260px;
}
.img-fluids{
	max-width: 100%;
    height: 200px;
}
.img-fluid1{
	max-width: 100%;
    height: 205px;
}
.text{
	font-size: 15px;
}

.address{
	font-size: 12px;
}
.copy{
	font-size: 12px;
}
    </style>
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
</head>

<%
    String post_num = request.getParameter("post_num");
	BoardDAO dao = new BoardDAO();
	BoardDTO dto = dao.selectOne(post_num);
	VipMemberDTO info = (VipMemberDTO)session.getAttribute("info");
	
	LikeDAO ldao = new LikeDAO();
%>


<body>
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">info@company.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->


    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="index.jsp">
                VIP
            </a>
            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
			
			
            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="about_dogInfo.jsp"><span>반려견 정보</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about_law.jsp">법과 정책</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about_rankOfProductByShop.jsp">애견용품순위</a>
                        </li>
                        <li class="nav-item">
                        <%if (info != null){  %>
                            <a class="nav-link" href="allMap.jsp">애견동반시설</a>
                            <%}else{ %>
                            <a class="nav-link" id="egun"href="login.jsp">애견동반시설</a>
                            <%} %>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="boardMain.jsp">커뮤니티</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="planList1.jsp">반려견 캘린더</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <%if (info != null){ %>                   
                    	<a href = "userUpdate.jsp">개인정보수정</a> <br>                  	
                    	<a href = "Logout">로그아웃</a>
                    <%} else {%>
                    <a class="nav-icon position-relative text-decoration-none" href="login.jsp">
                        <span>로그인</span><!--숫자표현  전체수정-->
                    </a>
                    <%}%>
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->

    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>



  
    <!-- Close Banner -->

    <!-- Start Section -->
    <section class="container py-5">
    <!-- 게시글 -->
<table class="table table-hover">
  <thead>
    <tr>
      <td scope="col" class ="post-sort-title" colspan = "3">[<%= dto.getPost_sort() %>] <%= dto.getPost_title()%></td>
    </tr>
    <tr>
      <td scope="col" class = "post-index"><%= dto.getDisplay_name()%><br><%= dto.getPost_date()%></td>
      <td scope="col" class = "post-index">좋아요&nbsp;<span class = "likeCnt"><%= ldao.countLike(Integer.parseInt(post_num)) %></span><br>댓글&nbsp;<span class = "commentCnt"></span></td>
      <% if (info != null && dto.getUser_id().equals(info.getUser_id())){ %> 
   	  	<td scope="col" class = "post-index"><a href = "boardUpdate.jsp?post_num=<%=dto.getPost_num()%>" class = "post-index">수정</a><br><a href = "BoardDeleteService?post_num=<%=dto.getPost_num()%>" class = "post-index">삭제</a></td>
      <%} else {%>
      	<td scope = "col" class = "post-index">수정 불가<br>삭제 불가</td>
      <%} %>
    </tr>
  </thead>
    <tbody>
     <tr>
      <td colspan = "6" class = "post-memo">
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
	<button type="button" class="btn btn-outline-success" id = "likeButton">좋아요 <span class = "likeCnt"><%= ldao.countLike(Integer.parseInt(post_num)) %></span></button>
	<button type="button" class="btn btn-outline-danger" id = "hateButton">싫어요 <span class = "hateCnt"><%= ldao.countHate(Integer.parseInt(post_num)) %></span></button>	
</div>

<!-- 댓글 기능 -->
<div class="form-group">
  <label for="exampleTextarea" class="form-label mt-4"><span class = "commentCntCase">댓글 (<span class = "commentCnt" id = "commentCntCase"></span>)</span></label>
	<table class="table table-hover" >
	  	<tbody id = "commentList">
			<tr>
  	  		  <th>writer</th>
	  		  <td colspan = "2">content</td>
			</tr>
	  </tbody>
	</table>
  <textarea class="form-control" id="exampleTextarea" rows="3"></textarea>
  <button type="button" class="btn btn-success">댓글 등록</button>
</div>

<!-- 목록, 글쓰기 -->
<a href = "boardMain.jsp"><button type="button" class="btn btn-outline-dark" id = "board-list-go">목록</button></a>
<% if (info != null){ %>
<a href = "boardWrite.jsp"><button type="button" class="btn btn-dark" id = "board-write-go">글쓰기</button></a>
 <%} %>
 
    </section>
    <!-- End Section -->

    <!-- Start Brands -->

    <!--End Brands-->


    <!-- Start Footer -->
    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo">VIP</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <span class="address">동구 예술길 31-15 스마트인재개발원</span><br>
                            <span class="address">대표자 : VIP</span><br>
                            <span class="address">사업자등록번호 : 000-00-00000</span><br>
                            <span class="address">개인정보관리책임자 : 정세연</span><br>
                            <span class="address">고객센터 : 062-655-3509</span><br>
                            <span class="address">이메일 : vip_korea@vip.com</span>
                        </li>
                    </ul>
                </div>
                
            </div>
            <div class="row text-light mb-4">
                <div class="col-12 mb-3">
                    <div class="w-100 my-3 border-top border-light"></div>
                </div>
                <div class="col-auto me-auto">
                    <ul class="list-inline text-left footer-icons">
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a rel="nofollow" class="text-light text-decoration-none" target="_blank"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="w-100 bg-black py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-12">
                        <p class="text-left text-light">
                            <span class="copy">Copyright &copy; 2021 V.I.P.
                            | Designed by VIP</span>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer -->

    <!-- Start Script -->
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
    <script src = "js/jquery-3.6.0.min.js"></script>
    <script>
 // 좋아요 
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
    				alert('이 글을 좋아합니다');
    				$('.likeCnt').html(<%= ldao.countLike(Integer.parseInt(post_num)) %> + 1)
    			} else {
    				alert('이미 추천/비추천한 게시물입니다');
    			}
    		},
    		error : function(){
    			alert('로그인을 하신 후 이용해 주시기 바랍니다');
    		}
    		
    	})
    	
    });
    // 싫어요
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
    				alert('이 글을 싫어합니다');
    				$('.hateCnt').html(<%= ldao.countHate(Integer.parseInt(post_num)) %> + 1)
    			} else {
    				alert('이미 추천/비추천한 게시물입니다');
    			}
    		},
    		error : function(){
    			alert('로그인을 하신 후 이용해 주시기 바랍니다');
    		}
    		
    	})
    	
    });

    // 댓글 작성
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
    				alert("등록 성공");
    			}
    		},
    		error: function(){
    			alert("로그인을 하신 후 이용해 주시기 바랍니다");
    		}
    	})
    });
    	
    // 페이지 로딩 시 댓글 불러오기
    $(document).ready(function(){ 
    	getCommentList();
    });
    	
    // 댓글 불러오기 
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
    					html += "<th style='width:30%;'>"+result[i].display_name+"</th>";
    					html += "<td style='width:70%;'>"+result[i].reply_memo+"</td>";
    					html += "</tr>";
    				}
    			} else {
    					html += "<tr>";
    					html += "<td>등록된 댓글이 없습니다.</td>";
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
    <!-- End Script -->
</body>

</html>