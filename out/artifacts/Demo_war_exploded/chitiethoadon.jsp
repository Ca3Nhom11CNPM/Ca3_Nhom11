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
        <h1><span class = "glyphicon glyphicon-folder-open addtop" aria-hidden = "true"></span>&nbsp; Chi tiết hóa đơn</h1>
        <div id = "sub-main">
            <div class = "row">
                <div class = "col-xs-12 col-sm-7 col-md-8 col-lg-9">
                    <ol class = "breadcrumb">
                        <li>Hệ thống</li>
                        <li>Quản lý hóa đơn</li>
                        <li class = "active">Chi tiết hóa đơn</li>
                    </ol>
                </div>
                <div class = "hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
                    <div class = "timecount">19:11:22 <small>(12/11/2019)</small></div>
                </div>
            </div>
            <div class = "row margin0 space-top">
                <div class = "option-h4 text-justify">

                        <h4>Chi tiết hóa đơn</h4>
                        <%
                            ResultSet rs = (ResultSet) request.getAttribute("r");
                            while (rs.next()){
                        %>
                        <form>
                            <div class = "madm">
                                <label>STT</label><br>
                                <input type = "text" class = "texttendm" id="madanhmuc" name="id" placeholder="<%=rs.getInt(1)%>"  >

                            </div>
                            <div class = "tendm">
                                <label>Mã hóa đơn</label><br>
                                <input type = "text" class = "texttendm" name="name" placeholder="<%=rs.getString(2)%>">

                            </div>
                            <div class = "tendm">
                                <label>Tên khách hàng</label><br>
                                <input type = "text" class = "texttendm"  placeholder="<%=rs.getString(4)%>" name="active">

                            </div>
                            <div class = "tendm">
                                <label>Mã sản phẩm</label><br>
                                <input type = "text" class = "texttendm"  placeholder="<%=rs.getString(3)%>" name="active">

                            </div>
                            <div class = "tendm">
                                <label>Số lượng</label><br>
                                <input type = "text" class = "texttendm"  placeholder="<%=rs.getString(5)%>" name="active">

                            </div>
                            <div class = "tendm">
                                <label>Đơn giá</label><br>
                                <input type = "text" class = "texttendm"  placeholder="<%=rs.getString(6)%>" name="active">

                            </div>
                            <div class = "tendm">
                                <label>Số điện thoại</label><br>
                                <input type = "text" class = "texttendm"  placeholder="<%=rs.getString(7)%>" name="active">

                            </div>
                            <div class = "tendm">
                                <label>Địa chỉ</label><br>
                                <input type = "text" class = "texttendm"  placeholder="<%=rs.getString(8)%>" name="active">

                            </div>
                            <div class = "tendm">
                                <label>Hình thức</label><br>
                                <input type = "text" class = "texttendm"  placeholder="<%=rs.getString(9)%>" name="active">

                            </div>
                            <div class = "tendm">
                                <label>Ngày mua</label><br>
                                <input type = "text" class = "texttendm"  placeholder="<%=rs.getString(10)%>" name="active">

                            </div>
                            <div class = "tendm">
                                <label>Tình trạng đơn hàng</label><br>
                                <input type = "text" class = "texttendm"  placeholder="<%=rs.getString(11)%>" name="active">

                            </div>
                          <a  class = "btn btn-danger btn-lg btn-a" href="<%= Util.fullPath("/Quanlydonhang") %>">
                            Trở về
                        </a>

                        </form>
                        <% } %>

                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer1.jsp"></jsp:include>
</div>
</body>
</html>