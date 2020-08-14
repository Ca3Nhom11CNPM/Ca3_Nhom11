<%@ page import="java.sql.ResultSet" %>
<%@ page import="vn.edu.nlu.fit.Utill.Util" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Home</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">



    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
	<!-- Favicons -->
	<link rel="shortcut icon" href="images/favicon.ico">
	<link rel="apple-touch-icon" href="images/icon.png">

	<!-- Google font (font-family: 'Roboto', sans-serif; Poppins ; Satisfy) -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800" rel="stylesheet"> 
	<link href="https://fonts.googleapis.com/css?family=Poppins:300,300i,400,400i,500,600,600i,700,700i,800" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

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

		<!-- End Search Popup -->
		<div class="container">
			<div class="row">

				<div id="carousel" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carousel" data-slide-to="0" class="active"></li>
						<li data-target="#carousel" data-slide-to="1"></li>
						<li data-target="#carousel" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">

							<div class="d-none d-lg-block">
								<div class="slide-box">
									<%ResultSet sl = (ResultSet) request.getAttribute("sl");
									while (sl.next()){ %>

									<a href="<%=Util.fullPath("ListProduct?type=3")%>"><img class="hi" src="<%=sl.getString(2)%>" style="margin-left: 35px" width="1100px" height="450px"
															  /></a>
									<% } %>
								</div>
							</div>

						</div>
						<div class="carousel-item">
							<div class="d-none d-lg-block">
								<div class="slide-box">
															<%
																ResultSet sl1 = (ResultSet) request.getAttribute("sl1");
																while (sl1.next()){

															%>

									<a href="slide2.html">  <img 	class="hi" src="<%=sl1.getString(2)%>" style="margin-left: 35px" width="1100px" height="450px" /></a>
									<% } %>
								</div>
							</div>

						</div>
						<div class="carousel-item">
							<div class="d-none d-lg-block">
								<div class="slide-box">
									<%
										ResultSet sl2 = (ResultSet) request.getAttribute("sl2");
										while (sl2.next()){

									%>
									<a href="<%=Util.fullPath("Chitietsanpham1?id=21")%>"><img class="hi"  src="<%=sl2.getString(2)%>" style="margin-left: 35px" width="1100px" height="450px"/></a>
								<% } %>
								</div>
							</div>

						</div>
					</div>
<%--					<div class="carousel-inner">--%>
<%--						<%--%>
<%--							ResultSet sl = (ResultSet) request.getAttribute("sl");--%>
<%--							while (sl.next()){--%>

<%--						%>--%>
<%--						<div class="carousel-item active">--%>
<%--							<div class="d-none d-lg-block">--%>
<%--								<div class="slide-box" >--%>
<%--									<a href="slide2.jsp"><img class="hi" src="<%=sl.getString(2)%>" style="margin-left: 35px" width="1100px" height="450px"--%>
<%--															  /></a>--%>
<%--								</div>--%>
<%--							</div>--%>

<%--						</div>--%>
<%--						<% } %>--%>


<%--						<%--%>
<%--							ResultSet sl1 = (ResultSet) request.getAttribute("sl1");--%>
<%--							while (sl1.next()){--%>

<%--						%>--%>
<%--						<div class="carousel-item active">--%>
<%--							<div class="d-none d-lg-block">--%>
<%--								<div class="slide-box">--%>
<%--									<a href="slide2.html">  <img class="hi" src="<%=sl1.getString(2)%>" style="margin-left: 35px" width="1100px" height="450px" /></a>--%>
<%--								</div>--%>
<%--							</div>--%>

<%--						</div>--%>
<%--						<% } %>--%>
<%--					</div>--%>

					<a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
						<i class="fa fa-chevron-left"></i>
						<span class="sr-only">Previous</span>
					</a>
					<a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
						<i class="fa fa-chevron-right"></i>
						<span class="sr-only">Next</span>
					</a>
					<div class="hu"></div>
				</div>

			</div>
		</div>


		<section class="wn__product__area brown--color pt--80  pb--30">
			<div class="container">
				<div class="row">
					<div class="k1">
						<div class="block" id="module_newproducts21">
							<h2>

								<a class="title" href="<%=Util.fullPath("ListProduct?type=1")%>" title="Sách mới" style="font-weight: normal">Sách mới<span class="b-main__category-arrow"></span></a>

								<a class="more" href="<%=Util.fullPath("ListProduct?type=1")%>"  style="font-weight: normal ; margin-left: 955px">Xem tất cả</a>

							</h2>
						</div>
					</div>
				</div>
				<!-- Start Single Tab Content -->
				<div class="furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50">


					<%
						ResultSet p = (ResultSet) request.getAttribute("pi");
						while (p.next()){

					%>	<!-- Start Single Product -->
					<div class="product product__style--3">

						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="<%=Util.fullPath("Chitietsanpham?id="+p.getInt(1))%>"><img src="<%=p.getString(4)%>" width="240" height="320" alt="product image"></a>
<!--								<a class="second__img animation1" href="single-product.jsp"><img src="images/book_pr/vhteen/1_1.jpg"  width="240" height="320" alt="product image"></a>-->

								<div class="hot__box">
									<span class="hot-label">New</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="single-product.jsp"><%=p.getString(2)%></a></h4>
								<ul class="prize d-flex">
									<li><%=p.getString(3)%>  ₫</li>
<!--									<li class="old_prize">69.000 ₫</li>-->
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="<%=Util.fullPath("ShowCart")%>" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="<%= Util.fullPath("AddIndex?id="+p.getInt(1))%>" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="product__hover--content">
									<ul class="rating d-flex">
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="off"><i class="zmdi zmdi-star "></i></li>
										<li class="off"><i class="zmdi zmdi-star"></i></li>
									</ul>
								</div>
							</div>
						</div>

					</div>
					<% } %>


				</div>
				<!-- End Single Tab Content -->
			</div>
		</section>
		<!-- Start BEst Seller Area -->


		<section class="wn__product__area brown--color pt--80  pb--30">
			<div class="container">
				<div class="row">
					<div class="k">
						<div class="block" id="module_newproducts">
							<h2>
								<a class="title" href="<%=Util.fullPath("ListProduct?type=3")%>" title="Sách mới" style="font-weight: normal">Sách giảm giá<span class="b-main__category-arrow"></span></a>
								<a class="more" href="<%=Util.fullPath("ListProduct?type=3")%>" title="Xem tất cả" style="font-weight: normal">Xem tất cả</a>
							</h2>
						</div>
					</div>
				</div>
				<!-- Start Single Tab Content -->
				<div class="furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50">
					<%
						ResultSet p1 = (ResultSet) request.getAttribute("pi2");
						while (p1.next()){

					%>
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="<%=Util.fullPath("Chitietsanpham?id="+p1.getInt(1))%>"><img src="<%=p1.getString(4)%>" width="240" height="320" alt="product image"></a>
								<div class="hot__box">
									<span class="hot-label">-20%</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="slide2.jsp"><%=p1.getString(2)%></a></h4>
								<ul class="prize d-flex">
									<li><%=p1.getString(3)%>  ₫</li>
									<li class="old_prize"><%=p1.getString(5)%> </li>
								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="<%=Util.fullPath("ShowCart")%>" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="<%= Util.fullPath("AddIndex?id="+p1.getInt(1))%>" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="product__hover--content">
									<ul class="rating d-flex">
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="off"><i class="zmdi zmdi-star "></i></li>
										<li class="off"><i class="zmdi zmdi-star"></i></li>
									</ul>
								</div>
							</div>
						</div>
					</div>

<% } %>
				</div>
				<!-- End Single Tab Content -->
			</div>
		</section>

		<!-- end giam -->

		<!--	sách bán chay	-->
		<section class="wn__product__area brown--color pt--80  pb--30">
			<div class="container">
				<div class="row">
					<div class="k">
						<div class="block" id="module_newproducts2">
							<h2>
								<a class="title" href="<%=Util.fullPath("ListProduct?type=2")%>" title="Sách mới" style="font-weight: normal">Sách bán chạy<span class="b-main__category-arrow"></span></a>
								<a class="more" href="<%=Util.fullPath("ListProduct?type=2")%>" title="Xem tất cả" style="font-weight: normal">Xem tất cả</a>
							</h2>
						</div>
					</div>
				</div>
				<!-- Start Single Tab Content -->
				<div class="furniture--4 border--round arrows_style owl-carousel owl-theme row mt--50">
					<!-- Start Single Product -->
					<%
						ResultSet p2 = (ResultSet) request.getAttribute("pi1");
						while (p2.next()){

					%>
					<div class="product product__style--3">
						<div class="col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="product__thumb">
								<a class="first__img" href="<%=Util.fullPath("Chitietsanpham?id="+p2.getInt(1))%>"><img src="<%=p2.getString(4)%>" width="240" height="320" alt="product image"></a>
								<div class="hot__box">
									<span class="hot-label">Hot</span>
								</div>
							</div>
							<div class="product__content content--center">
								<h4><a href="slide2.jsp"><%=p2.getString(2)%></a></h4>
								<ul class="prize d-flex">
									<li><%=p2.getString(3)%>  ₫</li>

								</ul>
								<div class="action">
									<div class="actions_inner">
										<ul class="add_to_links">
											<li><a class="cart" href="<%=Util.fullPath("ShowCart")%>" title="Giỏ hàng"><i class="bi bi-shopping-bag4"></i></a></li>
											<li><a class="wishlist" href="<%= Util.fullPath("AddIndex?id="+p2.getInt(1))%>" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
											<li><a data-toggle="modal" title="Xem nhanh" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="product__hover--content">
									<ul class="rating d-flex">
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="on"><i class="zmdi zmdi-star "></i></li>
										<li class="off"><i class="zmdi zmdi-star"></i></li>
									</ul>
								</div>
							</div>
						</div>
					</div>

					<% } %>
				</div>
				<!-- End Single Tab Content -->
			</div>
		</section>
		<!--		sách bán chạy-->

		<!-- Start Recent Post Area -->
		<section class="wn__recent__post bg--gray ptb--80">
			<div class="container">
				<div class="row">
					<div class="k">
						<div class="block" id="module_newproducts23">
							<h2>
								<a class="title" href="#" title="Sách mới" style="font-weight: normal">Trải nghiệm của khách hàng tại Nobita.vn<span class="b-main__category-arrow"></span></a>

							</h2>
						</div>
					</div>
				</div>
				<div class="row mt--50">
					<div class="col-md-6 col-lg-4 col-sm-12">
						<div class="post__itam">
							<div class="content">
								<h3>Chị Minh Hạnh (Công ty Hanoi BS Co.Ltd)</h3>
								<p>Chào quý nhà sàch Nobita.
									Cảm ơn vì đã giải quyết đơn đặt hàng của chúng tôi nhanh chóng và đã giao sách đúng hẹn. Tôi rất vui vì ở VN có một nhà sách online uy tín và làm việc với phong cách hiện đại phục vụ nhanh, giống ở nước ngoài.
									Chúng tôi sẽ thường xuyên đặt sách và sử dụng dịch vụ của quý của hang, xin hãy luôn nâng cao chất lượng và phong cách phục vụ để quý cửa hàng luôn được người tiêu dùng tin tuong xếp hàng uy tín nhất Việt Nam.
									</p>
								<div class="post__time">
									<span class="day">06/11/2019</span>
									<div class="post-meta">
										<ul>
											<li><a href="#"><i class="bi bi-love" style="color: #007bff"></i>72</a></li>
											<li><a href="#"><i class="bi bi-chat-bubble" style="color: #007bff"></i>27</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-sm-12">
						<div class="post__itam">
							<div class="content">
								<h3>Thu Thảo</h3>
								<p>Biết Nobita từ những ngày đầu mới tham gia cộng đồng sách. Nhưng phải mới gần đây mình mới có dịp sử dụng dịch vụ của trang này. Một đơn hàng với trị giá không lớn nhưng vẫn nhìn thấy được trong đó sự đầu tư để tạo nên sự khác biệt cho người sử dụng làm mình rất vui khi sử dụng sách ở đây.
									Trong bài viết này mình chỉ đơn giản trong vai trò là một khách hàng đặt mua sách bình thường chia sẻ lại kinh nghiệm thực tế nhất giúp các bạn có cái nhìn toàn diện khi mua hàng cũng như đánh giá Nobita.</p>
								<div class="post__time">
									<span class="day">18/10/2019</span>
									<div class="post-meta">
										<ul>
											<li><a href="#"><i class="bi bi-love" style="color: #007bff"></i>52</a></li>
											<li><a href="#"><i class="bi bi-chat-bubble" style="color: #007bff"></i>12</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4 col-sm-12">
						<div class="post__itam">
							<div class="content">
								<h3>Bội Thuyên Lee</h3>
								<p>Tôi mua tương đối nhiều hàng từ nobita, việc đổi trả và bảo hành khá tốt !. Hy vọng nobita sẽ ngày càng phát triển hơn nữa trong tương lai.
									Tôi nghĩ rằng nobita làm được và số lượng khách hàng sẽ tăng lên đáng kể.</p>
								<div class="post__time">
									<span class="day">30/10/2019</span>
									<div class="post-meta">
										<ul>
											<li><a href="#"><i class="bi bi-love" style="color: #007bff"></i>42</a></li>
											<li><a href="#"><i class="bi bi-chat-bubble" style="color: #007bff"></i>7</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Recent Post Area -->

		<!-- Footer Area -->
        <jsp:include page="footer.jsp"></jsp:include>
		<!-- //Footer Area -->
		<!-- QUICKVIEW PRODUCT -->
		<div id="quickview-wrapper">
			<!-- Modal -->
			<div class="modal fade" id="productmodal" tabindex="-1" role="dialog"  style="width: 700px;height: 800px ;margin-left: 350px">
				<div class="modal-dialog modal__container" role="document">
					<div class="modal-content">
						<div class="modal-header modal__header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
						</div>
						<div class="modal-body">
							<div class="modal-product">
								<!-- Start product images -->
								<div class="product-images">
									<div class="main-image images"><img src="images/books/347787_p88740mscan0001.jpg"
																		height="383" width="240"/>

									</div>
								</div>
								<!-- end product images -->
								<div class="product-info">
									<h1>Dược Xã Hội</h1>
									<div class="rating__and__review">
										<ul class="rating">
											<li><span class="ti-star"></span></li>
											<li><span class="ti-star"></span></li>
											<li><span class="ti-star"></span></li>
											<li><span class="ti-star"></span></li>
											<li><span class="ti-star"></span></li>
										</ul>

									</div>
									<div class="price-box-3">
										<div class="s-price-box">
											<span class="new-price">250.000 ₫</span>
											<span class="old-price">298.000 ₫</span>
										</div>
									</div>
									<div class="quick-desc">
										<p>Tác giả: Hoàng Thy Nhạc Vũ</p>
										<p>Nhà xuất bản: Nxb Tổng hợp TP.HCM<p>Nhà phát hành: NXBTH TPHCM</p><p>Mã Sản phẩm: 9786045895993</p><p>Khối lượng: 220.00 gam</p><p>Ngôn ngữ: Tiếng Việt</p>
										<p>Định dạng: Bìa mềm</p>
										<p>Kích thước: 14 x 22 cm</p>
										<p>Ngày phát hành: 09/2019</p>
										<p>Số trang: 168</p>
									</div>

									<div class="addtocart-btn">
										<a href="#">Thêm vào giỏ hàng</a>
									</div>
								</div><!-- .product-info -->
							</div><!-- .modal-product -->
						</div><!-- .modal-body -->
					</div><!-- .modal-content -->
				</div><!-- .modal-dialog -->
			</div>
			<!-- END Modal -->
		</div>
		<!-- END QUICKVIEW PRODUCT -->
	</div>

	<!-- //Main wrapper -->

	<!-- JS Files -->
	<script src="js/vendor/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
	<script>
		var myIndex = 0;
		carousel();

		function carousel() {
			var i;
			var x = document.getElementsByClassName("mySlides");
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			myIndex++;
			if (myIndex > x.length) {myIndex = 1}
			x[myIndex-1].style.display = "block";
			setTimeout(carousel, 2000); // Change image every 2 seconds
		}
		var slideIndex = 1;
		showDivs(slideIndex);

		function plusDivs(n) {
			showDivs(slideIndex += n);
		}

		function currentDiv(n) {
			showDivs(slideIndex = n);
		}

		function showDivs(n) {
			var i;
			var x = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("demo");
			if (n > x.length) {slideIndex = 1}
			if (n < 1) {slideIndex = x.length}
			for (i = 0; i < x.length; i++) {
				x[i].style.display = "none";
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" w3-white", "");
			}
			x[slideIndex-1].style.display = "block";
			dots[slideIndex-1].className += " w3-white";
		}
	</script>


