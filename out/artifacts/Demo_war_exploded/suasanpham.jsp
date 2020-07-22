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
        <h1>Sửa sản phẩm</h1>
        <div id = "sub-main">
            <div class = "row">
                <div class = "col-xs-12 col-sm-7 col-md-8 col-lg-9">
                    <ol class = "breadcrumb">
                        <li>Hệ thống</li>
                        <li>Sản phẩm</li>
                        <li class = "active">Sửa sản phẩm</li>
                    </ol>
                </div>
                <div class = "hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
                    <div class = "timecount">19:11:22 <small>(12/11/2019)</small></div>
                </div>
            </div>
            <div class = "row margin0 space-top">
                <div class = "option-h4 text-justify">
                    <form action="<%=Util.fullPath("Updatesp")%>" method="post">
                    <h4 style="color: #03A9F4; font-weight: bold"> Sửa thông tin sản phẩm </h4>
                    <%
                        ResultSet rs = (ResultSet) request.getAttribute("rs");
                        while (rs.next()){
                    %>
                    <form class = "form-horizontal">
                        <div class = "form-group">
                            <p class="matkhau">Ma sản phẩm</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input type = "text" class = "form-tensp" name="id" value="<%=rs.getInt(1)%>">
                            </div>
                        </div>

                        <div class = "form-group">
                            <p class="matkhau">Tên sản phẩm</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input type = "text" class = "form-tensp" name="name" value="<%=rs.getString(2)%>">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="laplaimk">Thể Loại</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input type = "text" class = "form-tacgia" name="type" value="<%=rs.getString(3)%>">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="email_adm">Giá</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input type = "text" class = "form-theloai" name="price" value="<%=rs.getString(4)%>">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="ht">Số lượng</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input type = "text" class = "form-giaban" name="quatity" value="<%=rs.getString(5)%>">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="ttk">Hình ảnh </p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input type = "text" class = "image" name="img" value="<%=rs.getString(6)%>">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="ht">Mô tả</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input type = "text" class = "form-mota" name="des" value="<%=rs.getString(7)%>">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="ht">Công ty</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input style="margin-left: 116px" type = "text" class = "form-mota" name="congty" value="<%=rs.getString(8)%>">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="laplaimk">Tác giả</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input style="margin-left: 118px" type = "text" class = "form-tacgia" name="tacgia" value="<%=rs.getString(9)%>">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="ht">Ngày phát hành</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input style="margin-left: 68px" type = "text" class = "form-ngayph" name="ngayxuatban" value="<%=rs.getString(10)%>">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="ht">Kích thước</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input style="margin-left: 94px" type = "text" class = "form-ngayph" name="kichthuoc" value="<%=rs.getString(11)%>">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="ht">Nhà xuất bản</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input style="margin-left: 80px" type = "text" class = "form-ngayph" name="nxb" value="<%=rs.getString(12)%>">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="ht">Loại bìa</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input style="margin-left: 110px" type = "text" class = "form-ngayph" name="loaibia" value="<%=rs.getString(13)%>">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="ht">Số trang</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input style="margin-left: 108px" type = "text" class = "form-ngayph" name="sotrang" value="<%=rs.getString(14)%>">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="ht">Mã sản phẩm</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input style="margin-left: 80px" type = "text" class = "form-ngayph" name="masp" value="<%=rs.getString(15)%>">
                            </div>
                        </div>

                        <div class = "form-group">
                            <p class="ht">Giảm giá</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input style="margin-left: 106px" type = "text" class = "form-khuyenmai" name="lower" value="<%=rs.getString(16)%>">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="ht">Active</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input style="margin-left: 120px" type = "text" class = "form-khuyenmai" name="active" value="<%=rs.getString(17)%>">
                            </div>
                        </div>
                        <div class = "form-group space-top">
                            <label class = "col-xs-12 col-sm-4 col-md-3 col-lg-2 control-label"></label>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <button type="submit" class = "btn btn-danger btn-lg btn-a">
                                 Cập nhật dữ liệu
                                    <!--									<a href = "#">Thoát</a>-->
                                </button>
                            </div>
                        </div>
                    </form>
                    <% } %>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer1.jsp"></jsp:include>
</div>
</body>
</html>