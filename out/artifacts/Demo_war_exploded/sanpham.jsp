<%@ page import="java.sql.ResultSet" %>
<%@ page import="vn.edu.nlu.fit.Utill.Util" %>
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
<%--            phần header--%>
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
				<h1><span class = "glyphicon glyphicon-gift addtop" aria-hidden = "true"></span>&nbsp;&nbsp;Sản phẩm</h1>	
				<div id = "sub-main">
					<div class = "row">
						<div class = "col-xs-12 col-sm-7 col-md-8 col-lg-9">
							<ol class = "breadcrumb">
								<li>Hệ thống</li>
								<li class="active">Sản phẩm</li>
							</ol>
						</div>
						<div class = "hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
							<div class = "timecount">10:11:22 <small>(06/08/2020)</small></div>
						</div>
					</div>
					<div class = "row space-top">
						<div class = "col-xs-12 col-sm-5 col-md-7 col-lg-7" style=" margin-bottom: 1%">
							<div class = "btn btn-danger btn-lg">
<%--								2.1 Chọn chức năng thêm sản phẩm: quản trị viên phải nhấp chuột vào nút thêm mới và nhập đầy đủ thông tin về cuốn sách sau đó nhấn nút thêm dữ liệu.--%>
								<a href = "themsanpham.jsp">Thêm mới</a>
							</div>
						</div>

					</div>
					<div class = "row margin0">
						<div class = "table-responsive table-sanpham">
							<table class = "table table-striped table-bordered">
								<thead>
									<tr>
										<th>STT</th>
										<th>Tên sản phẩm</th>
										<th>Giá</th>
										<th>Hình ảnh</th>
										<th>Mô tả</th>
										<th>Tác giả</th>
										<th>Mã sản phẩm </th>
										<th class="thaotac">Thao tác</th>
									</tr>
								</thead>
								<%
									ResultSet rs1 = (ResultSet) request.getAttribute("rs");
									while (rs1.next()){
								%>
								<tr>
									<td><%=rs1.getInt(1)%></td>
									<td class="mota"><%=rs1.getString(2)%></td>

									<td><%=rs1.getString(4)%>  ₫</td>

									<td><img class="i" src="<%=rs1.getString(6)%>" height="100" width="100"/></td>
									<td class="mota"><%=rs1.getString(7)%></td>

									<td class="mota"><%=rs1.getString(9)%> </td>
									<td><%=rs1.getString(15)%></td>
									<td>
<%--										2.3 Chọn chức năng cập nhật thông tin sản phẩm: quản trị viên nhấp chuột vào chức năng sửa thông tin về sách và nhấn nút cập nhật nhật dữ liệu.--%>
										<a title="Cập nhật sản phẩm" href = "<%=Util.fullPath("Chitietsp?id="+rs1.getInt(1))%>">
											<i class="far fa-edit" style="font-size: 20px; color: #03A9F4"></i>
										</a>
<%--										2.2 Chọn chức năng xóa sản phẩm: quản trị viên nhấp chuột vào chức năng xóa sản phẩm và chọn xác nhận xóa.--%>
                                        <a onclick="return confirm('Bạn có chắc chắn muốn xóa')" title="Xoá" href = "<%=Util.fullPath("Xoasanpham?id="+rs1.getInt(1))%>">
											<i class="fas fa-trash-alt" style="font-size: 20px; color: #03A9F4"></i>
										</a>
                                    </td>
								</tr>
								<% } %>

							</table>
						</div>
						<nav>
							<ul class="pagination">
								<li>
									<a href="#" aria-label="Previous">
										<span aria-hidden="true">&laquo;</span>
									</a>
								</li>
								<li class = "active"><a href="#">1</a></li>
								<li>
									<a href="#" aria-label="Next">
										<span aria-hidden="true">&raquo;</span>
									</a>
								</li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
			<jsp:include page="footer1.jsp"></jsp:include>
		</div>
	</body>
</html>
