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
							<div class = "timecount">19:11:22 <small>(12/11/2019)</small></div>
						</div>
					</div>
					<div class = "row space-top">
						<div class = "col-xs-12 col-sm-5 col-md-7 col-lg-7">
							<div class = "btn btn-danger btn-lg">
								<a href = "themsanpham.jsp">Thêm mới</a>
							</div>
						</div>
						<div class = "col-xs-12 col-sm-7 col-md-5 col-lg-5">
							<div class = "input-group text-right">
								<input type = "text" class = "form-control" placeholder = "Bạn cần tìm gì?">
								<span class = "input-group-btn">
									<button class = "btn btn-danger" type = "button">Tìm kiếm</button>
								</span>
							</div>
						</div>
					</div>
					<div class = "row space-top box-total">
						<div class = "col-xs-12 col-sm-8 col-md-7 col-lg-6">
							<span><i>Tổng số sản phẩm: </i><strong>123</strong> |</span>
							<span><i>Có </i><strong>21</strong> <i>sản phẩm chưa đăng</i></span>
						</div>
					</div>
					<div class = "row margin0 space">
						<div class = "col-xs-12 col-sm-5 col-md-4 col-lg-3 padding0">
							<div class = "form-inline">
								<select class = "form-control">
									<option>Lọc sản phẩm....</option>
									<option>Giá bán từ thấp đến cao</option>
									<option>Giá bán từ cao đến thấp</option>
									<option>a -> z</option>
									<option>a <- z</option>

								</select>
								<button type = "submit" class = "btn btn-danger">Lọc</button>
							</div>
						</div>

						<div class = "col-xs-12 col-sm-2 col-md-4 col-lg-9 text-right padding0">
							<div class = "btn btn-danger btn-a">
								<a href = "#">Xóa tất cả</a>
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
<%--										<th>Loại</th>--%>
										<th>Giá</th>
<%--										<th>Số lượng</th>--%>
										<th>Hình ảnh</th>
										<th>Mô tả</th>
<%--										<th>Công ty</th>--%>
										<th>Tác giả</th>
<%--										<th>Ngày xuất bản</th>--%>
<%--										<th>Kích thước</th>--%>
<%--										<th>Nhà xuất bản</th>--%>
<%--										<th>Loại bìa</th>--%>
<%--										<th>Số trang</th>--%>
										<th>Mã sản phẩm </th>
<%--										<th>Giảm giá</th>--%>
<%--										<th>Active</th>--%>
										<th class="thaotac">Thao tác</th>
<%--										<th>Xóa</th>--%>
									</tr>
								</thead>
								<%
									ResultSet rs1 = (ResultSet) request.getAttribute("rs");
									while (rs1.next()){
								%>
								<tr>
									<td><%=rs1.getInt(1)%></td>
									<td class="mota"><%=rs1.getString(2)%></td>
<%--									<td><%=rs1.getInt(3)%></td>--%>
									<td><%=rs1.getString(4)%>  ₫</td>
<%--									<td><%=rs1.getInt(5)%></td>--%>
									<td><img class="i" src="<%=rs1.getString(6)%>" height="100" width="100"/></td>
									<td class="mota"><%=rs1.getString(7)%></td>
<%--									<td><%=rs1.getString(8)%></td>--%>
									<td class="mota"><%=rs1.getString(9)%> </td>
<%--									<td> <%=rs1.getString(10)%></td>--%>
<%--									<td><%=rs1.getString(11)%></td>--%>
<%--									<td><%=rs1.getString(12)%></td>--%>
<%--									<td><%=rs1.getString(13)%></td>--%>
<%--									<td><%=rs1.getString(14)%></td>--%>
									<td><%=rs1.getString(15)%></td>
<%--									<td><%=rs1.getString(16)%></td>--%>
<%--									<td><%=rs1.getString(17)%></td>--%>
									<td>
										<a href = "<%=Util.fullPath("Chitietsp?id="+rs1.getInt(1))%>"><i class="far fa-edit" style="font-size: 20px; color: #03A9F4"></i>  </a>

                                        <a onclick="return confirm('Bạn có chắc chắn muốn xóa')" title="Xoá" href = "<%=Util.fullPath("Xoasanpham?id="+rs1.getInt(1))%>"><i class="fas fa-trash-alt" style="font-size: 20px; color: #03A9F4"></i></a>
                                    </td>
<%--									<td>--%>
<%--										<a onclick="return confirm('Bạn có chắc chắn muốn xóa')" title="Xoá" href = "<%=Util.fullPath("Xoasanpham?id="+rs1.getInt(1))%>"><i class="fas fa-trash-alt" style="font-size: 20px; color: #03A9F4"></i></a>--%>
<%--									</td>--%>
								</tr>
								<% } %>
<!--								<tr>-->
<!--									<td>2</td>-->
<!--									<td><img class="img-responsive" src="images1/book_pr/vhteen/2.jpg" alt=""/></td>-->
<!--									<td>Animorphs</td>-->
<!--									<td>Katherine Applegate</td>-->

<!--									<td>Tiểu thuyết</td>-->
<!--									<td>68.000 ₫</td>-->
<!--									<td>57.800 ₫</td>-->
<!--									<td>Cùng tiếp tục theo dõi câu chuyện huyền bí - giả tưởng về việc chống lại những tên ngoài-->
<!--										hành tinh xâm nhập và chiếm não của người bị xâm nhập.-->
<!--									</td>-->
<!--									<td>Còn hàng</td>-->
<!--									<td>01/01/2019</td>-->
<!--									<td>-->
<!--										<a href = "suasanpham.jsp"><i class="far fa-edit" style="font-size: 20px; color: #03A9F4"></i>  </a>-->
<!--									</td>-->
<!--									<td>-->
<!--										<a href = "#"><i class="fas fa-trash-alt" style="font-size: 20px; color: #03A9F4"></i></a>-->
<!--									</td>-->
<!--								</tr>-->
<!--								<tr>-->
<!--									<td>3</td>-->
<!--									<td><img class="img-responsive" src="images1/book_pr/vhteen/3.jpg"alt=""/></td>-->
<!--									<td>Bạn Trai Bản Giới Hạn</td>-->
<!--									<td>MISA</td>-->
<!--									<td>Văn học teen</td>-->
<!--									<td>88.000 ₫</td>-->
<!--									<td>74.800 ₫</td>-->
<!--									<td>-->
<!--										Trong những giấc mơ của thiếu nữ đương xuân, thể nào cũng ấp ủ hình ảnh một anh người yêu lý tưởng.-->

<!--										Còn trong giấc mơ của Vi Tâm, một góc vạt áo anh ta cũng chưa từng thấp thoáng. Tuổi hoa mười sáu mà xung quanh chỉ có hoàng hôn đỏ ối của những chiều nhức nhối tan trường về lẻ loi.-->

<!--										Để lấn át cảm giác lạc lõng, cô bèn tưởng tượng mình thuộc mẫu nữ chính vô cùng kiên cường, nuốt nước mắt vào trong, ưỡn vai thẳng lưng, quyết không dựa dẫm đàn ông trong suốt cuộc đời này. Thực tế thì học hành làng nhàng, thể thao lươn khươn, không nuôi ước vọng, phó mặc mình cho tháng ngày xô đẩy.-->

<!--										Thế mà rồi anh người yêu cũng đến, còn hơn xa mọi hình mẫu lý tưởng mà các cô gái có thể vẽ ra. Đẹp trai bao dung giỏi giang tận tụy. Và nhất là đã khéo léo thay đổi cô nàng.-->

<!--										Mà bí quyết của Vi Tâm là gì ấy?</td>-->
<!--									<td>Hết hàng</td>-->
<!--									<td>12/10/2018</td>-->

<!--									<td>-->
<!--										<a href = "suasanpham.jsp"><i class="far fa-edit" style="font-size: 20px; color: #03A9F4"></i>  </a>-->
<!--									</td>-->
<!--									<td>-->
<!--										<a href = "#"><i class="fas fa-trash-alt" style="font-size: 20px; color: #03A9F4"></i></a>-->
<!--									</td>-->
<!--								</tr>-->
<!--								<tr>-->
<!--									<td>4</td>-->

<!--									<td><img class="img-responsive" src="images1/book_pr/vhteen/4.jpg" alt=""/></td>-->
<!--									<td>Con Mèo Số Một Thế Giới</td>-->
<!--									<td>Higuchi Yuko</td>-->
<!--									<td>Văn học teen</td>-->
<!--									<td>	82.000 ₫</td>-->
<!--									<td>	69.700 ₫</td>-->
<!--									<td>	Miu Xám là bạn thân nhất của chú bé từ khi chú còn nhỏ xíu. Ngày nào chú bé cũng ôm Miu Xám đi ngủ. Lúc buồn, lúc vui, họ đều ở bên nhau. Miu Xám đích thực là con mèo bông hạnh phúc nhất trên đời.-->
<!--										Nhưng chú bé đã bảy tuổi rồi, sắp đến độ tuổi mà mọi đứa trẻ đều chán chơi thú bông. Miu Xám lo lắm. Miu Xám muốn trở thành mèo thật để được ở bên chú nhiều hơn. Miu Xám muốn trở thành con mèo số một thế giới để được chú yêu thương mãi mãi.-->
<!--										Theo lời các bạn mách bảo, Miu Xám lên đường đi tìm những sợi ria mèo có phép thuật để biến ước mơ của mình thành hiện thực. Nhưng “số một thế giới” là gì? Hạnh phúc thật sự là gì? Trên hành trình nhiều niềm vui nhưng cũng lắm gian nan đó, liệu Miu Xám có thể tìm được câu trả lời?-->
<!--										Con Mèo Số Một Thế Giới là một cuốn sách có thể khiến tim ta ấm áp, của Higuchi Yuko, hoạ sĩ nổi tiếng Nhật Bản.-->

<!--									</td>-->
<!--									<td>Còn hàng</td>-->
<!--									<td>01/10/2018</td>-->

<!--									<td>-->
<!--										<a href = "suasanpham.jsp"><i class="far fa-edit" style="font-size: 20px; color: #03A9F4"></i>  </a>-->
<!--									</td>-->
<!--									<td>-->
<!--										<a href = "#"><i class="fas fa-trash-alt" style="font-size: 20px; color: #03A9F4"></i></a>-->
<!--									</td>-->
<!--								</tr>-->
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