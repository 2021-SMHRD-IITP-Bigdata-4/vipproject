<%@page import="java.lang.reflect.Array"%>
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
<html lang="en">

<head>
    <title>boardMain</title>
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
    		margin : 5px;
    	}
    	.row.text-center.pt-5.pb-3{
    		    padding-top: 1rem!important;
    	}
    	.form-login{
    			padding-bottom : 3rem!important;	
    	}

		.form-control.me-sm-2{
			width : 70%;
		}
		#search-type{
			width : 30%;
		}
		.post-title{
			font-size:12px;
		}
		.post-Atag{
			font-size:14px!important;
		}
		.post-sort{
			font-size:13px;
		}
		.post-comment{
			font-size:14px;
		}
		.btn.btn-outline-dark{
			font-size:14px;
		}
		.btn.btn-dark{
			font-size:14px;
		}
		.page-link{
			font-size:14px!important;
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
.likeLike{
	font-weight: bold;
}
#search-type{
	height : 100%;
}
.form-control{
	height : 100%;
}
.my-2{
    margin-top: 0rem!important;
    margin-bottom: 0rem!important;
}
.btn-secondary {
    height: 36px;
}
.btn.btn-dark{
	margin-bottom : 3px;
}
.btn.btn-outline-dark{
	margin-bottom : 3px;
}
		
    </style>
<!--
    
TemplateMo 559 Zay Shop

https://templatemo.com/tm-559-zay-shop

-->
</head>


<body>
	
	<%
		BoardDAO dao = new BoardDAO();
		VipMemberDTO info = (VipMemberDTO)session.getAttribute("info");
		
		int pageNum = 1;
		if(request.getParameter("pageNum") != null) {
		pageNum = Integer.parseInt(request.getParameter("pageNum"));		
		}
		int countList = 15;
		int countPage = 10;
		int totalCount = dao.totalCount(); 
		BoardPage bp = new BoardPage(totalCount,countList,countPage,pageNum);
		bp.pagingCount();
		
		ArrayList<BoardDTO> list = dao.pagingBoard(pageNum, countList);
				
		String searchType = request.getParameter("searchType");
		String searchKey = request.getParameter("searchKey");
		if (searchType != null && searchKey != null){			
			list = dao.searchBoard(pageNum, countList, searchType, searchKey);
		}
							
		CommentDAO cDao = new CommentDAO();
		LikeDAO lDao = new LikeDAO();
		
		
	%>
	
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
                            <a class="nav-link" href="shop.jsp">반려견 캘린더</a>
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
       <h4>자유 게시판</h4>
      <!-- 타입 선택 -->
  <div class="form-group">
      <label for="exampleSelect1" class="form-label mt-4">Type</label>
      <select class="form-select" id="typeSelectBox" name = "post_sort">
        <option value = "전체">전체</option>
        <option value = "강아지">강아지</option>
        <option value = "법과정책">법과정책</option>
        <option value = "동반시설">동반시설</option>
        <option value = "용품">용품</option>
        <option value = "자유">자유</option> 
      </select>  
    </div>
    
 <!-- 베스트 게시글 -->
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col" class = "post-title">Type</th>
      <th scope="col" class = "post-title">Title</th>
      <th scope="col" class = "post-title">Comment</th> 
    </tr>
  </thead>
  <tbody>
  <tr class="table-success">
      <th scope="row" class = "post-sort" style ="width:20%;">BEST</th>
      <td class = "post-title"><a href = "#" class = "post-Atag">사다리타기 알고리즘 공개좀</a><br><br>발표맨<br><span class = "likeLike">좋아요 11</span><br></td>
      <td class = "post-comment">17</td>
  </tr>
  <tr class="table-success">
      <th scope="row" class = "post-sort">BEST</th>
      <td class = "post-title"><a href = "#" class = "post-Atag">내가 태연 팬은 아닌데, 태연 노래 좋더라</a><br><br>태연조하<br><span class = "likeLike">좋아요 43</span><br></td>
      <td class = "post-comment">45</td>
  </tr>
  <tr class="table-success">
      <th scope="row" class = "post-sort">BEST</th>
      <td class = "post-title"><a href = "#" class = "post-Atag">여기에 정치글 좀 올리지 마라</a><br><br>허경영<br><span class = "likeLike">좋아요29</span></td>
      <td class = "post-comment">105</td>
  </tr>
  </tbody>
</table>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col" class = "post-title">Type</th>
      <th scope="col" class = "post-title">Title</th>
      <th scope="col" class = "post-title">Comment</th>      
    </tr>
  </thead>
  <tbody id = "boardList">
     <% if (list != null){ %>
     	<% for (int i = 0; i <list.size(); i++){ %>  
     <tr>
      <th scope="row" id = "post_sort" class = "post-sort" style ="width:20%;"><%= list.get(i).getPost_sort() %></th>
      <td class = "post-title"><a href = "boardView.jsp?post_num=<%=list.get(i).getPost_num()%>" class = "post-Atag"><%= list.get(i).getPost_title()%></a><br><br>
      <%= list.get(i).getDisplay_name()%><br>좋아요 <span><%= lDao.countLike(list.get(i).getPost_num()) %></span><br><%= list.get(i).getPost_date()%></td>
      <td class = "post-comment"><%= cDao.countComment(list.get(i).getPost_num()) %></td>
    </tr>
     <%} }%>
   </tbody>
</table>

<!-- 홈, 글쓰기 -->
<a href = "index.jsp"><button type="button" class="btn btn-outline-dark">홈</button></a>
<%if (info != null){ %>
	<a href = "boardWrite.jsp"><button type="button" class="btn btn-dark">글쓰기</button></a>
<%} %>

<!-- 페이징 -->
<div>
  <ul class="pagination">
    <%if(bp.getStartPage() > 1) {  %>
    <li class="page-item">
      <a class="page-link" href="BoardPaging?pageNum=1">처음</a>
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
      <a class="page-link" href="BoardPaging?pageNum=<%=bp.getTotalPage()%>">끝</a>
    </li>
    <%} %>
  </ul>
</div>

<!-- 검색창 -->
   <form class="d-flex" action = "./boardMain.jsp" method = "get">
   	  <select class="form-select" id="search-type" name = "searchType">
        <option value = "post_title" class = "post-search-type">제목</option>
        <option value = "post_memo" class = "post-search-type" >내용</option>
        <option value = "display_name" class = "post-search-type">닉네임</option>
      </select> 
        <input class="form-control me-sm-2" type="text" placeholder="Search" name = "searchKey">
        <input class="btn btn-secondary my-2 my-sm-0" type="submit" value = "검색">
   </form>
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
	$('#typeSelectBox').on('change', function(){
		let post_type = $(this).val();
		/* console.log(post_type); */
		$.ajax({
			url:'BoardCategoryService',
			type: 'post',
			data:{post_type : post_type},
			dataType:'json',
			success: function(result){
				let html = "";
				if(result.length > 0){
					for (let i = 0; i < result.length;i++){
						html += "<tr>";
						html += "<th scope='row' id = 'post_sort'>"+result[i].post_sort+"</th>";
						html += "<td><a href = 'boardView.jsp?post_num="+ result[i].post_num +"'>"+result[i].post_title+"</a></td>";
						html += "<td>"+result[i].display_name+"</td>";
						html += "<td>"+result[i].post_date+"</td>";
						html += "<td>댓글</td>"
						html += "<td>좋아요</td>"
						html += "</tr>";
					
					}
		    
					/* alert("전송 성공"); */					
				}
				
				$('#boardList').html(html);			
			},
			error:function(){
				alert("전송 실패");	
			}			
		})			
		
	})
	</script>
    <!-- End Script -->
</body>

</html>
