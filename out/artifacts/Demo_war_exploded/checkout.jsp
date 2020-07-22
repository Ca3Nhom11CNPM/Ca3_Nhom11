<%@ page import="vn.edu.nlu.fit.Model.Cart" %>
<%@ page import="vn.edu.nlu.fit.Model.Product" %>
<%@ page import="vn.edu.nlu.fit.Utill.Util" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<title>Checkout</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

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
		<%
			if(session.getAttribute("uname")==null){
				response.sendRedirect("login.jsp");
			} else {

		%>


		
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
                              <a class="breadcrumb_item" href="index.jsp">Home</a>
                              <span class="brd-separetor">/</span>
                              <span class="breadcrumb_item active">Thanh toán</span>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Bradcaump area -->
        <!-- Start Checkout Area -->
        <section class="wn__checkout__area section-padding--lg bg__white">
        	<div class="container">
				<form action="<%= Util.fullPath("Thanhtoan") %>" method="post">
        		<div class="row">
        			<div class="col-lg-6 col-12">
        				<div class="customer_details">

        					<h3>Địa chỉ giao hàng</h3>
        					<div class="customar__field">
<%--        						<div class="margin_between">--%>
<%--	        						<div class="input_box space_between">--%>
<%--	        							<label>Họ<span>*</span></label>--%>
<%--	        							<input type="text">--%>
<%--	        						</div>--%>
	        						<div class="input_box">
	        							<label>Họ và tên <span>*</span></label>
	        							<input type="text" name="name">
	        						</div>
<%--        						</div>--%>
        						<div class="input_box">
        							<label>Địa chỉ <span>*</span></label>
        							<input type="text" name="diachi">
        						</div>
        						<div class="input_box">
        							<label>Tỉnh / Thành<span>*</span></label>
									<input type="text" name="tinh">
<%--        							<select class="select__option">--%>
<%--										<option>Chọn tỉnh thành</option>--%>
<%--										<option>Hồ Chí Minh</option>--%>
<%--										<option>An Giang</option>--%>
<%--										<option>Bà Rịa - Vũng Tàu</option>--%>
<%--										<option>Bình Dương</option>--%>
<%--										<option>Hưng Yên</option>--%>
<%--										<option>Khánh Hòa</option>--%>
<%--										<option>Hà Tĩnh</option>--%>
<%--        							</select>--%>
        						</div>
<!--        						<div class="input_box">-->
<!--        							<label>Address <span>*</span></label>-->
<!--        							<input type="text" placeholder="Street address">-->
<!--        						</div>-->
<!--        						<div class="input_box">-->
<!--        							<input type="text" placeholder="Apartment, suite, unit etc. (optional)">-->
<!--        						</div>-->
        						<div class="input_box">
        							<label>Quận huyện<span>*</span></label>
									<input type="text" name="huyen">
<%--        							<select class="select__option">--%>
<%--										<option>Chọn quận huyện</option>--%>
<%--										<option>Quận 1</option>--%>
<%--										<option>Quận 10</option>--%>
<%--										<option>Quận 11</option>--%>
<%--										<option>Quận 12</option>--%>
<%--										<option>Quận 2</option>--%>
<%--										<option>Quận 3</option>--%>
<%--        							</select>--%>
        						</div>
								<div class="input_box">
									<label>Phường xã<span>*</span></label>
									<input type="text" name="phuong">
<%--									<select class="select__option">--%>
<%--										<option>Chọn phường xã</option>--%>
<%--										<option>Phường 01</option>--%>
<%--										<option>Phường 02</option>--%>
<%--										<option>Phường 03</option>--%>
<%--										<option>Phường 04</option>--%>
<%--										<option>Phường 05</option>--%>
<%--										<option>Phường 06</option>--%>
<%--									</select>--%>
								</div>
								<div class="margin_between">
									<div class="input_box space_between">
										<label>Số điện thoại <span>*</span></label>
										<input type="text" name="phone">
									</div>

									<div class="input_box space_between">
										<label>Email <span>*</span></label>
										<input type="email" name="email">
									</div>
								</div>
    <div id="accordion" class="checkout_accordion mt&#45;&#45;30" role="tablist">
        <div class="radio-wrapper content-box-row">
            <label class="radio-label" for="payment_method_id_526756">
                <input id="payment_method_id_526756" name="hinhthuc" value="Thanh toán tiền mặt khi nhận hàng" onclick="show1();" type="radio" checked />
                <span class="radio-label-primary">Thanh toán tiền mặt khi nhận hàng</span>
            </label>
        </div>

        <div class="radio-wrapper content-box-row content-box-row-secondary " for="payment_method_id_526756">
            <div id="div1" class="blank-slate active show" class="hide">
                Phương pháp thanh toán này áp dụng cho các khu vực: <b>Trong nước </b>.
            </div>
        </div>
        <div class="radio-wrapper content-box-row">
            <label class="radio-label" for="payment_method_id_526758">
                <input id="payment_method_id_526758" name="hinhthuc" value="Chuyển khoản ngân hàng" onclick="show2();" type="radio"/>
                <span class="radio-label-primary">Chuyển khoản ngân hàng</span>
            </label>
        </div>

        <!--                                    <div class="radio-wrapper content-box-row content-box-row-secondary hidden" for="payment_method_id_526756">-->
        <div id="div2" class="blank-slate hidden" class="hidden" >
            <p>Tài khoản Vietcombank: 0071000658248 - Chủ tài khoản: Nguyễn Công Tuệ – CN Lê Hồng Phong</p><br>

            <p> Lưu ý: Sau khi chuyển khoản, quý khách vui lòng thông báo qua điện thoại hoặc email để Nobita tiện kiểm tra và xử lý đơn hàng.</p><br>

            <p >Hỗ trợ khách hàng: 0938 424 289 - Email: hotro@nobita.com.</p><br>

            <!--                                        </div>-->
        </div>

    </div>
								<div class="hy1">
<%--								<a href="thanhtoan.jsp">	<button class="hy"><p>Tiếp tục</p></button></a>--%>
									<button class="hy" type="submit"><p>Thanh toán</p></button>
								</div>
								<div class="nu1">
									<a  href="cart.jsp"><p>Trở lại</p></a>
<%--									<button type="submit"><p>Tiếp tục</p></button>--%>

								</div>
        					</div>
        					<div class="create__account">
<!--        						<div class="wn__accountbox">-->
<!--	        						<input class="input-checkbox" name="createaccount" value="1" type="checkbox">-->
<!--	        						<span>Create an account ?</span>-->
<!--        						</div>-->
<!--        						<div class="account__field">-->
<!--        							<form action="#">-->
<!--        								<label>Account password <span>*</span></label>-->
<!--        								<input type="text" placeholder="password">-->
<!--        							</form>-->
<!--        						</div>-->
        					</div>

        				</div>
<!--        				<div class="customer_details mt&#45;&#45;20">-->
<!--        					<div class="differt__address">-->
<!--	        					<input name="ship_to_different_address" value="1" type="checkbox">-->
<!--	        					<span>Ship to a different address ?</span>-->
<!--        					</div>-->
<!--        					<div class="customar__field differt__form mt&#45;&#45;40">-->
<!--        						<div class="margin_between">-->
<!--	        						<div class="input_box space_between">-->
<!--	        							<label>First name <span>*</span></label>-->
<!--	        							<input type="text">-->
<!--	        						</div>-->
<!--	        						<div class="input_box space_between">-->
<!--	        							<label>last name <span>*</span></label>-->
<!--	        							<input type="text">-->
<!--	        						</div>-->
<!--        						</div>-->
<!--        						<div class="input_box">-->
<!--        							<label>Company name <span>*</span></label>-->
<!--        							<input type="text">-->
<!--        						</div>-->
<!--        						<div class="input_box">-->
<!--        							<label>Country<span>*</span></label>-->
<!--        							<select class="select__option">-->
<!--										<option>Select a country…</option>-->
<!--										<option>Afghanistan</option>-->
<!--										<option>American Samoa</option>-->
<!--										<option>Anguilla</option>-->
<!--										<option>American Samoa</option>-->
<!--										<option>Antarctica</option>-->
<!--										<option>Antigua and Barbuda</option>-->
<!--        							</select>-->
<!--        						</div>-->
<!--        						<div class="input_box">-->
<!--        							<label>Address <span>*</span></label>-->
<!--        							<input type="text" placeholder="Street address">-->
<!--        						</div>-->
<!--        						<div class="input_box">-->
<!--        							<input type="text" placeholder="Apartment, suite, unit etc. (optional)">-->
<!--        						</div>-->
<!--        						<div class="input_box">-->
<!--        							<label>District<span>*</span></label>-->
<!--        							<select class="select__option"> -->
<!--										<option>Select a country…</option>-->
<!--										<option>Afghanistan</option>-->
<!--										<option>American Samoa</option>-->
<!--										<option>Anguilla</option>-->
<!--										<option>American Samoa</option>-->
<!--										<option>Antarctica</option>-->
<!--										<option>Antigua and Barbuda</option>-->
<!--        							</select>-->
<!--        						</div>-->
<!--								<div class="input_box">-->
<!--									<label>Postcode / ZIP <span>*</span></label>-->
<!--									<input type="text">-->
<!--								</div>-->
<!--								<div class="margin_between">-->
<!--									<div class="input_box space_between">-->
<!--										<label>Phone <span>*</span></label>-->
<!--										<input type="text">-->
<!--									</div>-->
<!--									<div class="input_box space_between">-->
<!--										<label>Email address <span>*</span></label>-->
<!--										<input type="email">-->
<!--									</div>-->
<!--								</div>-->
<!--        					</div>-->
<!--        				</div>-->
        			</div>

        			<div class="col-lg-6 col-12 md-mt-40 sm-mt-40">
						<%
							Cart c = (Cart) session.getAttribute("Cart");
							int count = c == null ? 0 : c.list().size();

						%>
        				<div class="wn__order__box">
        					<h3 class="onder__title">Sản phẩm của bạn</h3>

        					<ul class="order__total">
        						<li>Sản phẩm</li>
        						<li>Tổng cộng</li>
        					</ul>
							<%
								if(c ==null)c= new Cart();
								for(Product p:c.list())
								{
							%>
        					<ul class="order_product">
        						<li><%=p.getName()%> × <%=p.getQuatity()%><span><%=p.getPrice()%> ₫</span></li>
<%--								<li><%=p.getMasp()%></li>--%>
<%--								<li>Mã sản phẩm<span><%=p.getMasp()%></span></li>--%>
<%--        						<li>Dược Xã Hội × 1<span>250.000 ₫</span></li>--%>
<%--        						<li>Ung Thư Không Phải Là Bệnh × 1<span>200.000 ₫</span></li>--%>
        					</ul>
							<% } %>
        					<ul class="shipping__method">
        						<li>Tạm tính <span><%=c.total()%> ₫</span></li>
        						<li>Phí vận chuyển
        							<ul>
        								<li>
        									<label>Chưa có</label>
        								</li>

        							</ul>
        						</li>
        					</ul>
        					<ul class="total__amount">
        						<li>Tổng tiền<span><%=c.total()%> ₫</span></li>
        					</ul>

        				</div>
<%--						<div class="sua"><a href="cart.jsp"><p>Sửa</p></a> </div>--%>


        			</div>
<%--						<div class="container">--%>

<%--							<div class="row">--%>
<%--								<div class="col-lg-6 col-12">--%>
<%--									<div id="accordion" class="checkout_accordion mt--30" role="tablist">--%>

<%--										<div class="radio-wrapper content-box-row">--%>
<%--											<label class="radio-label" for="payment_method_id_526756">--%>
<%--												<input id="payment_method_id_526756" name="tab" value="igotnone" onclick="show1();" type="radio" checked />--%>
<%--												<span class="radio-label-primary">Thanh toán tiền mặt khi nhận hàng</span>--%>
<%--											</label>--%>
<%--										</div>--%>

<%--										<div class="radio-wrapper content-box-row content-box-row-secondary " for="payment_method_id_526756">--%>
<%--											<div id="div1" class="blank-slate active show" class="hide">--%>
<%--												Phương pháp thanh toán này áp dụng cho các khu vực: <b>Trong nước </b>.--%>
<%--											</div>--%>
<%--										</div>--%>
<%--										<div class="radio-wrapper content-box-row">--%>
<%--											<label class="radio-label" for="payment_method_id_526758">--%>
<%--												<input id="payment_method_id_526758" name="tab" value="igotnone" onclick="show2();" type="radio"/>--%>
<%--												<span class="radio-label-primary">Chuyển khoản ngân hàng</span>--%>
<%--											</label>--%>
<%--										</div>--%>

<%--										<!--                                    <div class="radio-wrapper content-box-row content-box-row-secondary hidden" for="payment_method_id_526756">-->--%>
<%--										<div id="div2" class="blank-slate hidden" class="hidden" >--%>
<%--											<p>Tài khoản Vietcombank: 0071000658248 - Chủ tài khoản: Nguyễn Công Tuệ – CN Lê Hồng Phong</p><br>--%>

<%--											<p> Lưu ý: Sau khi chuyển khoản, quý khách vui lòng thông báo qua điện thoại hoặc email để Nobita tiện kiểm tra và xử lý đơn hàng.</p><br>--%>

<%--											<p >Hỗ trợ khách hàng: 0938 424 289 - Email: hotro@nobita.com.</p><br>--%>

<%--											<!--                                        </div>-->--%>
<%--										</div>--%>

<%--									</div>--%>

<%--								</div>--%>

<%--								</div>--%>
<%--							</div>--%>
        		</div>
				</form>
        	</div>
        </section>
        <!-- End Checkout Area -->
		<!-- Footer Area -->
		<jsp:include page="footer.jsp"></jsp:include>
		<% } %>
		<!-- //Footer Area -->

	</div>
	<!-- //Main wrapper -->

	<!-- JS Files -->
	<script src="js/vendor/jquery-3.2.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/active.js"></script>
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