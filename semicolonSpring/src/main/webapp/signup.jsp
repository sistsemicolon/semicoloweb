<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
<link rel="stylesheet" href="/team/css/bootstrap.min.css">
<link rel="stylesheet" href="/team/css/style.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript"></script>
<script  src="/team/js/member.js" charset="UTF-8"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

</head>
<body>
<!--::header part start::-->
   <header class="main_menu">
        <div class="sub_menu">
            <div class="container">
                <div class="row">
                  <div class="col-lg-6 col-sm-12 col-md-6">
                        </div>
                    </div>
                    <div class="col-lg-6 col-sm-12 col-md-6">
                        <div class="sub_menu_right_content">
                          
                            <a href="#">�α���</a>
                            <a href="#">���� ������</a>
                            <a href="#"></a>
                        </div>
                    </div>
                  
                </div>
            </div>
        
        <div class="main_menu_iner">
            <div class="container">
                <div class="row align-items-center ">
                    <div class="col-lg-12">
                        <nav class="navbar navbar-expand-lg navbar-light justify-content-between">
                            <a class="navbar-brand" href="index.do"> <img src="/team/img/semi_logo.png" alt="logo" width="200" height="80"> </a>
                            <button class="navbar-toggler" type="button" data-toggle="collapse"
                                data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                                aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>

                            <div class="collapse navbar-collapse main-menu-item justify-content-center"
                                id="navbarSupportedContent">
                                <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">��ǰ���</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">Ŀ�´�Ƽ</a>
                                    </li>
                                  
                                </ul>
                            </div>
                            <a href="#" class="btn_1 d-none d-lg-block">book now</a>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header part end-->
<article class="">
		<div class="">
			<div class="col-md-6 col-md-offset-3">
				<h3 align="center">ȸ������</h3>
			</div>
		</div>
		<div class="col-sm-6 col-md-offset-3">
			<form action="signupProcess.do" name = "rfrm" method ="post">
			
				<div class="form-group">
					<label for="inputid">ID</label> <input type="text"
						class="" name="id" readonly="readonly" size=30>
				<span><a href="#" id="idcheck">�ߺ�üũ</a></span></div>
				<div class="form-group">
					<label for="inputname">�̸�</label> <input type="text"
						class="form-control" name="name" id="inputname" placeholder="�̸��� �Է��� �ּ���">
				</div>
				<div class="form-group">
					<label for="inputnickname">�г���</label> <input type="text"
						class="form-control" name = "nickname" id="inputnickname" placeholder="�г����� �Է��� �ּ���">
				</div>
				<div class="form-group">
					<label for="inputpassword">��й�ȣ</label> <input type="password"
						class="form-control" name = "password1" id="password1" placeholder="��й�ȣ�� �Է����ּ���">
				</div>
				<div class="form-group">
					<label for="inputpasswordcheck">��й�ȣȮ��</label> <input type="password"
						class="form-control" name = "password2" id="password2" placeholder="��й�ȣ Ȯ��">
						<font id="chkNotice" size="2"></font>
						<input type="hidden" name="password" id="password">
				</div>
				<div class="form-group">
					<label for="inputgender">����</label> 
				&nbsp&nbsp
				<input type="radio" name="gender" value="����">��
				&nbsp&nbsp
				<input type="radio" name="gender" value="����">��
				</div>
				<div class="form-group">
					<div><label for="inputtel">����ó</label></div> <input
						type="text" name = "tel1" class="" id="tels"
						placeholder="����ó�� �Է��ϼ���">&nbsp&nbsp-&nbsp&nbsp<input
						type="text" name = "tel2" class="" id="tels"
						placeholder="����ó�� �Է��ϼ���">&nbsp&nbsp-&nbsp&nbsp<input
						type="text" name = "tel3" class="" id="tels"
						placeholder="����ó�� �Է��ϼ���">
						<input type="hidden" name="tel" />
						
				</div>
				<div class="form-group">
					<div><label for="inputemail">�̸���</label></div> 
					<input type="text" name = "email1" class="" id="email1"
						placeholder="�̸����� �Է����ּ���">
					@ <input type="text" name="email2" size="15" id="email2" placeholder="�̸����� �Է����ּ���" disabled="disabled"/>
                                        <select name="email3">
                                        <option selected="selected">�����ϼ���</option>
                                        <option value="naver.com">naver.com</option>
                                        <option value="daum.net">daum.net</option>
                                        <option value="gmail.com">gmail.com</option>
                                        <option value="hotmail.com">hotmail.com</option>
                                        <option id="dr">�����Է�</option>
                                        <option></option>
                                        </select>
                                        <input type="hidden" name="email"/>
					<!-- <input
						type="text" name = "email2" class="" id="inputemail2"
						placeholder="�̸����� �Է����ּ���"> -->
				</div>
				<div class="form-group">
					<label for="inputaddress">�ּ�</label>
					<input type="text" name="post1" class="inputText" size="10" /> - <input type="text" name="post2" class="inputText" size="10" /> <span class="buttonFuc"><a href="#" id="sendPost">�����ȣ</a></span>
					<input type="text" name="address1" class="inputText" size="50" readonly="readonly" />
					<input type="text" name="address2" class="inputText" size="50" />
					<input type="hidden" name="address"/>
					 <!-- <input type="tel" class="form-control" name = "address" id="inputaddress" placeholder="�ּҸ� �Է��� �ּ���"> -->
				</div>
	   		<li class="form-inline">
	   			<label for="inputbirthdate">�������</label>
	   			<input readonly="readonly" name = "birthdate" type="text" id="datepicker1">

	   		</li>
				<br>
				
				<div class="form-group text-center">
					<button type="button" id="join-submit" class="btn btn-primary">
						ȸ������<i class="fa fa-check spaceLeft"></i>
					</button>
					<button type="button" id="buttonMain" class="btn btn-warning">
						����������<i class="fa fa-times spaceLeft"></i>
					</button>
				</div>
			</form>
		</div>

	</article>
</body>
</html>