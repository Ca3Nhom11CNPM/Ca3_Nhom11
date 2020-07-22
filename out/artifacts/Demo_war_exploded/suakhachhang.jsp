<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
		<script src="https://kit.fontawesome.com/c25baca2b9.js" crossorigin="anonymous"></script>
		<script src="js1/jquery.min1.js"></script>
		<script src="js1/bootstrap.min1.js"></script>
		<script src="js1/chart.min1.js"></script>
		
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
<!--						<li class = "active-child"><a href = "#">Nobita.vn</a></li>-->
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
				<h1><i class="fas fa-heartbeat" style="font-size: 17px"></i>   Thông tin khách hàng</h1>
				<div id = "sub-main">
					<div class = "row">
						<div class = "col-xs-12 col-sm-7 col-md-8 col-lg-9">
							<ol class = "breadcrumb">
								<li>Hệ thống</li>
								<li>Khách hàng</li>
								<li class = "active">Thông tin khách hàng</li>
							</ol>
						</div>
						<div class = "hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
							<div class = "timecount">19:11:22 <small>(12/11/2019)</small></div>
						</div>
					</div>
					<div class = "row space-top thongtin">

						<div class = "col-xs-12 col-sm-9 col-md-9 col-lg-9">
							<form>
								<div class = "form-group">
									<label>Mã khách hàng</label>
									<input type = "text" class = "form-control" placeholder = "123">
								</div>
								<div class = "form-group">
									<label>Tên tài khoản</label>
									<input type = "text" class = "form-control" placeholder = "ngocdao">
								</div>
<!--								<div class = "form-group">-->
<!--									<label>Mật khẩu</label>-->
<!--									<input type = "password" class = "form-control" placeholder = "henry1110">-->
<!--								</div>	-->
								<div class = "form-group">
									<label>Họ và tên</label>
									<input type = "text" class = "form-control" placeholder = "Lưu Hiến Hoa">
								</div>
								<div class = "form-group">
									<label>Email</label>
									<input type = "email" class = "form-control" placeholder = "henry1110@yahoo.com">
								</div>
								<div class = "form-group">
									<label>Địa chỉ</label>
									<input type = "text" class = "form-control" placeholder = "164 xa Minh Thành - Chơn Thành - Bình Phước">
								</div>
								<div class = "form-group">
									<label>Số điện thoại</label>
									<input type = "text" class = "form-control" placeholder = "0918284466">
								</div>
							</form>
<!--							<div class = "space-top btn btn-danger btn-lg btn-a">-->
<!--								<a href = "#">Lưu thay đổi</a>-->
<!--							</div>-->
						</div>
					</div>
				</div>
			</div>
			<jsp:include page="footer1.jsp"></jsp:include>
		</div>
	</body>
</html>