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
<%
    String err = "";
    if (request.getAttribute("err") != null) {
        err = (String) request.getAttribute("err");
    }
%>
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
        <h1><span class = "glyphicon glyphicon-folder-open addtop" aria-hidden = "true"></span>&nbsp;  Sửa danh mục</h1>
        <div id = "sub-main">
            <div class = "row">
                <div class = "col-xs-12 col-sm-7 col-md-8 col-lg-9">
                    <ol class = "breadcrumb">
                        <li>Hệ thống</li>
                        <li>Danh mục sản phẩm</li>
                        <li class = "active">Sửa tình trang đơn</li>
                    </ol>
                </div>
                <div class = "hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
                    <div class = "timecount">19:11:22 <small>(12/11/2019)</small></div>
                </div>
            </div>
            <div class = "row margin0 space-top">
                <div class = "option-h4 text-justify">
                    <form action="<%=Util.fullPath("Tinhtrangdon")%>" method="post">
                        <h4>Tình trang đơn</h4>


                        <form>
                            <%
                                ResultSet rs = (ResultSet) request.getAttribute("r");
                                while (rs.next()){
                            %>
                            <p style="color: red"><%=err%>
                            <div class = "madm">
                                <label>Id</label><br>
                                <input type = "text" class = "texttendm" id="madanhmuc" name="id" value="<%=rs.getInt(1)%>">

                            </div>
                            <div class = "tendm">
                                <label>Tình trạng đơn hàng</label><br>
                                <input type = "text" class = "texttendm"  name="name" value="<%=rs.getString(2)%>" >


                            </div>



                            <button type="submit" class = "btn btn-danger btn-lg btn-a">Lưu thay đổi
                            </button>
                            <% } %>
                        </form>


                    </form>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="footer1.jsp"></jsp:include>
</div>
<script>
    function show1(){
        document.getElementById('div1').style.display ='block';
        document.getElementById('div2').style.display ='none';
    }
    function show2(){
        document.getElementById('div1').style.display = 'none';
        document.getElementById('div2').style.display ='block';
    }
</script>
</body>
</html>