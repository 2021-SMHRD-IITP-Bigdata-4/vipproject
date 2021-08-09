<%@page import="Model.VipMemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.DogInfoDTO"%>
<%@page import="Model.DogInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>�ݷ��� ���� > ������ Ư��</title>
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

	<style type="text/css">
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
	.btn.btn-dark{
		font-size: 12px!important;
		float: right;
	}
	.address{
		font-size: 12px;
	}
	.copy{
		font-size: 12px;
	}
	</style>
</head>
	
<body>

<!-- �� ��� �� ���������� �����ֱ� ���� ���� -->

<%
	DogInfoDAO dao = new DogInfoDAO();
	ArrayList<DogInfoDTO> list = dao.selectAll();
%>
<% 
      VipMemberDTO info = (VipMemberDTO)session.getAttribute("info"); 
   %>
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
                            <a class="nav-link" href="about_dogInfo.jsp"><span>�ݷ��� ����</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about_law.jsp">���� ��å</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about_rankOfProductByShop.jsp">�ְ߿�ǰ����</a>
                        </li>
                        <li class="nav-item">
                        <%if (info != null){  %>
                            <a class="nav-link" href="allMap.jsp">�ְߵ��ݽü�</a>
                            <%}else{ %>
                            <a class="nav-link" id="egun"href="login.jsp">�ְߵ��ݽü�</a>
                            <%} %>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="boardMain.jsp">Ŀ�´�Ƽ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="shop.jsp">�ݷ��� Ķ����</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <%if (info != null){ %>                   
                    	<a href = "userUpdate.jsp">������������</a> <br>                  	
                    	<a href = "Logout">�α׾ƿ�</a>
                    <%} else {%>
                    <a class="nav-icon position-relative text-decoration-none" href="login.jsp">
                        <span>�α���</span><!--����ǥ��  ��ü����-->
                    </a>
                    <%}%>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Header -->

    <!-- Start Content -->
    <div class="container py-5">
        <div class="row">
            
            <!-- ������ Ư¡ ����  -->
            <div class="col-lg-3">
                <ul class="list-unstyled templatemo-accordion">
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            ������ Ư¡
                            <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                        	
                        	<%for(int i = 0;i<list.size();i++){ %> 
                           	<li ><a class="text-decoration-none" id = "dogname" href="#tag_<%=i%>"><%=list.get(i).getT_type()%></a></li>
                            <%}%>
                            <li>
                            	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">�� ���� </a>
                            </li>
                        </ul>
                        
                        <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                            <li>	
                            	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">�� ���� </a>
                            	
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col-lg-9">
                <div class="row">
                    <div class="card mb-4 product-wap rounded-0">
                        <!-- �ϳ��� ������ ���� Ư���� ������ -->
                 		<%for(int i = 0;i<list.size();i++){ %> 
                        <br>
                        <br>
                        <br>
                        <div class="card-body" id = "tag_<%=i%>">
                        <div class="h1 text-success text-center"><img src="assets/img/dog/<%=i%>.jpg" alt="About Hero"></div>
                        	<!-- 1 -->
                       		<%=list.get(i).getT_type()%>
                       		<br><br>
                       		<!-- 2 --> 
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <p class="doginfo_left">������</p>
                            </ul>
                            	<p class="doginfo_left"><%=list.get(i).getT_origin()%></p>
                            <br>
                            <!-- 3 --> 	
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <p class="doginfo_left">����</p>
                            </ul>
                            	<p class="doginfo_left"><%=list.get(i).getT_personality()%></p>
                            <br>
                            <!-- 4 --> 	
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <p class="doginfo_left">ũ��</p>
                            </ul>
                            	<p class="doginfo_left"><%=list.get(i).getT_size()%></p>
                            <br>
                            <!-- weight -->
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <p class="doginfo_left">ũ��</p>
                            </ul>
                            	<p class="doginfo_left"><%=list.get(i).getT_weight()%></p>
                            <br>
                            <!-- ������ -->
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <p class="doginfo_left">������</p>
                            </ul>
                            	<p class="doginfo_left"><%=list.get(i).getT_disease()%></p>
                            <br>
                            <!-- ���Ѽ� -->
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <p class="doginfo_left">���Ѽ�</p>
                            </ul>
                            	<p class="doginfo_left"><%=list.get(i).getT_resistance()%></p>
                            <br>
                            <!-- ��� -->
                            <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                <p class="doginfo_left">���</p>
                            </ul>
                            	<p class="doginfo_left"><%=list.get(i).getT_workout()%></p>
                            <br>
				                <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">�� ���� </a>
                        </div>
                       	<%}%>
                    </div>
				</div>                   
            </div>
        </div>
    </div>
    <!-- End Content -->

     <!-- Start Footer -->
    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo">VIP</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <span class="address">���� ������ 31-15 ����Ʈ���簳�߿�</span><br>
                            <span class="address">��ǥ�� : VIP</span><br>
                            <span class="address">����ڵ�Ϲ�ȣ : 000-00-00000</span><br>
                            <span class="address">������������å���� : ������</span><br>
                            <span class="address">������ : 062-655-3509</span><br>
                            <span class="address">�̸��� : vip_korea@vip.com</span>
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
    <script type="text/javascript">
     $("#egun").on("click",function(){
    	 alert("�α����� �Ͻ� �� �̿��� �ֽñ� �ٶ��ϴ�")
     });
    </script>
    <!-- End Script -->
</body>

</html>