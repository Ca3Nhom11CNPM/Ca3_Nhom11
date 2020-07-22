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
    <title>Quản lý nhà xuất bản</title>

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
        <h1><i class="fas fa-folder-open"></i> Quản lý nhà xuất bản</h1>
        <div id = "sub-main">
            <div class = "row">
                <div class = "col-xs-12 col-sm-7 col-md-8 col-lg-9">
                    <ol class = "breadcrumb">
                        <li>Hệ thống</li>
                        <li>Sản phẩm</li>
                        <li class="active">Quản lý nhà xuất bản</li>
                    </ol>
                </div>
                <div class = "hidden-xs col-sm-5 col-md-4 col-lg-3 text-right">
                    <div class = "timecount">19:11:22 <small>(12/11/2019)</small></div>
                </div>
            </div>
            <div class = "row space-top">
                <div class = "col-xs-12 col-sm-5 col-md-7 col-lg-7">
                    <div class = "btn btn-danger btn-lg">
                        <a href = "themnhaxuatban.jsp">Thêm mới</a>
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
<!--            <div class = "row space-top box-total">-->
<!--                <div class = "col-xs-12 col-sm-8 col-md-7 col-lg-6">-->
<!--                    <span><i>Tổng số danh muc: </i><strong>3</strong></span>-->
<!--                </div>-->
<!--            </div>-->
            <div class = "row margin0 space">

                <div class = "col-xs-12 col-sm-5 col-md-4 col-lg-3 padding0"></div>
                <div class = "col-xs-12 col-sm-2 col-md-4 col-lg-9 text-right padding0">
                    <div class = "btn btn-danger btn-a">
                        <a href = "#">Xóa tất cả</a>
                    </div>
                </div>
            </div>
            <div class = "row margin0">

                <div class = "table-responsive quantri">

                    <table class = "table table-striped table-bordered">

                        <thead>

                        <tr class="nxb">
                            <th class="stt">STT</th>
                            <th >Tên nhà xuất bản</th>
<%--                            <th>Active</th>--%>
                            <th class="sua1">Thao tác</th>
<%--                            <th class="xoa1">Xóa</th>--%>
                        </tr>
                        </thead>
                        <%
                            ResultSet rs1 = (ResultSet) request.getAttribute("r");
                            while (rs1.next()){
                        %>
                        <tr>
                            <td><%=rs1.getInt(1)%></td>
                            <td class="tennxb"><%=rs1.getString(2)%></td>
<%--                            <td><%=rs1.getInt(3)%></td>--%>
                            <td >
                                <a href = "<%=Util.fullPath("Chitietnhaxuatban?id="+rs1.getInt(1))%>"><i class="far fa-edit" style="font-size: 20px; color: #03A9F4 "></i>   </a>
                                <a onclick="return confirm('Bạn có chắc chắn muốn xóa')" title="Xoá" href = "<%=Util.fullPath("Xoanhaxuatban?id="+rs1.getInt(1))%>"><i class="fas fa-trash-alt" style="font-size: 20px; color: #03A9F4"></i></a>

                            </td>
<%--                            <td>--%>
<%--                                <a onclick="return confirm('Bạn có chắc chắn muốn xóa')" title="Xoá" href = "<%=Util.fullPath("Xoanhaxuatban?id="+rs1.getInt(1))%>"><i class="fas fa-trash-alt" style="font-size: 20px; color: #03A9F4"></i></a>--%>
<%--                            </td>--%>
                        </tr>
                        <% } %>


<!--                        <tr>-->
<!--                            <td>2</td>-->
<!--                            <td>1123</td>-->
<!--                            <td>Sức khỏe</td>-->
<!--                            <td>-->
<!--                                <a href = "suadm.jsp."><i class="far fa-edit" style="font-size: 20px; color: #03A9F4 "></i>   </a>-->
<!--                            </td>-->
<!--                            <td>-->
<!--                                <a href = "#"><i class="fas fa-trash-alt" style="font-size: 20px; color: #03A9F4"></i></a>-->
<!--                            </td>-->
<!--                        </tr>-->
<!--                        <tr>-->
<!--                            <td>3</td>-->
<!--                            <td>3202</td>-->
<!--                            <td>Truyện tranh</td>-->
<!--                            <td>-->
<!--                                <a href = "suadm.jsp."><i class="far fa-edit" style="font-size: 20px; color: #03A9F4 "></i>   </a>-->
<!--                            </td>-->
<!--                            <td>-->
<!--                                <a href = "#"><i class="fas fa-trash-alt" style="font-size: 20px; color: #03A9F4"></i></a>-->
<!--                            </td>-->
<!--                        </tr>-->
<!--                        <tr>-->
<!--                            <td>4</td>-->
<!--                            <td>3212</td>-->
<!--                            <td>Văn học</td>-->
<!--                            <td>-->
<!--                                <a href = "suadm.jsp."><i class="far fa-edit" style="font-size: 20px; color: #03A9F4 "></i>   </a>-->
<!--                            </td>-->
<!--                            <td>-->
<!--                                <a href = "#"><i class="fas fa-trash-alt" style="font-size: 20px; color: #03A9F4"></i></a>-->
<!--                            </td>-->
<!--                        </tr>-->
<!--                        <tr>-->
<!--                            <td>5</td>-->
<!--                            <td>3203</td>-->
<!--                            <td>Hướng nghiệp-Kĩ năng</td>-->
<!--                            <td>-->
<!--                                <a href = "suadm.jsp."><i class="far fa-edit" style="font-size: 20px; color: #03A9F4 "></i>   </a>-->
<!--                            </td>-->
<!--                            <td>-->
<!--                                <a href = "#"><i class="fas fa-trash-alt" style="font-size: 20px; color: #03A9F4"></i></a>-->
<!--                            </td>-->
<!--                        </tr>-->

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