<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Delivery</title>
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
                            <a class="breadcrumb_item" href="index.jsp">Trang chủ</a>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item ">Hỗ trợ khách hàng</span>
                            <span class="brd-separetor">/</span>
                            <span class="breadcrumb_item active">Phương thức vận chuyển</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="nd1">
        <div class="c" ><h3><b>Phí Vận Chuyển & Thời Gian Giao Hàng</b></h3></div>

        <div class="c2"><p>I. PHÍ VẬN CHUYỂN</p></div>
        <div class="c3"><p>1. Với đơn hàng áp dụng dịch vụ Giao hàng tiêu chuẩn: Đơn hàng sẽ được miễn phí "Phí vận chuyển" khi:</p>
        </div>
        <div class="ch"><p> - Có giá trị trên 150,000 đồng ở khu vực TP. Hồ Chí Minh.</p></div>
        <div class="ch"><p> - Có giá trị trên 300,000 đồng ở các tỉnh thành khác trên toàn quốc.</p></div>
        <div class="ch"><p> Trong trường hợp trị giá đơn hàng chưa đủ mức miễn phí vận chuyển thì phí sẽ được áp dụng như sau:</p></div>
        <div class="ch"><p> - 15,000 đồng ở khu vực TP. Hồ Chí Minh.</p></div>
        <div class="ch"><p> - 30,000 đồng ở các tỉnh thành khác trên toàn quốc.</p></div>
        <div class="c4">
            <p>2. Với đơn hàng sử dụng dịch vụ Giao hàng nhanh.</p>
        </div>
        <div class="ch"><p> Netabooks.vn áp dụng mức phí như bên dưới cho các đơn hàng sử dụng dịch vụ Giao hàng nhanh</p></div>
        <div class="ch"><p> - 29,000 đồng ở khu vực TP. Hồ Chí Minh.</p></div>
        <div class="ch"><p> - 39,000 đồng ở các tỉnh thành khác trên toàn quốc.</p></div>
        <div class="c5"><p>II. THỜI GIAN GIAO HÀNG:</p></div>
        <div class="c6"><p>Hiện nay, Netabooks.vn thực hiện giao hàng trong giờ hành chính trong khoảng 8h00 - 17h00 trong các ngày từ Thứ 2 đến thứ 7.</p></div>
        <div class="ch"><p> - Giao hàng Tiêu chuẩn: Từ 1-3 ngày tại TP. Hồ Chí Minh; từ 3-5 ngày đối với các Tỉnh / Thành khác.</p></div>
        <div class="ch"><p> - Giao hàng Nhanh: 1 ngày tại TP. Hồ Chí Minh; từ 2-3 ngày đối với các Tỉnh / Thành khác.</p></div>
        <div class="c7"><p>Ngoài ra, thời gian giao hàng dự kiến sẽ tuỳ thuộc vào các yếu tố:</p></div>
        <div class="ch"><p> - Thời gian đặt hàng:  Thời gian giao hàng được tính kể từ khi NetaBooks xác nhận đơn hàng có đủ sách qua điện thoại. Nếu quý khách đặt hàng sau giờ hành chính (từ 8h sáng đến 5h chiều), thời gian giao hàng sẽ được tự động cộng dồn thêm 1 ngày</p></div>
        <div class="ch"><p> - Sản phẩm đặt mua: Nếu đơn hàng của quý khách có những sách "Đặt trước"/ "Sắp phát hành"(tức sách chưa được nhà phát hành chính thức cung cấp trên thị trường) hoặc sách cần chờ vận chuyển từ kho của nhà cung cấp, thì thời gian giao hàng sẽ bắt đầu khi NetaBooks xác nhận có đủ sách cho đơn hàng.</p></div>
    </div>
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