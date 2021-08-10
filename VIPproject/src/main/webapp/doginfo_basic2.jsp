<%@page import="Model.VipMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>�ݷ��� ���� > �ǰ� ����</title>
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

            <a class="navbar-brand text-success logo h1 align-self-center" href="index.jsp" style ="display: inline-block; width:150px; height:70px;">
                <img src = "./img/gil.png" style = "width:100%; height:100%;">
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
                            <a class="nav-link" href="planList1.jsp">�ݷ��� Ķ����</a>
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
                            �ǰ�����
                            <i class="pull-right fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul id="collapseTwo" class="collapse list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#tag_1">�Ļ����</a></li>
                            <li><a class="text-decoration-none" href="#tag_2">������ �ȵǴ� ���Ĺ�</a></li>
                            <li><a class="text-decoration-none" href="#tag_3">����</a></li>
                            <li><a class="text-decoration-none" href="#tag_4">�ӽŰ� ���</a></li>
                            <li><a class="text-decoration-none" href="#tag_5">�������� ����</a></li>
                            <li><a class="text-decoration-none" href="#tag_6">���� �Ʒ�</a></li>
                            <li><a class="text-decoration-none" href="#tag_7">�ְ� ��������</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="col-lg-9">
                <div class="row">
                <!-----------�ǰ� ����>�Ļ����------------>
                	<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                        	<div class="card-body" id="tag_1">
	                        	�Ļ����
                        	</div>
                            <div class="card rounded-0">
                            </div>
                            <div class="card-body">
                                <p class="doginfo_left">����ü�� �ֿ��� ���������� ����, �ܹ���, ����, ������ 
                                �׸��� ���� �ҷ��� ź��ȭ���̸�, ������ ���������� ����ǰ��, ����, ���� �� ������ ���¿� ���� �ٸ���.
                                �����̳� ��ȭ���� ���빰�� �����ϰ�� ����ü�� ������ ���� ���� 75%, �ܹ��� 20%, ������ 5% �� 
                                ź��ȭ���� 1% ���Ϸ� �Ǿ� �ִ�. ���Ĺ��� �������� �����ϴ� ������ ���Ĺ�(ź��ȭ��, ���� �� �ܹ���)�� 
                                ������ �ݵ�� �ʿ��ϳ� �������� �������� �ʴ� ����, ���� ���� �� ��Ÿ������ �з��Ѵ�. ���Ĺ��� �ٸ� 
                                ����ҿ� �Բ� �������� �����ؾ� �Ǵµ�, �������� ������� ü���� ������ų �� �ƴ϶� ȣ���̳� �������� 
                                ���� ��� �ʿ��ϴ�. ����, �������� ���� ���Ĺ��� �ٷ����� �����ϸ� ü���� ü������ �����Ǿ� ���� 
                                ������ �Ǳ� ���� �ݴ�� �ʿ䷮�� �����ϰ� �Ǹ� ������ �ҷ��ϰų�, ü���� ���ҵǾ� ������ ���� ���� 
                                �ɸ��� �ȴ�. ���� ������ �ǹ̿��� ���ļ� ������ �ƴϹǷ� ���������δ� ������ �� ����.</p>
                            </div>
                                <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">�� ���� </a>
                        </div>
                    </div>
                <!----------�ǰ� ����>�ݷ����� ������ �ȵǴ� ���Ĺ� ------------->
                	<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                            	<div class="card-body" id="tag_2">
		                        	�ݷ����� ������ �ȵǴ� ���Ĺ�
                            	</div>
                            </div>
                            <div class="card-body">
                            ����
                                <p class="doginfo_left">� ������ �丮�ص� ������ ������ �������� �ʴ´�. ������ 
                                ���� ������ ���� ������� �������� �쿩 ������, ���� ��쿡�� �޼� ������ ������ �ױ⵵ �Ѵ�.</p>
                            </div>
                            <div class="card-body">
                            ���ݷ�
                                <p class="doginfo_left">���ݷ��� �ߵ��� ����Ų��. ���� �� ����ġ�� Ȱ�����̰ų� 
                                ��л��¸� ���̱⵵ �ϰ�, �ٸ� ������ ������ �ʾƵ� ���並 ���� �ϰ� �ǰ� ������� �������� ���س���.</p>
                            </div>
                            <div class="card-body">
                            ����
                                <p class="doginfo_left">�������� �������� ���� ������ �����Ǿ� ������, �������� 
                                ��õ������ ������ ������ �� �ִ� ȿ�Ұ� ����. � ���������� ���縦 ����Ű�� ������ �Ǳ⵵ �ϸ� 
                                ����� 2�� �������� �Ǳ⵵ �ϹǷ� Ư���� ��찡 �ƴϸ� �޿��� �ﰡ�ؾ� �Ѵ�.</p>
                            </div>
                            <div class="card-body">
                            ����
                                <p class="doginfo_left">��Ǫ�� �������� DHA�� ���� �����Ǿ� ������ ���������
                                 DHA�� �����ϴ� ȿ�Ұ� ��� ��ȭ�� ���� �ʰ� �ٷ� �輳�ȴ�. �׸��� �������ô� ��ȭ���� �ʰ� 
                                 ��ȭ����� ��ó�� ������ ���� �� ���� �ִ�. �⸧�� ���� ������ ������������ ����� ���並 ����Ű�� 
                                 ���� ���� �⸧�� ���������� ��ȭ��ָ� ����Ű�Ƿ� �޿��� �ﰡ�ؾ� �Ѵ�.</p>
                            </div>
                            <div class="card-body">
                            �߻�
                                <p class="doginfo_left">��ȭ�� �Ǿ��� �� ���� ��ī�Ӱ� ���صǸ鼭 ��ȭ����� ��ó�� 
                                ���� �����̳� ����, ���� ��쿡�� ������ �̸��� �� �� �ִ�.</p>
                            </div>
                            <div class="card-body">
                            ���� ��¡��
                                <p class="doginfo_left">������ ������ ���� �ʰ� �ٷ� ��ȭ������� �ѱ�Ƿ� ��¡� 
                                ���� ���� ������ �԰� �ĵ�, ������ �ջ�� �� �����Ƿ� ���� �ʴ´�.</p>
                            </div>
                            <div class="card-body">
                            ä�ҷ��� ���׼���
                                <p class="doginfo_left">��� ������ ä�ҷ��� ����� �������� �־� ��ȭ����� ������ 
                                ������, ���� ���� ä�ҷ��� ���ް����� �Ǹ� ü�ܷ� ����ǹǷ� ���緮�� �ش�.</p>
                            </div>
                            	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">�� ���� </a>
                        </div>
                    </div>
                    <!----------�ǰ� ����>�ݷ����� ���� ------------->
                	<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                        	<div class="card rounded-0">
                            	<div class="card-body" id="tag_3">
                            		�ݷ����� ����
                            	</div>
                            </div>
                         
                            <div class="card rounded-0">
                            	<div class="card-body">
                            		> ���� ����
                            	</div>
                            </div>
                            <div class="card-body">
                            ȣ���
                                <p class="doginfo_left">�๰, ��ӵǴ� ��ä��, ��ħ, ������, ȣ�� ���, �����ڰ���</p>
                            </div>
                            <div class="card-body">
                            ��
                                <p class="doginfo_left">���� �к�, �÷� ����, ����, �������� ���� ����, �帰 
                                �װ� ���� ���</p>
                            </div>
                            <div class="card-body">
                            ��
                                <p class="doginfo_left">�� ��, �Ӹ��� ���� ��� ���, �Ͱ� �ξ� ������ ���, 
                                �������, ��û</p>
                            </div>
                            <div class="card-body">
                            ��
                                <p class="doginfo_left">ħ�� ���� �긮�� ���, �Ŀ� ����, �ո��� ����, ����, 
                                �̻��� �η����ų� ��鸮�� ���</p>
                            </div>
                            <div class="card-body">
                            �ܺα����
                                <p class="doginfo_left">����ġ�� �Ӵ� ���, ������� �߰ߵǴ� ���, ���, Ż��, 
                                �����Ÿ�</p>
                            </div>
                            <div class="card-body">
                            �ǿ� ����
                                <p class="doginfo_left">����ģ ��ħ, ����, �������, ����ģ ��ħ, ��� �����ϴ� 
                                ���</p>
                            </div>
                            <div class="card-body">
                            ��, ����, ����
                                <p class="doginfo_left">������ �κ��� �ξ� ����, �ٸ��� ������ ������ ������ ���, 
                                ����, ����Ÿ�</p>
                            </div>
                            <div class="card-body">
                            �Ű漺
                                <p class="doginfo_left">�����̳� ���, ��Ʋ�Ÿ��� �������� �Ϻ� �Ǵ� ���� ����</p>
                            </div>
                            <div class="card-body">
                            ��ȭ��
                                <p class="doginfo_left">�ൿ���� ��ȭ, ������ ���, ü���� ������ ��ȭ, �Ŀ� ���, 
                                ����, ���� ����</p>
                            </div>
                            <div class="card-body">
                            �Ǻ� �� ��
                                <p class="doginfo_left">���ڱ� �þ� ��ų� �Ӵ� ���, ���� �Ǵ� ����, Ż��, ��� 
                                �ܾ� ��� ���</p>
                            </div>
                            <div class="card-body">
                            ���ı�
                                <p class="doginfo_left">������ ����, ���� �Ҵ�, ����, ��� ���� �̻�, �̻� �к�</p>
                            </div>
                            <div class="card-body">
                            �񴢱�
                                <p class="doginfo_left">�财�� ���� ���, ����, ��Һ� �Ǳ�, �Һ����� ����, �财�� 
                                ����</p>
                            </div>
                            <div class="card-body">
                            �����
                                <p class="doginfo_left">�к񹰿��� ������� �߰��ϴ� ���, �谡 �ξ� ������ ���, 
                                ����, �׹����� �� ������ �߰� �ϴ� ���, ü�� ����</p>
                            </div>
                         
                         
                            <div class="card rounded-0">
                            	<div class="card-body">
                         			> ����óġ���
                            	</div>
                            </div>
                           <!--  -->
                            <div class="card-body">
                                <p class="doginfo_left">�ݷ����� ������, �ϻ纴, �����̳� ȭ��, ���� ȣ���� ��� 
                                ������ ���� ��� ������ �����Ͽ� �ְ��� ���κ��� ���� �� �ִ�. �̷� ��� ���� �ݷ����� ��ũ�� 
                                �������� �糳�� ���������Ƿ� �ΰ��� ��ü�� �ذ� ���� �ʰ� �ؾ��Ѵ�. Ư�� ���� ���ϵ��� �⺻���� 
                                ������ġ�� �� ���� �ְ߿� ������ ����ġ�ᳪ ������ ������� �������� ��������. �λ���� ��Ұ� 
                                �����ϰų� ���迡 ����� ����̸� �� �ٷ� ������ ��ҷ� �̵� ��Ų��. ����� ���� ���� ��ü�� ���ϰ� 
                                ��鸮�ų� �� �ٸ� ����� ���� �ʵ��� �Ѵ�. ����ϰų� ��ũ �����̱� ������ ħ���ϰ� ������ ���� 
                                �ɾ� ���Ǹ� ���� �Ƚɽ�Ű��, ���� ������� ������ ���´�. ��ũ�� �������� ���ε� �� �� �����Ƿ� 
                                �׻� ���Ǹ� ���Ѵ�. ������ ��ȣ��ġ�� ���� ��ġ�� ���� ���� ���ϵ��� �����Ѵ�. ���� ����óġ�� ��
                                ���� �� ���� �尩�̳� ������ �̿��Ͽ� ���� ���� ���ο� �̵��Ѵ�. ����óġ�� �ż��ϰ� ��Ȯ�ϰ� �Ѵ�. 
                                �� Ÿ���� �̿��� ���� ���θ� Ÿ���� ���ΰ� �� �κ��� ���� �� ���� �ȾƼ� ����Ѵ�. ���ڳ� �β��� 
                                ��Ʈ�� �� �� ������� �̿��� ���, ���� �ٴ����� �̲��������� �ε巴�� �̵���Ų��.</p>
                            </div>
                          	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">�� ���� </a>
                       	</div>
                        
                    </div>
                    <!----------�ǰ� ����>�ӽŰ� ��� ------------->
                	<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                         	<div class="card rounded-0">
                            	<div class="card-body" id="tag_4">
                            		�ӽŰ� ���
                            	</div>
                            </div>
                            <div class="card rounded-0">
                            	<div class="card-body">
                            		> ������ ����
                            	</div>
                            </div>
                            <div class="card-body">
                                <p class="doginfo_left">������ ǰ��, ��ü, ���� ������ ���� ���̰� ������ ������ 
                                �������� 5~7����, �������� 8~10����, �������� 1�� �̻��� ������ ���۵ȴ�. ���������� �����ΰ� 
                                ��â�ǰ� ������ ���� ��ü�� ����Ǹ�, ���� ���������� ���ϰ� �����θ� ���� �Ӵ´�. �����ֱ�� ������ 
                                ����, ����, ���, Ȳü ���� � ���� 4��� �����Ѵ�.</p>
                            </div>
                            <div class="card-body">
                            ��������
                                <p class="doginfo_left">���� ���������� ���ϰ� �财ȸ���� �����ϸ� �����ΰ� ���� �ױ� 
                                �����ϸ鼭 �����Ǹ� ������ ���̱⵵ �Ѵ�.</p>
                            </div>
                            <div class="card-body">
                            ������
                                <p class="doginfo_left">�������� �ױⰡ �ְ� ���ϰ� ������ ���� ���� ��������, 
                                ������ �к񹰷� ���Ѵ�. ������ ó�� ���۵� �� 12�� ���� ���� �ñ⿡ ����� �Ͼ��, �� �ñⰡ 
                                ������ ���� �̴�.</p>
                            </div>
                            <div class="card-body">
                            �����ı�
                                <p class="doginfo_left">���� ���Ѽ� �ӽ��� �� ���� �к� ������ ���� ��������, 
                                �ӽ��� ���� ���� ��쿡�� �������� �ҷ����� �к�ȴ�. ���� �����ΰ� �۾����� ������ ����� ���ư���. 
                                ���⿡�� ���ӽ��� ������ ��Ÿ���� ��ü�� �ִ�. �׷��� �����ıⰡ ���� �� Ȯ���� ���Ÿ� �� �� ����.</p>
                            </div>
                            <div class="card-body">
                            ���� ������
                                <p class="doginfo_left">����Ƚ���� �� �Ⱓ�� ��ܿ� ���� �޶����µ�, ��ü������ ���� 
                                �ϳ⿡ �ι� ������ ����Ű�� �� �����Ⱑ �� 3�� �����̴�. ��ü�� ���� �̺��� �� �� ��쵵 �ִ�.</p>
                            </div>
                            <div class="card rounded-0">
                            	<div class="card-body">
		                            > �ӽ��� ���
                            	</div>
                            </div>
                            <div class="card-body">
                                <p class="doginfo_left">��� ���谡 �� ���������� ����Ǵ� ���� �ƴϴ�. ���� �Ŀ� �ӽ� 
                                ���θ� Ȯ���ؾ� �ϴµ� ������ �ӽ��� ¡�İ� ��Ÿ���°��� 5�ְ� �Ѿ�����̴�. 9���� �ӽ� �Ⱓ �� 
                                ���� ���� ��Ÿ���� ¡�Ĵ� 2�� �������� �������� �̿�, ������ ���� ��� ���� ����� ���̸� �Ե����� 
                                �Ŀ��� ��������.�׸��� 3�ֺ��ʹ� ���ΰ� �ణ ���������� ������ ���� �������� �þ����� �纸�� �� �ѷ��� 
                                �þ ���� �� �� �ִ�. �� �߿��� �Ʒ��� 4���� 8���� ������ �ߴ��Ͽ� �������� ���� �ֱ� ���� �� ������ 
                                ���� ������. 4�ֿ� ������ ���ı⿡�� �������� �к��� ������ ���Ŀ��� ���ΰ� �����ϰ� Ŀ����. 6�ֿ���
                                 ��ü�� ��ȭ�� �ε巯���µ�, ������ ��â�� ������ Ȯ�εǸ� �ӽ��� ������ �� �ñ⿡ �ϴ� ���� �������� 
                                 �ϴ� ���� ����̴�. ������ ���� ������ ���ÿ� ���� Ŀ���� Ư�� �Ʒ��� 2�� 4���� �Ӿ� ����. 7�ֺ��ʹ�
                                  �̾��� �������� ���۵Ǹ�, ���������� ��� �غ� ���� ���� �İų� ��ο� ���� ã�� �����Ѵ�. �� �ñ�
                                   ���ʹ� ���ΰ� �йڵǱ� ������ �Һ��� ���� ����. 8�ֿ� ���� ��� �������� Ȱ������ ������ ���� ����
                                    �ʴ��� ����� ���� �ִ� ���� �踦 ���� �������⼭ �����̴°��� �� �� �ִ�.</p>
                            </div>
                            <div class="card-body">
                            �ӽ� �Ⱓ
                                <p class="doginfo_left">���� �ӽ� �Ⱓ�� ��� 9��(63��)�� �� �Ⱓ �� �Ʒ��� ������ 
                                ���� ������ �к�Ǹ� ���� £������. ����� ��������� �Ҿ��� ���°� �ȴ�.
                                �������� ��Ȯ�� �˸� �� �����Ϸκ��� �и� �������� �� �� �ִ�. ������ ���� ���¿� ���� 2~3���� ������ �ִ�.</p>
                            </div>
                            <div class="card-body">
                            ��� �� ��ü��ȭ
                                <p class="doginfo_left">���������� ������ ���� ǰ���̳� ü���� ũ�⿡ ���� 5~6 ������
                                 ���� �������� ǥ������ �� �� �� �ѷ��� 60% ���� Ŀ����.</p>
                            </div>
                            <div class="card-body">
                            �ӽ� ���� �ݷ��� ����
                                <p class="doginfo_left">�ӽ� ���� �����Դ� ������ ���� ����� ������ � �� ��å�� 
                                �߿��ϴ�. �ʹ� �����ϰ� ��� ��Ű�ų� ���� ���� ��Ḧ �޿��ؼ��� �ȵȴ�. �̴� �����̳� ������ ������
                                 �Ǳ⵵ �Ѵ�. ������ ���缷�븦 ���� �������� ��������� �ʵ��� �Ѵ�. �ӽ� ���� ���� ��Һ��� ���� 
                                 ���� �������� �ʿ��ϹǷ� ������ ����� ���� �� �� �ֵ��� �޿��ϸ� �ȴ�. ����� ���� ����� 30%����
                                  �÷� �޿��Ѵ�. ������ ��� �ʼ����̴�. ��� ����������, ���� �Ѿ�� �� ���ο� �ڱ��� �� ���� 
                                  �ൿ�� ���Ѵ�.</p>
                            </div>
                            <div class="card-body">
                            �и��� �غ�
                                <p class="doginfo_left">�������̸� ��ҿ� �ͼ����� ��ҳ� ��鿩�� �� ������ �и��ϵ���
                                 �Ѵ�. �и� ���Ŀ��� �Ű��� ���������� ������ �������� �������̾ �Ҷ������ų�
                                 ����� �շ��� ���� ���� ���ؾ� �Ѵ�.</p>
                            </div>
                            <div class="card-body">
                            �и��� ���
                                <p class="doginfo_left">�и��� �ٰ��� ���� ��ο� ������ ���� �Ѵ�. �̷��� ������
                                 12�ð��̳� 24�ð� ��ӵǴٰ� ���� �� ������ �ϰ� �Ǹ�, ȣ�� ������ 10�и��� �ϴٰ� ���� �� �ֱⰡ
                                  ª������.ȣ���� ��ĥ������ ���� ���� ���� �ִ�. ù �������� �굵�� �������� ������ �޴ٸ��� ���� 
                                  �ָ� ���µ�, �� �� �¹��� ���� �����̴� ���� ��Ÿ����. ���������� ��̰��� �¹��� ���� ��� �������� 
                                  ������ �Ӿ��ش�. �׸��� ������ ������ ������ 2~3cm �Ǵ� ��ġ���� ���� ��´�. ����� ��� ���� 
                                  ���� ���������� �ϹǷ� ��� ������ �ð� �ΰ� ����� ���� ���� �ʴ� ���� ����. �ٸ� �ʻ��� ���� 
                                  ������ �� �� ������ ����� �¹��� �����ְ� �Ƿ� ������ ���� �� ������ �߶��ش�. ��� ���� ���� 
                                  �Ź����� ���� õ�� �̿��Ͽ� �۾��־� ���⸦ �����Ѵ�.</p>
                            </div>
                            <div class="card-body">
                            ������ �ǰ�����
                                <p class="doginfo_left">��� ���� ü���� �и� 24�ð� ���� �Ͻ������� 37�� ������ 
                                �������� �и� �Ŀ��� �ٽ� ���� ü������ ���ƿ´�. �ƹ��� ��Һ��� 20 �̻��� ������ �и� �Ŀ��� 
                                ���� �������� �����ϴ� �ʱ⿡�� ���� �����Ѵ�. �и� �Ŀ��� �ڱ� � ��ó�� �־� 2�� �Ŀ� ���� 
                                ���� ���� �ִ�. �� �� ü���� 40������ �ö󰡳� �������� ������ �������� ���ƿ´�.</p>
                            </div>
                            	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">�� ���� </a>
                        </div>
                    </div>
                    <!----------�ǰ� ����>�������� ���� ------------->
                	<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                         	<div class="card rounded-0">
                         		<div class="card-body" id="tag_5">
                         			�������� ����
                         		</div>
                            </div>
                         	<div class="card-body">
                                <p class="doginfo_left">������� 3�ֱ��� �ǰ��� �������� ��ü�� ����ϴ�. �������� 
                                90%�� �ð��� ���� �ڰ� 10%�� �ð��� ���� ���� �������� �����ϱ� ���� �����Ѵ�. ó�� ��Ʋ ������ 
                                �Ӹ��� ������ ���� ���� �ܴ�. �ڴ� ���� �������� ���⵵ �ϰ� �Ҹ��� ������ ��Ÿ���µ�, �̰��� 
                                Ȱ���ϴ� ���̶�� �Ѵ�. Ȱ�� ���� ���������� �ϴ� ������ � ����̰� �Ŀ� �� ������ �ߴ��� ���⵵ 
                                �ϱ� ������ ������ �������̴�.</p>
                            </div>
                            <div class="card-body">
                            �и�~2�ַ�
                                <p class="doginfo_left">���� ���� ����. 5~6�� �� �� �鸲. 5~6�� ���� ������. 
                                ������ ����</p>
                            </div>
                            <div class="card-body">
                            3�ַ�~4�ַ�
                                <p class="doginfo_left">���� ����. ������ Ȱ��. 14~17�� ����. 20�ð� �̻� ����</p>
                            </div>
                            <div class="card-body">
                            5�ַ�~2������
                                <p class="doginfo_left">���� ��� ����. �峭�� ����. ���� ��. ü���� �ϼ�. ������ 
                                ���� ����</p>
                            </div>
                            <div class="card-body">
                            3����~5������
                                <p class="doginfo_left">�� 2���� ������ ��̷κ��� ������Ȱ ����</p>
                            </div>
                            <div class="card-body">
                            9����~12������
                                <p class="doginfo_left">������ 80% ����. ��ü���� ���� ����. ��ĳ�� ��� ù �����ñ�</p>
                            </div>
                            	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">�� ���� </a>
                        </div>
                    </div>
                    <!----------�ǰ� ����>���� �Ʒ� ------------->
                	<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                            	<div class="card-body" id="tag_6">
                            		���� �Ʒ�
                            	</div>
                            </div>
                            <div class="card-body">
                            �Ʒ� �ñ�
                                <p class="doginfo_left">������ ���� 2~3 �������� �����ϴµ�, ó������ ���� �����ϰ� 
                                �ܽð��� ���� �� �ִ� �輳��� �Ļ��� ���� �����Ѵ�. ���� 7~8 ������ �Ǹ� ��ü�� ����� �ൿ������ 
                                �о����Ƿ� ���������� �Ʒ��� �����Ѵ�. �Ʒ��� �������ٴ� �� ���� �ð��� ����� �ʿ��ϸ� ���� �� ���� 
                                ü�°� ���� �䱸�ȴ�.</p>
                            </div>
                            <div class="card-body">
                            ��ȸȭ
                                <p class="doginfo_left">���� 3�ַɿ��� 13�ַɱ����� �ñ�� �� �ñ⿡�� ������ ���� 
                                ����� ���˽�Ű��, ���� �Ҹ��� ��Ȳ�� ���� ��Ű�� ���� ȯ�濡 �� �����ϴ� ���� �����Ų��. �������� 
                                �Ǽ��� �� ���� �ִٴ� ����� �˾ƾ��ϰ� �� ������ ȭ������ ���ƾ��Ѵ�. ���� ������ ���߿� ��ġ�� �ϱ� 
                                ���ٴ� ó������ ���� �ʵ��� �ϴ� ���� ����.�������� �Բ� �ð��� ������ ���� ����ְ�, ���� �ɰ�, 
                                ���ٵ�� �ָ鼭 ���� �ָ� Ű���.���������� �ص� �Ǵ� �Ͱ� ���� ���ƾ� �� ���� ������ ������ �־�� 
                                �Ѵ�.</p>
                            </div>
                            <div class="card-body">
                            ���� �� �Ʒ� �ñ�
                                <p class="doginfo_left">������ ���� 2~3�������� �����ϴµ� ó������ ���� �����ϸ� �ܽð��� 
                                ���� �� �ִ� �輳���, �Ļ��� ���� �����Ѵ�.���� 7~8 ������ �Ǹ� ��ü�� ����� �ൿ������ �о����Ƿ� 
                                ���������� �Ʒ��� �����Ѵ�.�Ʒ��� �������ٴ� �� ���� �ð��� ����� �ʿ��ϸ� �����Ե� �� ���� ü�°� 
                                ���� �䱸�ȴ�.</p>
                            </div>
                            	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">�� ���� </a>
                        </div>
                    </div>
                    <!----------�ǰ� ����>�ְ� ���� ���� ------------->
                	<div class="col-md-4">
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card rounded-0">
                            	<div class="card-body" id="tag_7">
                            		�ְ� ���� ����
                            	</div>
                            </div>
                            <div class="card-body">
                                <p class="doginfo_left">���������� �� �Ŀ��� ��, ħ��, ����, ��â ���� ���������� ��Ÿ�� 
                                �� ������ ��κ��� ��쿡 �Ϸ� ���� ������ ���� �θ� �ڿ��� ����������.
                                �׷��� ������ ���� ��쳪 �̻������� ��Ÿ�� ��쿡�� ��� ���ǻ翡�� �����ϴ� ���� ����.</p>
                            </div>
                            <div class="card-body">
                            ȥ�տ����ֻ� (DHPPL)
                                <p class="doginfo_left">�������� : ���� 6 ~ 8�ֿ� 1�� ����</p>
                                <p class="doginfo_left">�߰����� : 1�� ���� �� 2 ~ 4�� �������� 2 ~ 4ȸ</p>
                                <p class="doginfo_left">�������� : �߰����� �� �ų� 1ȸ �ֻ�</p>
                            </div>
                            <div class="card-body">
                            �ڷγ����̷����� �忰(Coronavirus)
                                <p class="doginfo_left">�������� : ���� 6 ~ 8�ֿ� 1�� ����</p>
                                <p class="doginfo_left">�߰����� : 1�� ���� �� 2 ~ 4�� �������� 1 ~ 2ȸ</p>
                                <p class="doginfo_left">�������� : �߰����� �� �ų� 1ȸ �ֻ�</p>
                                <p class="doginfo_left"></p>
                            </div>
                            <div class="card-body">
                            ������������ (Kennel Cough)
                                <p class="doginfo_left">�������� : ���� 6 ~ 8�ֿ� 1�� ����</p>
                                <p class="doginfo_left">�߰����� : 1�� ���� �� 2 ~ 4�� �������� 1 ~ 2ȸ</p>
                                <p class="doginfo_left">�������� : �߰����� �� �ų� 1ȸ �ֻ�</p>
                            </div>
                            <div class="card-body">
                            ���ߺ�
                                <p class="doginfo_left">�������� : ���� 3���� �̻� 1ȸ ����</p>
                                <p class="doginfo_left">�������� : 6���� �������� �ֻ�</p>
                            </div>
                            	<a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">�� ���� </a>
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