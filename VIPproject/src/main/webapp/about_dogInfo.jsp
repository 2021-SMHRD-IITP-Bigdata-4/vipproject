<%@page import="Model.VipMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>VIP - Dog Information Page</title>
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

</head>

<body>

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
                            <a class="nav-link" href="about_dogInfo.jsp">�ݷ��� ����</a>
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
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    
                    <%if (info != null){ %>                   
                       <a href = "userUpdate.jsp">������������</a> <br>                     
                       <a href = "Logout">�α׾ƿ�</a>
                    <%} else {%>
                    <a class="nav-icon position-relative text-decoration-none" href="login.jsp">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span><!--����ǥ��  ��ü����-->
                    </a>
                    <%}%>
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->

    <section class="bg-success py-5">
        <div class="container">
            <div class="row align-items-center py-5">
                <div class="col-md-8 text-white">
                    <p>
                        ���� �⸣�� �ݷ����� � �����ϱ��?<br>
                        ��� �����ϰ� ��� �ູ�ұ��?<br>
                        �츮�� ���� �˾ư��°� �ʿ��ؿ�
                    </p>
                </div>
                <div class="col-md-4">
                    <img src="assets/img/dog/dogs-removebg-preview.png" alt="About Hero">
                </div>
            </div>
        </div>
    </section>
    <!-- Close Banner -->

    <!-- Start Section -->
    <section class="container py-5">
        <div class="row">
            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 py-5 services-icon-wap shadow">
                    <div class="h1 text-success text-center"><img src="assets/img/dog (1).png" alt="About Hero"><!-- <i class="fa fa-truck fa-lg"></i> --></div>
                    <h2 class="h5 mt-4 text-center">
                     <a href="doginfo_basic1.jsp">���� ���</a>
                     <p><br>������ ��ǰ ���� ����ü 
                     <br>�� �� �� �־��</p>
                    </h2>
                </div>
            </div>

            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 py-5 services-icon-wap shadow">
                    <div class="h1 text-success text-center"><img src="assets/img/dog (2).png" alt="About Hero"></div>
                    <h2 class="h5 mt-4 text-center">
                    	<a href="doginfo_basic2.jsp">�ǰ� ����</a>
                    	<p><br>�Ļ���� ������ȵǴ����� �ӽ����
                    	<br>���������� �Ʒ� ��������</p>
                    </h2>
                </div>
            </div>

            <div class="col-md-6 col-lg-3 pb-5">
                <div class="h-100 py-5 services-icon-wap shadow">
                    <div class="h1 text-success text-center"><img src="assets/img/dog (3).png" alt="About Hero"></div>
                    <h2 class="h5 mt-4 text-center">
                    	<a href="doginfo_basic3_type.jsp">������ Ư��</a>
                    	<p><br>�����̸����� Ư���� �˻��Ҽ� �־��</p>
                   	</h2>
                </div>
            </div>

        </div>
    </section>
    <!-- End Section -->

    <!-- Start Footer -->
    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo">V.I.P.</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                            �츮���� ���ֿ��� Ȱ���ؿ�
                        </li>
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none" href="vip@info.com">vip@info.com</a>
                        </li>
                    </ul>
                </div>
                
                <div class="col-md-4 pt-5">
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="about_dogInfo.jsp">�ֿϰ� ����</a></li>
                        <li><a class="text-decoration-none" href="about_law.jsp">�������� ��å</a></li>
                        <li><a class="text-decoration-none" href="about_rankOfProductByShop.jsp">�� �ȸ��� ��ǰ</a></li>
                        <li><a class="text-decoration-none" href="allMap.jsp">�ֿϰ� ���� ����</a></li>
                        <li><a class="text-decoration-none" href="boardMain.jsp">Ŀ�´�Ƽ �Խ���</a></li>
                        <li><a class="text-decoration-none" href="about_dogInfo.jsp">�ݷ��� Ķ����</a></li>
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
                            Copyright &copy; 2021 V.I.P.
                            | Designed by <a rel="sponsored" target="_blank">V.I.P.</a>
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
    <!-- End Script -->
    <script type="text/javascript">
    $("#egun").on("click",function(){
    	alert("�α����� �Ͻ� �� �̿��� �ֽñ� �ٶ��ϴ�")
    });
    </script>
</body>

</html>