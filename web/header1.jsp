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
    <title>Quản trị hệ thống bán sách</title>

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
    <header>
        <div class = "nav-side-menu">
            <div class = "brand">
                <a href = "index1.jsp">
                    <img class = "img-responsive margin0auto" src="images1/nobitavn-103639.jpg" height="343" width="800"/>
                </a>
            </div>
            <div class = "toggle-btn" data-toggle = "collapse" data-target = "#menu-content"></div>
            <div class = "menu-list">
                <ul id = "menu-content" class = "menu-content collapse">
                    <li class = "active"><a href = "index1.jsp"><i class="fas fa-globe-americas" style="font-size: 17px"></i> Tổng quan</a></li>

                    <li data-toggle = "collapse" data-target = "#product" class = "collapsed">
                        <a href = "<%=Util.fullPath("Listsanpham")%>"><i class="fas fa-cookie" style="font-size: 17px"></i>  Sản phẩm<span class = "caret"></span></a>
                    </li>
                    <ul class = "sub-menu " id = "product">

                        <li><a href = "<%=Util.fullPath("Listsanpham")%>"><span class = "fas fa-folder-open" aria-hidden = "">&nbsp;</span>Quản lý sản phẩm</a></li>
                        <li><a href = "<%=Util.fullPath("Listdanhmuc")%>"><i class="fas fa-folder-open"></i>Quản  lý danh mục</a></li>
                        <li><a href = "<%=Util.fullPath("ListNXB")%>"><i class="fas fa-folder-open"></i> Quản lý nhà xuất bản</a></li>
                    </ul>
                    <li data-toggle = "collapse" data-target = "#media" class = "collapsed">
                        <a href = "<%=Util.fullPath("Quanlydonhang")%>"><i class="fas fa-file-invoice" style="font-size: 17px"></i>Quản lý đơn hàng<span class = ""></span></a>
                    </li>
                    <li><a href = "<%=Util.fullPath("ListQuanTriVien")%>"><i class="fas fa-users" style="font-size: 17px" ></i>  Quản lý người dùng</a>
                    </li>

                </ul>
            </div>
        </div>
    </header>
</body>
</html>
