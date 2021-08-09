<%@page import="Model.VipMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>�ְ� ��ǰ ����</title>
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
            <div class="col-lg-3">
                <ul class="list-unstyled templatemo-accordion">
                    <li class="pb-3">
                        <a class="collapsed d-flex justify-content-between h3 text-decoration-none" href="#">
                            ���θ��� ��ŷ����
                            <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul class="collapse show list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#tag_1">11����</a></li>
                            <li><a class="text-decoration-none" href="#tag_2">G����</a></li>
                            <li><a class="text-decoration-none" href="#tag_3">����</a></li>
                            <li><a class="text-decoration-none" href="#tag_4">�ڽ�Ʈ��</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col-lg-9">
                <div class="row">
                
                	<!-- ���θ� ��ü -->
                	<!-- 11���� -->
                    <div class="col-md-4">
                    	<div class="card-body" id="tag_1">11����</div>
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mall11 (1).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">�̳��� í���� ����� ���ణ�� Ư������ ������</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>32,500��</li>
                                </ul>
                                <p class="text-center mb-0">1��</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mall11 (2).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">11���� �ܵ��Ǹ�]Ŀ�Ǻ� ������ ���ù� ��Ʈ(����/���) / ���ð��� / ������Ӷ�</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>21,900��</li>
                                </ul>
                                <p class="text-center mb-0">2��</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mall11 (3).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">�ξ�ĳ�� ������ ��� ������ ���޶�Ͼ�/Ǫ��/��Ƽ��/�ε���/�̵��/ġ�Ϳ�/����Ʈ/���/����</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>19,800��</li>
                                </ul>
                                <p class="text-center mb-0">3��</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mall11 (4).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">BEST11������ǥ ���������� �����ھ� �ְ߰��� �������� �� ���� �ְ߻���</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>1,980��</li>
                                </ul>
                                <p class="text-center mb-0">4��</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mall11 (5).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">�ξ�ĳ�� ������ ��� ������ ���޶�Ͼ�/Ǫ��/��Ƽ��/�ε���/�̵��/ġ�Ϳ�/����Ʈ/��</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>19,800dnjs</li>
                                </ul>
                                <p class="text-center mb-0">5��</p>
                            </div>
                        </div>
                           	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">�� ���� </a>
                    </div>
                   
                    <!-- G���� -->
                    <div class="col-md-4">
                    	<div class="card-body" id="tag_2"><br>G����</div>
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallG (1).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">[�������е�]20g X 400�� ������ �ְ��е� �������е� �躯�е�</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>24,750��</li>
                                </ul>
                                <p class="text-center mb-0">1��</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallG (2).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">[�������е�]�������е� 20g x 400�� �ְ��е� �躯 �������е�</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>23,900��</li>
                                </ul>
                                <p class="text-center mb-0">2��</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallG (3).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">[�Ŀ��Ŀ�]���ִ� ���� 300g X6�� ������ ���߷�150g �Ŀ��Ŀ�</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>11,900��</li>
                                </ul>
                                <p class="text-center mb-0">3��</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallG (4).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">[�������е�]�ʴ����е� 160�� ū�е� �ְ��е� �躯 �������е�</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>26,790��</li>
                                </ul>
                                <p class="text-center mb-0">4��</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallG (5).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">[�����̼�]�����̼� �ް��� BEST �� 180g 4��</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>22,000��</li>
                                </ul>
                                <p class="text-center mb-0">5��</p>
                            </div>
                        </div>
                           	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">�� ���� </a>
                    </div>
                    
                    <!-- ���� -->
                    <div class="col-md-4">
                    	<div class="card-body" id="tag_3"><br>����</div>
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCoupang (1).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">��Ű�� �ݷ��� ���� ��Ÿ�� S, ĥ���� + �Ұ�� ȥ�ո�, 20��</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>19,600��</li>
                                </ul>
                                <p class="text-center mb-0">1��</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCoupang (2).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">Ž�� ������ �躯�е�, 3��, 100��</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>19,970��</li>
                                </ul>
                                <p class="text-center mb-0">2��</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCoupang (3).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">�µ��� �ǰ������� �ݷ��߰��� 300g, ���������� ��ƽ, 1��</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>12,000��</li>
                                </ul>
                                <p class="text-center mb-0">3��</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCoupang (4).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">�����ǿ��� ������ ����, �Ұ��ť��, 5��</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>14,900</li>
                                </ul>
                                <p class="text-center mb-0">4��</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCoupang (5).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">��� ǻ����ƽ ¥�Դ� �� ����̰��� 12g, �����Ȳ��, ����Ϳ����Ƚɻ�, �߰������������, �߰��������ġ, �߰����������, 50����</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>16,800��</li>
                                </ul>
                                <p class="text-center mb-0">5��</p>
                            </div>
                        </div>
                           	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">�� ���� </a>
                    </div>
                    
                    <!-- �ڽ�Ʈ�� -->
                    <div class="col-md-4">
                    	<div class="card-body" id="tag_4"><br>�ڽ�Ʈ��</div>
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCostco (1).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">ĿŬ���� �ñ״��� �����̾� �ְ� ��� 15.87kg</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>48,990��</li>
                                </ul>
                                <p class="text-center mb-0">1��</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCostco (2).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">ĿŬ���� �ñ״��� ����� ��� 11.3kg</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>32,190��</li>
                                </ul>
                                <p class="text-center mb-0">2��</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCostco (3).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">���� �ھ� ġŲ&���� �ְ߻�� 7kg x 2</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>68,900��</li>
                                </ul>
                                <p class="text-center mb-0">3��</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCostco (4).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">���� �ھ� õ�� ���������� 700g</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>19,490��</li>
                                </ul>
                                <p class="text-center mb-0">4��</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                                <img class="card-img rounded-0 img-fluid" src="assets/img/mallCostco (5).jpg">
                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                </div>
                            </div>
                            <div class="card-body">
                                <a class="h3 text-decoration-none">�����Ҹ����ũ�ٴҶ�200ml x 10 /�ּұ��� 2</a>
                                <ul class="w-100 list-unstyled d-flex justify-content-between mb-0">
                                    <li>12,990��</li>
                                </ul>
                                <p class="text-center mb-0">5��</p>
                            </div>
                        </div>
                            <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">�� ���� </a>
                    </div>
                    <!-- ���θ� �� -->
                    
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