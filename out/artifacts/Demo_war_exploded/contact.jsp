<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Contact | Bookshop Responsive Bootstrap4 Template</title>
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

                            <nav class="bradcaump-content">
                              <a class="breadcrumb_item" href="index.jsp">Trang chủ</a>
                              <span class="brd-separetor">/</span>
                              <span class="breadcrumb_item active">Liên hệ</span>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- Start Contact Area -->
        <section class="wn_contact_area bg--white pt--80 pb--80">

        	<div class="container">
        		<div class="row">
        			<div class="col-lg-8 col-12">
        				<div class="contact-form-wrap">
        					<h2 class="contact__title">Liên hệ</h2>
<!--        					<p>Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. </p>-->
                            <form id="contact-form" action="#" method="post">
                                <div class="single-contact-form space-between">
                                    <input type="text" name="firstname" placeholder="Họ *">
                                    <input type="text" name="lastname" placeholder="Tên*">
                                </div>
                                <div class="single-contact-form space-between">
                                    <input type="email" name="email" placeholder="Email*">
<!--                                    <input type="text" name="website" placeholder="Website*">-->
                                </div>
                                <div class="single-contact-form">
                                    <input type="text" name="subject" placeholder="Số điện thoại*">
                                </div>
                                <div class="single-contact-form message">
                                    <textarea name="message" placeholder="Viết phản hồi tại đây..."></textarea>
                                </div>
                                <div class="contact-btn">
                                    <button type="submit">Gửi phản hồi</button>
                                </div>
                            </form>
                        </div> 

        			</div>
        			<div class="col-lg-4 col-12 md-mt-40 sm-mt-40">
        				<div class="wn__address">
        					<h2 class="contact__title">Trải nghiệm cùng Nobita.vn</h2>
<p>Với mong muốn mang lại cho bạn đọc một điểm đến lý tưởng để mua sách với những trải nghiệm tốt nhất, Nobita.vn chỉ tập trung vào sản phẩm sách với hàng chục ngàn đầu sách khác nhau. Bạn có thể dễ dàng và nhanh chóng tìm được những đầu sách như ý với ít thao tác nhất và ít thời gian nhất.
	Đội ngũ tư vấn của Nobita.vn với sự tận tâm và nhiệt tình luôn nỗ lực để sẵn sàng phục vụ các yêu cầu của bạn, và giúp bạn tìm ra những cuốn sách phù hợp nhất với nhu cầu đọc của mình.</p>
        					<p>Nobita cảm ơn tất cả bạn đọc đã luôn ủng hộ và cam kết luôn phục vụ bạn hết mình!</p>
							<div class="wn__addres__wreapper">

        						<div class="single__address">
        							<i class="icon-location-pin icons"></i>
        							<div class="content">
        								<span>NHÀ SÁCH Nobita OFFLINE</span>
										<p>(hoạt động từ 8h - 21h mỗi ngày)</p>
        								<p>99 Nguyễn Bỉnh Khiêm, Phường Đakao, Quận 1, TP. HCM</p>
        							</div>
        						</div>

        						<div class="single__address">
        							<i class="icon-phone icons"></i>
        							<div class="content">
        								<span>Số điện thoại:</span>
        								<p>028 7300 7684</p>
        							</div>
        						</div>

        						<div class="single__address">
        							<i class="icon-envelope icons"></i>
        							<div class="content">
        								<span>Email :</span>
        								<p>hotro@nobita.com</p>
        							</div>
        						</div>

<!--        						<div class="single__address">-->
<!--        							<i class="icon-globe icons"></i>-->
<!--        							<div class="content">-->
<!--        								<span>website address:</span>-->
<!--        								<p>716-298-1822</p>-->
<!--        							</div>-->
<!--        						</div>-->

        					</div>
        				</div>
        			</div>
        		</div>
        	</div>
        </section>
        <!-- End Contact Area -->
		<!-- Footer Area -->
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