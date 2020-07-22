<%@ page import="java.util.Date" %>
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
		<h1><i class="fas fa-copy" style="font-size: 17px"></i>   Đơn hàng</h1>
		<div id = "sub-main">
			<div class = "row">
				<div class = "col-xs-12 col-sm-7 col-md-8 col-lg-9">
					<ol class = "breadcrumb">
						<li>Hệ thống</li>
						<li class = "active">Quản lý đơn hàng</li>
					</ol>
				</div>
				<div class = "hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
					<div class = "timecount">19:11:22 <small>(12/11/2019)</small></div>
				</div>
			</div>
			<div class = "row space-top">
				<div class = "col-xs-12 col-sm-5 col-md-7 col-lg-7"></div>
				<div class = "col-xs-12 col-sm-7 col-md-5 col-lg-5">
					<div class = "input-group text-right">
						<input type = "text" class = "form-control" placeholder = "Bạn cần tìm gì?">
						<span class = "input-group-btn">
									<button class = "btn btn-danger" type = "button">Tìm kiếm</button>
								</span>
					</div>
				</div>
			</div>

			<div class = "row margin0 space">


				<div class = "col-xs-12 col-sm-2 col-md-4 col-lg-12 text-right padding0">
					<div class = "btn btn-danger btn-a " style="margin-top: 30px">
						<a href = "#">Xóa tất cả</a>
					</div>
				</div>
			</div>
			<div class = "row margin0">
				<div class = "table-responsive quantri">
					<table class = "table table-striped table-bordered">
						<thead>
						<tr>
							<th>STT</th>
							<th>Mã đơn hàng</th>
							<th>Tên khách hàng</th>
							<th>Địa chỉ</th>
							<th>Số điện thoại</th>
							<th>Ngày đặt</th>
							<th>Hình thức thanh toán</th>
							<th>Xác nhận đơn</th>
							<th>Trạng thái </th>
							<th>Chức năng</th>
						</tr>
						</thead>
						<%
							ResultSet rs = (ResultSet) request.getAttribute("r");
							while (rs.next()){
						%>
						<tr>
							<td style="text-align: center"><%=rs.getString(1)%></td>
							<td style="text-align: left"><%=rs.getString(2)%></td>
							<td style="width: 130px;text-align: left"><%=rs.getString(3)%></td>
							<td style="width: 140px;text-align: left"><%=rs.getString(4)%></td>
							<td style="text-align: left"><%=rs.getString(5)%></td>
							<td style="text-align: left;width: 100px"><%=rs.getString(6)%></td>
							<td style="text-align: left;width: 140px"><%=rs.getString(7)%></td>
<%--							<form action="<%= Util.fullPath("Tinhtrangdon?id="+rs.getInt(1)) %>" method="post">--%>
							<td  style="text-align: center;width: 120px">
								<a href="<%= Util.fullPath("Huydonhang?id="+rs.getInt(1)) %>" ><input type="button" name="tinhtrang" value="Hủy đơn hàng" style="margin-top: 5px;background: #a80000;color: white;border: 1px solid  #a80000;width: 100px"></a>
								<a href="<%= Util.fullPath("Tinhtrangdon?id="+rs.getInt(1)) %>" ><input  type="submit"  name="tinhtrang" value="Đang vận chuyển" style="margin-top: 5px;background: #1e6ad5;color: white;border: 1px solid  #1e6ad5;width: 100px"></a>
<%--								<br>--%>
								<a href="<%= Util.fullPath("Đagiao?id="+rs.getInt(1)) %>" ><input type="submit"  name="tinhtrang" value="Đã giao" style="margin-top: 5px;background: #238223;color: white;border: 1px solid  #238223;width: 100px" ></a>
							</td>
							</form>
							<td style="text-align: left"><%=rs.getString(8)%></td>
							<td style="text-align: center">
								<a href = "<%=Util.fullPath("Chitiethoadon?id="+rs.getInt(1))%>" title="Xem chi tiết"><i class="far fa-eye" style="font-size: 20px; color: #03A9F4 "></i>   </a>
								<a onclick="return confirm('Bạn có chắc chắn muốn xóa')" href = "<%=Util.fullPath("Xoadonhang?id="+rs.getInt(1))%>"><i class="fas fa-trash-alt" style="font-size: 20px; color: #03A9F4" title="Xóa"></i></a>
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