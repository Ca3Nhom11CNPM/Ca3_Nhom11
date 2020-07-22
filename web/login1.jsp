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
		
		<link rel="stylesheet" href="css1/layout1.css">

		<script src="https://kit.fontawesome.com/c25baca2b9.js" crossorigin="anonymous"></script>
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
		<![endif]-->
	</head>
	<body>
		<div class = "Zeptain">
			<h2>Đăng nhập</h2>
			<form>

				<span><i class="fas fa-user"></i></span><input type = "text" class="input_dn" name = "username" placeholder = "Tài khoản" required /><br />


				<span><i class="fas fa-lock"></i></span><input type = "password" name = "password" placeholder = "Mật khẩu" required /><br />
				<div class = "mirror mirror-child">
					<input type = "submit" name = "submit" value = "Đăng nhập" onclick = "window.location.href='index1.html'">
				</div>
				<div class = "box">

					<a href = "index1.jsp">Quay lại admin</a>
				</div>
				<input type = "checkbox" id = "remember" />
				<label for = "remember">Ghi nhớ thông tin</label>
			</form>
		</div>

	</body>
</html>