<%@ page import ="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vn.edu.nlu.fit.Utill.Util" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Create Account</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Favicons -->
    <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="apple-touch-icon" href="images/icon.png">

    <!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Satisfy" rel="stylesheet">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/plugins.css">
    <link rel="stylesheet" href="css/style.css">

    <!-- Cusom css -->
    <link rel="stylesheet" href="css/custom.css">

    <!-- Modernizer js -->
    <script src="js/vendor/modernizr-3.5.0.min.js"></script>
    <!--	Font awesome-->
    <script src="https://kit.fontawesome.com/c25baca2b9.js" crossorigin="anonymous"></script>
</head>
<body>
<%
    String name_err ="", userName_err="", phone_err="",  password_err="", repass_err="";
    if(request.getAttribute("name_err")!=null){
        name_err = (String) request.getAttribute("name_err");
    }
    if(request.getAttribute("userName_err")!=null){
        userName_err= (String) request.getAttribute("userName_err");
    }
    if(request.getAttribute("phone_err")!=null){
        phone_err= (String) request.getAttribute("phone_err");
    }
    if(request.getAttribute("password_err")!=null){
        password_err= (String) request.getAttribute("password_err");
    }
    if(request.getAttribute("repass_err")!=null){
        repass_err= (String) request.getAttribute("repass_err");
    }

    //
    String name ="", userName="", phone="",  password="", repass="", check="";
    if(request.getAttribute("name")!=null){
        name = (String) request.getAttribute("name");
    }
    if(request.getAttribute("userName")!=null){
        userName= (String) request.getAttribute("userName");
    }
    if(request.getAttribute("phone")!=null){
        phone= (String) request.getAttribute("phone");
    }
    if(request.getAttribute("password")!=null){
        password= (String) request.getAttribute("password");
    }
    if(request.getAttribute("repass")!=null){
        repass= (String) request.getAttribute("repass");
    }

%>

<!--[if lte IE 9]>
<p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
<![endif]-->

<!-- Main wrapper -->
<div class="wrapper" id="wrapper">

    <!-- Header -->
    <jsp:include page="header.jsp"></jsp:include>
    <!-- //Header -->
    <!-- Start Search Popup -->
    <div class="box-search-content search_active block-bg close__top">
        <form id="search_mini_form" class="minisearch" action="#">
            <div class="field__search">
                <input type="text" placeholder="Tìm kiếm tựa sách...">
                <div class="action">
                    <a href="#"><i class="zmdi zmdi-search"></i></a>
                </div>
            </div>
        </form>
        <div class="close__wrap">
            <span>close</span>
        </div>
    </div>
    <!-- End Search Popup -->
    <!-- Start Bradcaump area -->
    <div class="ht__bradcaump__area ">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="bradcaump__inner text-center">

                        <nav class="bradcaump-content1">
                            <a class="breadcrumb_item" href="index.html">Trang chủ</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Đăng kí tài khoản</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%--    <div class="maincontent bg--white pt--80 pb--55">--%>
<%--        <div class="registerform">--%>
<%--            <form action="<%= Util.fullPath("DoRegisterSL") %>" method="post">--%>
<%--                <h3 class="ttdn">Thông tin đăng nhập</h3>--%>
<%--                <%--%>
<%--//                    ArrayList <String> err = (ArrayList<String>) request.getAttribute("error");--%>
<%--//                    if(err == null) err= new ArrayList<>();--%>
<%--//                    for (String s : err){--%>
<%--                %>--%>
<%--&lt;%&ndash;                <div class="alert-danger"><%= s%>&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <%}%>&ndash;%&gt;--%>
<%--&lt;%&ndash;//                <div class="field">&ndash;%&gt;--%>
<%--&lt;%&ndash;//                    <div class="textlabel">&ndash;%&gt;--%>
<%--&lt;%&ndash;//                        <label for="iduser" style="font-weight: bold">Tên tài khoản: </label> <span class="Required">*</span>:&ndash;%&gt;--%>
<%--&lt;%&ndash;//                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;//                    <input type="text" id="iduser" name="uname" value="<%= Util.getParam(request, "uname")%>" Required="required">&ndash;%&gt;--%>
<%--&lt;%&ndash;//                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <div class="field">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <div class="textlabel">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <label for="idemail" style="font-weight: bold">Email</label> <span class="Required">*</span>:&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <input type="email"  id="idemail" name="email" value="<%= request.getParameter("email") == null ? "" : request.getParameter("email").trim()%>" required="required">&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <div class="field">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <div class="textlabel">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <label for="idpassword" style="font-weight: bold">Mật khẩu</label> <span class="Required">*</span>:&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <input autocomplete="off" id="idpassword" type="password" name="password" required="required">&ndash;%&gt;--%>

<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <div class="field">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <div class="textlabel">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <label for="repassword" style="font-weight: bold">Xác nhận mật <br>khẩu</label> <span class="Required">*</span>:&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <input autocomplete="off" id="repassword" type="password" name="repassword" required="required">&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--                <div class="clear"></div>--%>
<%--                <h3 class="ttcn" style="margin-bottom: 20px">Thông tin cá nhân</h3>--%>
<%--                <div class="field1">--%>
<%--                    <div class="textlabel">--%>
<%--                        <label for="fullname" style="font-weight: bold">Họ và tên</label> <span class="Required">*</span>:--%>
<%--                    </div>--%>
<%--                    <select id="gender" name="gender" class="selectfield Field70">--%>
<%--                        <option value="Nam" <%if (( request.getParameter("gender") == null ? "" : request.getParameter("gender").trim()).equals("Nam")) {%>--%>
<%--                                selected <%}%>>Nam</option>--%>
<%--                        <option value="Nữ" <%if (( request.getParameter("gender") == null ? "" : request.getParameter("gender").trim()).equals("Nữ")) {%>--%>
<%--                                selected <%}%>>Nữ</option>--%>
<%--                    </select>--%>
<%--                    <input  id="fullname" type="text" name="fullname" class="Field197" value="<%= request.getParameter("fullname") == null ? "" : request.getParameter("fullname").trim()%>" required="required">--%>
<%--                </div>--%>
<%--&lt;%&ndash;                <div class="field1">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <div class="textlabel">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <label for="telephone" style="font-weight: bold; margin-top: 20px">Điện thoại</label> <span class="Required">*</span>:&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <input  id="telephone" class="telephone" style="margin-left: 70px; margin-top: 20px; width: 400px; height: 40px;"type="text" name="phone" value="<%= request.getParameter("phone") == null ? "" : request.getParameter("phone").trim()%>" required="required">&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <div class="field1">&ndash;%&gt;--%>
<%--&lt;%&ndash;                    <div class="birthday" style="; margin-top: 30px">&ndash;%&gt;--%>
<%--&lt;%&ndash;                        <label for="telephone" style="font-weight: bold">Ngày sinh</label>:&ndash;%&gt;--%>
<%--&lt;%&ndash;                    </div>&ndash;%&gt;--%>

<%--&lt;%&ndash;                    <input type="date" id="birthday" class="textbirth" style="margin-left: 150px;margin-top: -50px; width: 400px; height: 40px;" name="birthday" value="<%= request.getParameter("birthday") == null ? "" : request.getParameter("birthday").trim()%>">&ndash;%&gt;--%>
<%--&lt;%&ndash;                </div>&ndash;%&gt;--%>

<%--                <div class="field" style="padding-left:200px; margin-top: 50px">--%>
<%--                    <input type="submit" id="dangki" name="dangki"class="loginbuton Field200" value="Đăng ký"/>--%>
<%--                </div>--%>

<%--            </form>--%>
<%--            <!--            </form>-->--%>
<%--        </div>--%>
<%--    </div>--%>



    <section class="signup">
        <div class="container login1">
            <form action="<%= Util.fullPath("DoRegisterSL") %>" method="post">
<%--                <h3 class="ttdn">Thông tin đăng nhập</h3>--%>
                    <%
                    ArrayList <String> err = (ArrayList<String>) request.getAttribute("error");
                    if(err == null) err= new ArrayList<>();
                    for (String s : err){
                %>
                <div class="alert-danger"><%= s%>
                </div
                    <%}%>
            <div class="signup-content">
                <div class="signup-form">
                    <h2 class="form-title">Đăng kí</h2>
                    <form method="POST" class="register-form" id="register-form">
                        <div class="form-group">
                            <label  class="la1" for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input class="in1" type="text" id="name" name="uname" placeholder="Tên" value="<%= Util.getParam(request, "uname")%>" Required="required"/>
                        </div>
                        <div class="form-group">
                     <label  class="la1" for="email"><i class="zmdi zmdi-email"></i></label>
                            <input class="in1" type="email" id="email" name="email" value="<%= request.getParameter("email") == null ? "" : request.getParameter("email").trim()%>" required="required" placeholder="Email"/>
                        </div>
                        <div class="form-group">
                            <label  class="la1" for="email"><i class="far fa-calendar-minus"></i></label>
                            <input class="in1" type="date" id="ngáyinh" class="textbirth" name="birthday" value="<%= request.getParameter("birthday") == null ? "" : request.getParameter("birthday").trim()%>" placeholder="Ngày sinh"/>
                        </div>
                        <div class="form-group">
                            <label  class="la1" for="email"><i class="fas fa-phone-alt"></i></label>
                            <input class="in1" id="telephone" class="telephone" type="text" name="phone" value="<%= request.getParameter("phone") == null ? "" : request.getParameter("phone").trim()%>" required="required"placeholder="Số điện thoại"/>
                        </div>
                        <div class="form-group">
                            <label  class="la1" for="pass"><i class="zmdi zmdi-lock"></i></label>
                            <input class="in1" autocomplete="off" id="pass" type="password" name="password" required="required" placeholder="Mật khẩu"/>
                        </div>
                        <div class="form-group">
                            <label  class="la1" for="fullname"><i class="zmdi zmdi-account material-icons-name"></i></label>
                            <input class="in1" type="text" id="fullname" name="fullname" placeholder="Họ và tên" value="<%= Util.getParam(request, "uname")%>" Required="required"/>
                        </div>
                        <div class="form-group">
                            <label  class="la1" for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                            <input class="in1" autocomplete="off" id="re-pass" type="password" name="repassword" required="required" placeholder="Nhập lại mật khẩu"/>
                        </div>
                        <div class="form-group">
                            <input class="in1" type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                            <label  class="la1" for="agree-term" class="label-agree-term"><span><span></span></span>Tôi đồng ý với những điều khoản trên</label>
                        </div>
                        <div class="form-group form-button">
                            <input type="submit" name="signup" id="signup" class="form-submit" value="Đăng kí"/>
                        </div>
                    </form>
                </div>
                <div class="signup-image">
                    <figure><img src="images/signup.jpg" alt="sing up image"></figure>
                    <a href="#" class="signup-image-link">I am already member</a>
                </div>
            </div>
        </div>
    </section>


    <jsp:include page="footer.jsp"></jsp:include>
    <!-- //Footer Area -->

</div>
<!-- //Main wrapper -->

<!-- JS Files -->
<script src="js/vendor/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/plugins.js"></script>
<!-- Google Map js -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBmGmeot5jcjdaJTvfCmQPfzeoG_pABeWo"></script>
<script>
    // When the window has finished loading create our google map below
    google.maps.event.addDomListener(window, 'load', init);

    function init() {
        // Basic options for a simple Google Map
        // For more options see: https://developers.google.com/maps/documentation/javascript/reference#MapOptions
        var mapOptions = {
            // How zoomed in you want the map to start at (always required)
            zoom: 12,

            scrollwheel: false,

            // The latitude and longitude to center the map (always required)
            center: new google.maps.LatLng(23.7286, 90.3854), // New York

            // How you would like to style the map.
            // This is where you would paste any style found on Snazzy Maps.
            styles:
                [

                    {
                        "featureType": "administrative",
                        "elementType": "labels.text.fill",
                        "stylers": [
                            {
                                "color": "#444444"
                            }
                        ]
                    },
                    {
                        "featureType": "landscape",
                        "elementType": "all",
                        "stylers": [
                            {
                                "color": "#f2f2f2"
                            }
                        ]
                    },
                    {
                        "featureType": "poi",
                        "elementType": "all",
                        "stylers": [
                            {
                                "visibility": "off"
                            }
                        ]
                    },
                    {
                        "featureType": "road",
                        "elementType": "all",
                        "stylers": [
                            {
                                "saturation": -100
                            },
                            {
                                "lightness": 45
                            }
                        ]
                    },
                    {
                        "featureType": "road.highway",
                        "elementType": "all",
                        "stylers": [
                            {
                                "visibility": "simplified"
                            }
                        ]
                    },
                    {
                        "featureType": "road.arterial",
                        "elementType": "labels.icon",
                        "stylers": [
                            {
                                "visibility": "off"
                            }
                        ]
                    },
                    {
                        "featureType": "transit",
                        "elementType": "all",
                        "stylers": [
                            {
                                "visibility": "off"
                            }
                        ]
                    },
                    {
                        "featureType": "transit.station.bus",
                        "elementType": "labels.icon",
                        "stylers": [
                            {
                                "saturation": "-16"
                            }
                        ]
                    },
                    {
                        "featureType": "water",
                        "elementType": "all",
                        "stylers": [
                            {
                                "color": "#04b7ff"
                            },
                            {
                                "visibility": "on"
                            }
                        ]
                    }
                ]
        };

        // Get the HTML DOM element that will contain your map
        // We are using a div with id="map" seen below in the <body>
        var mapElement = document.getElementById('googleMap');

        // Create the Google Map using our element and options defined above
        var map = new google.maps.Map(mapElement, mapOptions);

        // Let's also add a marker while we're at it
        var marker = new google.maps.Marker({
            position: new google.maps.LatLng(23.7286, 90.3854),
            map: map,
            title: 'Dcare!',
            icon: 'images/icons/map.png',
            animation:google.maps.Animation.BOUNCE

        });
    }
</script>

<script src="js/active.js"></script>


</body>
</html>