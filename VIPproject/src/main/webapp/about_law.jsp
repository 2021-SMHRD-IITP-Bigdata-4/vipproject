<%@page import="Model.VipMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>���� ��å</title>
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
                            �������� ��å 
                            <i class="fa fa-fw fa-chevron-circle-down mt-1"></i>
                        </a>
                        <ul class="collapse show list-unstyled pl-3">
                            <li><a class="text-decoration-none" href="#tag1">------��------</a></li>
                            <li><a class="text-decoration-none" href="#tag1_1">������ȣ��</a></li>
                            <li><a class="text-decoration-none" href="#tag1_2">������ȣ�� �����</a></li>
                            <li><a class="text-decoration-none" href="#tag1_3">������ȣ�� �����Ģ</a></li>
                            <li><a class="text-decoration-none" href="#tag2">------��å------</a></li>
                            <li><a class="text-decoration-none" href="#tag2_1">������ȣ ������å</a></li>
                            <li><a class="text-decoration-none" href="#tag2_2">��Ÿ ��å</a></li>
                            <li><a class="text-decoration-none" href="#tag3">------������ ��å------</a></li>
                            <li><a class="text-decoration-none" href="#tag3_1">���ֱ�����</a></li>
                            <li><a class="text-decoration-none" href="#tag3_2">��Ÿ ����</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

            <div class="col-lg-9">
                <div class="row">
                	<div class="col-md-4">
                	<!-----------���� ��å > ��------------>
                        <a name="tag1">��</a>
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card-body">
                            	<a name="tag1_1">������ȣ�� �ֿ䳻��</a>
                            </div>
                            <div class="card-body">
                            ��3��(������ȣ�� �⺻��Ģ) �������� ������ ���������� �Ǵ� ��ȣ�� ������ ���� �� ȣ�� ��Ģ�� �ؼ��Ͽ��� �Ѵ�.<br>  
                                <p class="doginfo_left">
                                <���� 2017. 3. 21.><br>
                                1. ������ ������ ������ ��ü�� ������ �����ϸ鼭 ���������� �� �� �ֵ��� �� ��<br>
                                2. ������ ���� �� ���ָ��� �ްų� ������ ���̵��� �ƴ��ϵ��� �� ��<br>
                                3. ������ �������� �ൿ�� ǥ���� �� �ְ� �������� ���� �ƴ��ϵ��� �� ��<br>
                                4. ������ ��������� �� �������κ��� �����ӵ��� �� ��<br>
                                5. ������ ������ ��Ʈ������ ���� �ƴ��ϵ��� �� ��
                                </p>
                             </div>
                             <div class="card-body">��13��(��ϴ�󵿹��� ���� ��)
                             	<p class="doginfo_left">�� �����ڵ��� ��ϴ�󵿹��� �⸣�� ������ ����� �ϴ� ��쿡�� �����ڵ��� ����ó �� ������ǰ�η����� ���ϴ� ������ ǥ���� �ν�ǥ�� ��ϴ�󵿹����� �����Ͽ��� �Ѵ�.<br>  
                                <���� 2013. 3. 23.><br>
                                �� �����ڵ��� ��ϴ�󵿹��� �����ϰ� ������ ������ ������ǰ�η����� ���ϴ� �ٿ� ���� ���� �� ������ġ�� �Ͽ��� �ϸ�, �輳��(�Һ��� ��쿡�� ���������� ���������ͤ���� �� �ǹ� ������ ������� �� �������� �� ����� ���ų� ���� �� �ִ� �ⱸ ���� ������ �����Ѵ�)�� ������ ������ ��� �����Ͽ��� �Ѵ�.<br>  
                                <���� 2013. 3. 23., 2015. 1. 20.><br>
                                �� �ä�������� ��ϴ�󵿹��� ���Ǥ����� �Ǵ� ������������ ���� ������ ���Ͽ� �ʿ��� ������ �ä����� ���ʷ� ���ϴ� �ٿ� ���� �����ڵ����� �Ͽ��� ��ϴ�󵿹��� ���Ͽ� ���������� �ϰ� �ϰų� Ư�� ���� �Ǵ� ��ҿ����� ���� �Ǵ� ������ �����ϰ� �ϴ� �� �ʿ��� ��ġ�� �� �� �ִ�.
                            	<br><br>
                            	<a href="https://www.law.go.kr/LSW/lsInfoP.do?lsiSeq=214159&efYd=20210212&ancYnChk=0#0000" target="_blank">��ü���� ��������</a>
                            	<br><br><br>
                            	</p>
                            </div>
                            <div class="card-body">
                            	<a name="tag1_2">������ȣ�� �����</a>
                            </div>
                            <div class="card-body">
                            ��6����2(������ ����) �� ��13����2��4�׿� ���� �Ͱ��� �����ڴ� ���� �� ȣ�� ����� ��� �����ϴ� ���迡 �����ؾ� �Ѵ�.
                                <p class="doginfo_left">1. ���� �� �� �ش��ϴ� �ݾ� �̻��� ������ �� �ִ� ������ ��<br>
                                ��. ����� ��쿡�� ������ 1��� 8õ����<br>
                                ��. �λ��� ��쿡�� ������ 1��� ������ǰ�η����� ���ϴ� ���ص�޿� ���� �ݾ�<br>
                                ��. �λ� ���� ġ�Ḧ ��ģ �� �� �̻��� ġ��ȿ���� ����� �� ���� �� ������ ������ ���¿��� �� �λ��� ������ �Ǿ� ��ü�� ���(���� ��������֡��� �Ѵ�)�� ���� ��쿡�� ������ 1��� ������ǰ�η����� ���ϴ� ������ֵ�޿� ���� �ݾ�<br>
                                ��. �ٸ� ����� ������ ���ظ� �԰ų� ���� ��쿡�� ��� 1�Ǵ� 200����<br>
                                2. ���޺���ݾ��� �Ǽ��ؾ��� �ʰ����� ���� ��. �ٸ�, ������� ���� �Ǽ��ؾ��� 2õ���� �̸��� ����� ���޺���ݾ��� 2õ�������� �Ѵ�.<br>
                                3. �ϳ��� ���� ��1ȣ������� �ٸ������ ���� �� �� �̻� �ش��ϰ� �� ��쿡�� �Ǽ��ؾ��� �ʰ����� �ʴ� �������� ���� �� ���� ���п� ���� ������� ������ ��<br>
                                ��. �λ��� ����� ġ�� �߿� �� �λ��� ������ �Ǿ� ����� ��쿡�� ��1ȣ���� �� ������ �ݾ��� ���� �ݾ�<br>
                                ��. �λ��� ������� ������ְ� ���� ��쿡�� ��1ȣ���� �� �ٸ��� �ݾ��� ���� �ݾ�<br>
                                ��. ��1ȣ�ٸ��� �ݾ��� ������ �� �� �λ��� ������ �Ǿ� ����� ��쿡�� ��1ȣ������ �ݾ׿��� ���� ȣ �ٸ� ���� ������ �ݾ� �� ����� �� ���Ŀ� �ش��ϴ� ���ؾ��� �� �ݾ�<br>
                                [�����ż� 2021. 2. 9.]
                                <br><br>
                            	<a href="https://www.law.go.kr/LSW/lsInfoP.do?lsiSeq=233719&efYd=20210706&ancYnChk=0#0000" target="_blank">��ü���� ��������</a>
                            	<br><br><br>
                            	</p>
                            </div>
                            <div class="card-body">
                            	<a name="tag1_3">������ȣ�� �����Ģ</a>
                            </div>
                            <div class="card-body">
                            ��12��(������ġ)
                                <p class="doginfo_left">�� �����ڵ��� �� ��13����2�׿� ���� ��ϴ�󵿹��� �����ϰ� ������ ������ ���� �Ǵ� �������� �ϰų� �̵���ġ�� ����ؾ� �Ѵ�. �ٸ�, �����ڵ��� ���� 3���� �̸��� ��ϴ�󵿹��� ���� �ȾƼ� �����ϴ� ��쿡�� �ش� ������ġ�� ���� ���� �� �ִ�.  <���� 2021. 2. 10.><br>
                                �� ��1�� ������ ���� ���� �Ǵ� �������� 2���� �̳��� ���̿��� �Ѵ�.  <���� 2021. 2. 10.><br>
                                �� ��ϴ�󵿹��� �����ڵ��� �� ��13����2�׿� ���� �����ù� ����ɡ� ��2����2ȣ �� ��3ȣ�� ���� �������� �� �ٰ�������, ���� �� ��3���� ���� ���������� �ǹ� ������ ������������� ��ϴ�󵿹��� ���� �Ȱų� ������ ����� �κ� �Ǵ� �������� ������ �κ��� ��� �� ��ϴ�󵿹��� �̵��� �� ������ ������ġ�� �ؾ� �Ѵ�.  <�ż� 2021. 2. 10.><br>
                                [�������� 2019. 3. 21.]<br>
                                [������ : 2022. 2. 11.] ��12����2��, ��12����3��
                            	<br><br>
                            	<a href="https://www.law.go.kr/LSW/lsInfoP.do?lsiSeq=233301&efYd=20210617&ancYnChk=0#0000" target="_blank">��ü���� ��������</a>
                            	<br><br><br>
                            	</p>
                            </div>
                            			                    <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">�� ���� </a>
                            	
                        </div>
                    </div>

            		<!----------���� ��å > ��å ------------->
            		<div class="col-md-4">
           				<a name="tag2">��å</a>
            			<div class="card mb-4 product-wap rounded-0">
            				<div class="card-body">
                            	<a name="tag2_1">������ȣ ������å</a>
                            </div>
                            <div class="card-body">
                            > �ֿ���å ���
                                <p class="doginfo_left">����, ����������, �������������, �������ꡤ�Ǹ� �� ������ ��</p>
                            </div>
                            <div class="card-body">
                            > ��å���� ���
                                <p class="doginfo_left">1. 1�� ������ ����, ������ ���ȭ ������ ���� �ݷ����� ���� ���� �����ϰ� �ִ� �ݸ鿡 �ùٸ� �ݷ���ȭ�� ���� �ν� ����<br>
                                2. �ݷ����� �� ���������� �ް��� ������ ���� ���� ��� ���� �䱸 ����<br>
                                3. ������ ��� �ĵ� ������ ���� �нĻ��� �� ��� ����ȯ�� ���� �ʿ伺 ����
                                <br><br>
                                </p>
                            </div>
                            <div class="card-body">
                            > �ֿ� ���� ����
	                            <p class="doginfo_left">1. ���� ����<br>
	                            -�ݷ��� ���ٱ��̸� 2m �̳��� �����ϴ� ������ȣ�� �����Ģ ���� ����(21.2.12.)<br>
	                            -�Ͱ� �������� �����ǹ� �ż� �� ������ȣ�� �������� ���� ���� ����(19.3.21.)<br>
	                            -�Ͱ� ������ å�Ӻ��� �ǹ����� ���� ������ȣ�� �������� ���� ����(21.2.12.)<br>
	                            -��ϴ�󵿹��� ���� �����ÿ��� �⸣�ų� �ݷ��������� �⸣�� 2������ �̻��� ���� Ȯ���ϴ� ��������ȣ���� ����� ���� ����(20.3.11.)<br>
	                            -����� ������ �� ����� ���ϴ� ��� ����� �� �ֵ��� ������� ������� �ù������ �ǽ�(`18~)<br>
	                            -�����д� ������ ���� ó�� �� �ݷ����� ���� ���� ���� ��ȭ �� ��������ȣ���� �������� ���� ���� ����(18.3.22)<br>
	                            -��������� �Ű������� �㰡�� ��ȯ(17.3.21) �� ���� �űԼ��񽺾� ��Ͻ���(��18.3.22)<br>
	                            2. ������ȣ �� ���� ����ȫ�� ����<br>
	                            -������ȣ�� ���� �������߿� ���� �ùٸ� ��ġ�� ������ ���� �ʵ��л� ��� ������ȣ ���� �ǽ�<br>
	                			-�Ϲ��ΰ� �ݷ����� �Բ��ϴ� ������ȣ ��ȭ���� ����(17: ����, 18: �λ�, 19: ����, 20: �λ�)<br>
	                            <br><br>
                            	<a href="https://www.mafra.go.kr/mafra/1374/subview.do" target="_blank">��ü���� ��������</a>
                            	<br><br><br>
	                            </p>
                            </div>
                            <div class="card-body">
                           		<a name="tag2_2">��Ÿ ��å</a>
                            </div>
                            <div class="card-body">
                                <p class="doginfo_left">-<br><br></p>
                            </div>
                            <a class="page-link rounded-0 shadow-sm border-top-0 border-left-0 text-dark" href="#">�� ���� </a>
                            	
                        </div>
                    </div>
                 	<!----------���� ��å > ������ ��å ------------->
                	<div class="col-md-4">
                         <a name="tag3">������ ��å</a>
                        <div class="card mb-4 product-wap rounded-0">
                            <div class="card-body">
                            	<a name="tag3_1">���ֱ�����</a>
                            </div>
                            <div class="card-body">
                            ��1�� ��Ģ
                                <p class="doginfo_left">��1��(����) �� ���ʴ� ��������ȣ�������� ���ӵ� ���װ� 
                                ������ȣ �� ������ ���� ������ ���������ν� ������ ����ȣ, �������� �� ���������� �����ϰ�, 
                                �ùΰ� ������ ��ȭ�ο� ������ �⿩���� �������� �Ѵ�.</p>
                          	</div>
                          	<div class="card-body">
                            ��2��(����) �� ���ʿ��� ����ϴ� ����� ���� ������ ����.
                                <p class="doginfo_left">1. "�����ڵ�"�̶� ������ �����ڿ� �Ͻ��� �Ǵ� ���������� ������ ���������� 
                                �Ǵ� ��ȣ�ϴ� ����� ���Ѵ�.<br>
                                2. "���ǡ����⵿��"�̶� ���Ρ����� ���� ������ҿ��� �����ڳ� �Ͻ��� �Ǵ� ���������� ������ ���������� �Ǵ� 
                                ��ȣ�ϴ� ��� ���� ��ȸ�ϰų� �������� ������ ���Ѵ�.<br>
                                3. "��ȣ��ġ"�� ��������ȣ����(���� "��"�̶� �Ѵ�) ��7���� ���� ������ ġ�ᡤ��ȣ�� �ʿ��� ��ġ�� ���Ѵ�.<br>
                                4. "��ϴ�󵿹�"�̶� ������ ��ȣ, ���ǡ��������, ������ ����, ������������ ���� ���� ���� ���Ͽ� �����
                                 �ʿ��� ���� �� ���� ��� �ϳ��� �ش��ϴ� ���� 3���� �̻��� ���� ���Ѵ�.<br>
                                 ��. �����ù��� ��2����1ȣ �� ��4ȣ�� ���� ���á������ÿ��� �⸣�� ��<br>
                                 ��. ���� ���� ���á������� ���� ��ҿ��� �ݷ� �������� �⸣�� ��<br>
                                5. "�Ͱ�"�̶� �����, �ͺ��׸���, ��Ʈ���Ϸ� �� ����� �����̳� ��ü�� ���ظ� ���� ����� �ִ� ���μ� �� 
                                �����Ģ ��1����2�� ��� �ϳ��� �ش��ϴ� ���� ���Ѵ�.<br>
                                6. "������"�� �������� ���ð����� �ڿ������� �����Ͽ� �ڻ������� ��ư��� ����̸� ���Ѵ�.<br>
                                7. "�ݷ�����"�̶� ����� ���������� �����ϰ��� ������ �ΰ� �⸣�� ��, ����� ���� ������ ���Ѵ�.<br>
                                8. "�ݷ����� ���̽ü�"�̶� �ݷ������� �����ڿ� �Բ� �����Ӱ� Ȱ���� �� �ֵ��� ������ ������ ��Ÿ�� 
                                ���� �ѷ� ���� �ü��� ���Ѵ�.<br>
                                9. "�ݷ����� �幦�ü�"�̶� ���� �� �� �� ��� �ϳ� �̻� �ش��ϴ� �ü��� ���Ѵ�.<br>
                                  ��. �ݷ����� ���� ��ʽ���<br>
                                  ��. �ݷ������� ��ü �Ǵ� ������ �ҿ� �¿�� ������� ó���ϴ� �ü� �Ǵ� ��������պм��� ������� ó���ϴ� �ü�<br>
                                  ��. �ݷ����� ���� ���Ƚü�
                            	<br><br>
                            	<a href="https://www.law.go.kr/LSW/ordinInfoP.do?ordinSeq=1394303" target="_blank">��ü���� ��������</a>
                            	<br><br><br>
                            	</p>
                          	</div>
                          	<div class="card-body">
                            	<a name="tag3_2">��Ÿ ����</a>
                            </div>
                            <div class="card-body">
                                <p class="doginfo_left">-<br><br></p>
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