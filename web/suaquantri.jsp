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
    <title>Sửa quản trị</title>

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
                    <a href = "#" class = "dropdown-toggle" data-toggle = "dropdown" role = "button" aria-haspopup = "true" aria-expanded = "false">Zeptain Linh<span class = "caret caret-fix"></span></a>
                    <ul class = "dropdown-menu">
                        <li><a href = "homthu.jsp"><i class="far fa-envelope" style="font-size: 17px"></i>  Hòm thư</a></li>
                        <li><a href = "doimatkhau.jsp"><i class="fas fa-tools" style="font-size: 17px"></i>  Đổi mật khẩu</a></li>
                        <li role = "separator" class = "divider"></li>
                        <li><a href = "login1.jsp"><i class="far fa-times-circle"></i>&nbsp;</span>  Thoát</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <h1><span class = "glyphicon glyphicon-user addtop" aria-hidden = "true"></span>Sửa thông tin người dùng</h1>
        <div id = "sub-main">
            <div class = "row">
                <div class = "col-xs-12 col-sm-7 col-md-8 col-lg-9">
                    <ol class = "breadcrumb">
                        <li>Hệ thống</li>
                        <li>Quản trị viên</li>
                        <li class = "active">Sửa thông tin người dùng </li>
                    </ol>
                </div>
                <div class = "hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
                    <div class = "timecount">19:11:22 <small>(12/11/2019)</small></div>
                </div>
            </div>
            <div class = "row margin0 space-top">
                <div class = "option-h4 text-justify">
                    <form action="<%=Util.fullPath("Suanguoidung")%>" method="post">
                    <h4 style="color: #03A9F4; font-weight: bold"> Sửa thông tin</h4>
                    <%
                        ResultSet rs = (ResultSet) request.getAttribute("r");
                        while (rs.next()){
                    %>
                    <form class = "form-horizontal">
                        <div class = "form-group">
                            <p class="ttk">STT</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input type = "text" name="stt" class = "form-control4" value="<%=rs.getInt(1)%>"  style="margin-left: 75px">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="ttk">Tên tài khoản</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input type = "text" name="name" class = "form-control1" value="<%=rs.getString(2)%>">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="email_adm">Email</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input type = "email" name="email" class = "form-control4" value="<%=rs.getString(5)%>" style="margin-left: 65px">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="matkhau">Mật khẩu</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input type = "password" name="password" class = "form-control2" value="<%=rs.getString(3)%>">
                            </div>
                        </div>
                        <div class = "form-group">
                            <p class="laplaimk">Họ và tên</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input type = "text" name="fullname" class = "form-control2" value="<%=rs.getString(4)%>" style="margin-left: 43px">
                            </div>
                        </div>

<%--                        <div class = "form-group">--%>
<%--                            <p class="ht">Họ và tên</p>--%>
<%--                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">--%>
<%--                                <input type = "text" class = "form-control5">--%>
<%--                            </div>--%>
<%--                        </div>--%>
                        <div class = "form-group">
                            <p class="quyen">Quyền</p>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <input type = "text" name="quyen" class = "form-control4" value="<%=rs.getString(6)%>" style="margin-left: 60px">
                            </div>
                        </div>
                        <div class = "form-group space-top">
                            <label class = "col-xs-12 col-sm-4 col-md-3 col-lg-2 control-label"></label>
                            <div class = "col-xs-12 col-sm-6 col-md-6 col-lg-6">

                                    <button type="submit" class = "btn btn-danger btn-lg btn-a">Cập nhật tài khoản</button>

                            </div>
                        </div>
                    </form>

                    <% } %>
                    </form>

                </div>
            </div>
        </div>
        <jsp:include page="footer1.jsp"></jsp:include>
</div>
</body>
</html>