﻿<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<base href="" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="copyright" content="" />
	<title>Quản trị hệ thống</title>

	<!--		<link rel="shortcut icon" type="image/x-icon" href="images1/icon-logo.png" />-->
	<link href="css1/bootstrap.min1.css" rel="stylesheet" />
	<link href="css1/layout1.css" rel="stylesheet" />

	<script src="js1/jquery.min1.js"></script>
	<script src="js1/bootstrap.min1.js"></script>
	<script src="js1/chart.min1.js"></script>
	<script src="https://kit.fontawesome.com/c25baca2b9.js" crossorigin="anonymous"></script>

	<!--[if lt IE 9]>
	<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
<div class = "container-fluid padding0">
	<jsp:include page="header1.jsp"></jsp:include>
	<div id = "main">
		<nav class = "navbar navbar-default">
			<ul class = "nav navbar-nav navbar-right">

				<li class = "dropdown active">
					<a href = "#" class = "dropdown-toggle" data-toggle = "dropdown" role = "button" aria-haspopup = "true" aria-expanded = "false">Nobita.vn<span class = "caret caret-fix"></span></a>
					<ul class = "dropdown-menu">
						<li><a href = "homthu.jsp"><i class="far fa-envelope" style="font-size: 17px"></i>  Hòm thư</a></li>
						<li><a href = "doimatkhau.jsp"><i class="fas fa-tools" style="font-size: 17px"></i>  Đổi mật khẩu</a></li>
						<li role = "separator" class = "divider"></li>
						<li><a href = "login1.jsp"><i class="far fa-times-circle"></i>&nbsp;</span>  Thoát</a></li>
					</ul>
				</li>
			</ul>
		</nav>
		<h1><span class = "glyphicon glyphicon-user addtop" aria-hidden = "true"></span>&nbsp;&nbsp;Thêm quản trị viên</h1>
		<div id = "sub-main">
			<div class = "row">
				<div class = "col-xs-12 col-sm-7 col-md-8 col-lg-9">
					<ol class = "breadcrumb">
						<li>Hệ thống</li>
						<li>Quản trị viên</li>
						<li class = "active">Thêm mới quản trị</li>
					</ol>
				</div>
				<div class = "hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
					<div class = "timecount">19:11:22 <small>(12/11/2019)</small></div>
				</div>
			</div>
			<div class = "row margin0 space-top">
				<div class = "option-h4 text-justify">
					<h4 style="color: #03A9F4; font-weight: bold"> Thêm mới</h4>
					<form class = "form-horizontal">
						<div class = "form-group">
							<p class="ttk">Tên tài khoản</p>
							<div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
								<input type = "text" class = "form-control1">
							</div>
						</div>
						<div class = "form-group">
							<p class="matkhau">Mật khẩu</p>
							<div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
								<input type = "password" class = "form-control2">
							</div>
						</div>
						<div class = "form-group">
							<p class="laplaimk">Lặp lại mật khẩu</p>
							<div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
								<input type = "password" class = "form-control3">
							</div>
						</div>
						<div class = "form-group">
							<p class="email_adm">Email</p>
							<div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
								<input type = "email" class = "form-control4">
							</div>
						</div>
						<div class = "form-group">
							<p class="ht">Họ và tên</p>
							<div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
								<input type = "text" class = "form-control5">
							</div>
						</div>
						<div class = "form-group">
							<p class="quyen">Quyền</p>
							<div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
								<select class = "form-control6">
									<option>Quản trị cấp cao</option>
									<option>Admin</option>
									<option>Quản trị viên cấp 1</option>
								</select>
							</div>
						</div>
						<div class = "form-group space-top">
							<label class = "col-xs-12 col-sm-4 col-md-3 col-lg-2 control-label"></label>
							<div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
								<div class = "btn btn-danger btn-lg btn-a">
									<a href = "#">Thêm tài khoản</a>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer1.jsp"></jsp:include>
</div>
</body>
</html>