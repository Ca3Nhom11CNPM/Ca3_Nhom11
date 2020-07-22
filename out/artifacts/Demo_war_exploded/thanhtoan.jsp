<%@ page import="vn.edu.nlu.fit.Model.Cart" %>
<%@ page import="vn.edu.nlu.fit.Model.Product" %>
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

    <!-- Header -->
    <jsp:include page="header.jsp"></jsp:include>>
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
    <section class="wn__checkout__area section-padding--lg bg__white" style="margin-left: 200px;width: 1500px">
        <div class="container">

            <div class="row" >
                <%
                    Cart c = (Cart) session.getAttribute("Cart");
                    int count = c == null ? 0 : c.list().size();

                %>
                <div class="col-lg-6 col-12 md-mt-40 sm-mt-40">
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
                                        <label>50.000 ₫ </label>
                                    </li>

                                </ul>
                            </li>
                        </ul>
                        <ul class="total__amount">
                            <li>Tổng tiền<span><%=c.total() + 50000   %> ₫</span></li>
                        </ul>

                    </div>
                    <!--					    <div id="accordion" class="checkout_accordion mt&#45;&#45;30" role="tablist">-->
                    <!--						    <div class="payment">-->
                    <!--						        <div class="che__header" role="tab" id="headingOne">-->
                    <!--						          	<a class="checkout__title" data-toggle="collapse" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">-->
                    <!--						                <span>Direct Bank Transfer</span>-->
                    <!--						          	</a>-->
                    <!--						        </div>-->
                    <!--						        <div id="collapseOne" class="collapse show" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">-->
                    <!--					            	<div class="payment-body">Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won’t be shipped until the funds have cleared in our account.</div>-->
                    <!--						        </div>-->
                    <!--						    </div>-->
                    <!--						    <div class="payment">-->
                    <!--						        <div class="che__header" role="tab" id="headingTwo">-->
                    <!--						          	<a class="collapsed checkout__title" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">-->
                    <!--							            <span>Cheque Payment</span>-->
                    <!--						          	</a>-->
                    <!--						        </div>-->
                    <!--						        <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">-->
                    <!--					          		<div class="payment-body">Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</div>-->
                    <!--						        </div>-->
                    <!--						    </div>-->
                    <!--						    <div class="payment">-->
                    <!--						        <div class="che__header" role="tab" id="headingThree">-->
                    <!--						          	<a class="collapsed checkout__title" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">-->
                    <!--							            <span>Cash on Delivery</span>-->
                    <!--						          	</a>-->
                    <!--						        </div>-->
                    <!--						        <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">-->
                    <!--					          		<div class="payment-body">Pay with cash upon delivery.</div>-->
                    <!--						        </div>-->
                    <!--						    </div>-->
                    <!--						    <div class="payment">-->
                    <!--						        <div class="che__header" role="tab" id="headingFour">-->
                    <!--						          	<a class="collapsed checkout__title" data-toggle="collapse" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">-->
                    <!--							            <span>PayPal <img src="images/icons/payment.png" alt="payment images"> </span>-->
                    <!--						          	</a>-->
                    <!--						        </div>-->
                    <!--						        <div id="collapseFour" class="collapse" role="tabpanel" aria-labelledby="headingFour" data-parent="#accordion">-->
                    <!--					          		<div class="payment-body">Pay with cash upon delivery.</div>-->
                    <!--						        </div>-->
                    <!--						    </div>-->
                    <!--					    </div>-->

                </div>
            </div>
        </div>
    </section>
    <!-- End Checkout Area -->
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