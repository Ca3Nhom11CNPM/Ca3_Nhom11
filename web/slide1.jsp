<%@ page import="java.sql.ResultSet" %>
<%@ page import="vn.edu.nlu.fit.Utill.Util" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Shop-Single | Bookshop Responsive Bootstrap4 Template</title>
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
    <jsp:include page="header.jsp"></jsp:include>
    <!-- //Header -->
    <!-- Start Search Popup -->
    <div class="box-search-content search_active block-bg close__top">
        <form id="search_mini_form" class="minisearch" action="#">
            <div class="field__search">
                <input type="text" placeholder="Search entire store here...">
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
                            <span class="breadcrumb_item ">Danh mục sách</span>
                            <span class="brd-separetor">/</span>
                            <%--                            <span class="breadcrumb_item ">Sách tuổi teen</span>--%>
                            <%--                            <span class="brd-separetor">/</span>--%>
                            <span class="breadcrumb_item active ">Chi tiết sản phẩm</span>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Bradcaump area -->
    <!-- Start main Content -->
    <div class="maincontent bg--white pt--80 pb--55">
        <div class="container">
            <%
                ResultSet p1 = (ResultSet) request.getAttribute("p1");
                while (p1.next()){ %>
            <div class="row">

                <div class="col-lg-9 col-12">
                    <div class="wn__single__product">
                        <div class="row">
                            <div class="col-lg-6 col-12">
                                <div class="wn__fotorama__wrapper">
                                    <div class="fotorama1 wn__fotorama__action1" data-nav="thumbss">
                                       
                                        //load hình ảnh
                                        <img class="sl" src="<%=p1.getString(4)%>" width="450px" height="450px"/>
                                        <!--                                             width="240"/><a href="1.jpg"><img src="images/product/1.jpg" alt=""></a>-->
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6 col-12">
                                <div class="product__info__main">
                                    <h1><%=p1.getString(2)%></h1>
                                    <div class="product-reviews-summary d-flex">
                                        <ul class="rating-summary d-flex">
                                            <li><i class="zmdi zmdi-star-outline"></i></li>
                                            <li><i class="zmdi zmdi-star-outline"></i></li>
                                            <li><i class="zmdi zmdi-star-outline"></i></li>
                                            <li class="off"><i class="zmdi zmdi-star-outline"></i></li>
                                            <li class="off"><i class="zmdi zmdi-star-outline"></i></li>
                                        </ul>
                                    </div>
                                    <div class="price-box">
                                        //lấy giá sp
                                        <span><%=p1.getString(3)%> ₫</span>
                                    </div>
                                    <div class="product__overview">
                                        //load thông tin sản phẩm từ database
                                        <p>Tác giả : <%=p1.getString(6)%></p
                                        <p>Nhà xuất bản : <%=p1.getString(5)%></p>
                                        <p>Mã Sản phẩm : <%=p1.getString(12)%><p>
                                        <p>Ngày phát hành :<%=p1.getString(7)%></p>
                                        <p>Số trang : <%=p1.getString(11)%></p>
                                        </p><p>Kích thước : <%=p1.getString(8)%></p>
                                        <p>Định dạng : <%=p1.getString(10)%></p>

                                    </div>


                                    <div class="box-tocart d-flex">

                                        <span>Số lượng</span>
                                        <input id="qty" class="input-text qty" name="qty" min="1" value="1" title="Qty" type="number">
                                        <div class="addtocart__actions">
                                            <a href=" <%= Util.fullPath("AddCTSP?id="+p1.getInt(1))%>">
                                                <button class="tocart" type="submit" title="Add to Cart">Thêm vào giỏ hàng</button></a>
                                            <a href="<%= Util.fullPath("ShowCart")%>"> <button class="tocart1" type="submit">Mua ngay</button></a>
                                        </div>

                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product__info__detailed">
                        <div class="pro_details_nav nav justify-content-start" role="tablist">
                            <a class="nav-item nav-link active" data-toggle="tab" id="de" href="#nav-details" role="tab">Giới thiệu sách</a>
                            <a class="nav-item nav-link" data-toggle="tab" href="#nav-review" role="tab">Đánh giá & Bình luận</a>
                        </div>
                        <div class="tab__container">
                            <!-- Start Single Tab Content -->
                            <div class="pro__tab_label tab-pane fade show active" id="nav-details" role="tabpanel">
                                <div class="description__attribute">
                                    <b><h5 ><%=p1.getString(2)%></h5></b>
                                    <p style="margin-top: 10px"><%=p1.getString(13)%></p>

                                    <b><h5>Mời bạn đón đọc.</h5></b>
                                </div>
                            </div>
                            <!-- End Single Tab Content -->
                            <!-- Start Single Tab Content -->
                            <div class="pro__tab_label tab-pane fade" id="nav-review" role="tabpanel">
                                <div class="nx">
                                    <h5>Khách hàng đánh giá</h5></div>
                                <div class="review__attribute">
                                    <div class="dg">
                                        <p>4/5</p>
                                        <div class="product__hover--content1">
                                            <ul class="rating d-flex">
                                                <li class="on"><i class="zmdi zmdi-star"></i></li>
                                                <li class="on"><i class="zmdi zmdi-star"></i></li>
                                                <li class="on"><i class="zmdi zmdi-star"></i></li>
                                                <li class="on"><i class="zmdi zmdi-star"></i></li>
                                                <li class="off"><i class="zmdi zmdi-star"></i></li>
                                            </ul>
                                            <div class="gr"><a>(Có 2 nhận xét) </a></div>
                                        </div>
                                    </div>


                                    <div class="review__ratings__type d-flex">
                                        <div class="review-ratings">
                                            <div class="rating-summary d-flex">
                                                <div class="sao">
                                                    <span>5 *</span></div>
                                                <ul class="rating d-flex">
                                                    <li class="on"><i class="zmdi zmdi-star"  style="margin-left: -1px"></i></li>

                                                </ul>
                                                <div class="progress" style="width: 300px;margin-top: 6px">
                                                    <div class="progress-bar" role="progressbar" aria-valuenow="70"
                                                         aria-valuemin="0" aria-valuemax="100" style="width:120px">
                                                        <!--                                                        <span>100% hoan thanh</span>-->
                                                    </div>
                                                </div>
                                                <div class="phan">

                                                    <span>34%</span></div>
                                            </div>

                                            <div class="rating-summary d-flex">
                                                <span>4*</span>
                                                <ul class="rating d-flex">
                                                    <li class="on"><i class="zmdi zmdi-star" style="margin-left: 2px"></i></li>

                                                </ul>
                                                <div class="progress" style="width: 300px;margin-top: 6px">
                                                    <div class="progress-bar" role="progressbar" aria-valuenow="70"
                                                         aria-valuemin="0" aria-valuemax="100" style="width:100px">
                                                        <!--                                                        <span>100% hoan thanh</span>-->
                                                    </div>
                                                </div>
                                                <div class="phan">
                                                    <span>33%</span></div>
                                            </div>
                                            <div class="rating-summary d-flex">
                                                <span>3*</span>
                                                <ul class="rating d-flex">
                                                    <li class="on"><i class="zmdi zmdi-star"  style="margin-left: 2px"></i></li>

                                                </ul>
                                                <div class="progress" style="width: 300px;margin-top: 6px">
                                                    <div class="progress-bar" role="progressbar" aria-valuenow="70"
                                                         aria-valuemin="0" aria-valuemax="100" style="width:100px">
                                                        <!--                                                        <span>100% hoan thanh</span>-->
                                                    </div>
                                                </div>
                                                <div class="phan">
                                                    <span>33%</span></div>
                                            </div>
                                            <div class="rating-summary d-flex">
                                                <span>2*</span>
                                                <ul class="rating d-flex">
                                                    <li class="on"><i class="zmdi zmdi-star"  style="margin-left: 2px"></i></li>

                                                </ul>
                                                <div class="progress" style="width: 300px;margin-top: 6px">
                                                    <div class="progress-bar" role="progressbar" aria-valuenow="70"
                                                         aria-valuemin="0" aria-valuemax="100" style="width:0px">
                                                        <!--                                                        <span>100% hoan thanh</span>-->
                                                    </div>
                                                </div>
                                                <div class="phan">
                                                    <span>0%</span></div>
                                            </div>
                                            <div class="rating-summary d-flex">
                                                <span>1*</span>
                                                <ul class="rating d-flex">
                                                    <li class="on"><i class="zmdi zmdi-star"  style="margin-left: 6px"></i></li>

                                                </ul>
                                                <div class="progress" style="width: 300px;margin-top: 6px">
                                                    <div class="progress-bar" role="progressbar" aria-valuenow="70"
                                                         aria-valuemin="0" aria-valuemax="100" style="width:0px">
                                                        <!--                                                        <span>100% hoan thanh</span>-->
                                                    </div>
                                                </div>
                                                <div class="phan">
                                                    <span>0%</span></div>
                                            </div>
                                            <div class="khach"><img  class="u" src="images/khachhang.png" height="60" width="60"/>
                                            </div>
                                            <div class="sao3">       <ul class="rating d-flex">
                                                <li class="on"><i class="zmdi zmdi-star"></i></li>
                                                <li class="on"><i class="zmdi zmdi-star"></i></li>
                                                <li class="on"><i class="zmdi zmdi-star"></i></li>
                                                <li class="on"><i class="zmdi zmdi-star"></i></li>
                                                <li class="on"><i class="zmdi zmdi-star"></i></li>
                                            </ul></div>
                                            <div class="tenk"><p>Bởi <b>Trần Bảo Yến</b> 02/08/2019 15:03:02</p></div>
                                            <div class="nx"><p>Giao hàng nhanh. Sách rẻ và không hề bị lỗi.</p></div>
                                            <div class="khach"><img  class="u1" src="images/khachhang.png" height="60" width="60"/>
                                            </div>
                                            <div class="sao1">       <ul class="rating d-flex">
                                                <li class="on"><i class="zmdi zmdi-star"></i></li>
                                                <li class="on"><i class="zmdi zmdi-star"></i></li>
                                                <li class="on"><i class="zmdi zmdi-star"></i></li>
                                                <li class="on"><i class="zmdi zmdi-star"></i></li>
                                                <li class="on"><i class="zmdi zmdi-star"></i></li>
                                            </ul></div>
                                            <div class="tenk1"><p>Bởi <b>Lê Thị Lan Anh</b> 30/04/2019 19:00:00</p></div>
                                            <div class="nx1"><p>Sách rất hay và ý nghĩa. Giao hàng nhanh. Sẽ ủng hộ shop dài dài</p></div>

                                        </div>
                                        <!--                                        <div class="review-content">-->
                                        <!--                                            <p>Hastech</p>-->
                                        <!--                                            <p>Review by Hastech</p>-->
                                        <!--                                            <p>Posted on 11/6/2018</p>-->
                                        <!--                                        </div>-->
                                    </div>
                                </div>
                                <div class="review-fieldset">
                                    <h5>Viết nhận xét</h5>
                                    <div class="review-field-ratings">
                                        <div class="product-review-table">
                                            <div class="review-field-rating d-flex">
                                                <span>Đánh giá của bạn</span>
                                                <ul class="rating d-flex">
                                                    <li class="off"><i class="zmdi zmdi-star"></i></li>
                                                    <li class="off"><i class="zmdi zmdi-star"></i></li>
                                                    <li class="off"><i class="zmdi zmdi-star"></i></li>
                                                    <li class="off"><i class="zmdi zmdi-star"></i></li>
                                                    <li class="off"><i class="zmdi zmdi-star"></i></li>
                                                </ul>
                                            </div>

                                        </div>
                                    </div>
                                    <div class="review_form_field">

                                        <div class="input__box">
                                            <span>Nhận xét sản phẩm</span>
                                            <textarea name="review"></textarea>
                                        </div>
                                        <div class="review-form-actions">
                                            <button>Gửi</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- End Single Tab Content -->
                        </div>
                    </div>
                    <div class="wn__related__product pt--80 pb--50">
                        <div class="section__title text-center">
                            <h2 class="title__be--2">Sản phẩm nổi bật</h2>
                        </div>
                        <div class="row mt--60">
                            <div class="productcategory__slide--2 arrows_style owl-carousel owl-theme">
                                <%
                                    ResultSet p2 = (ResultSet) request.getAttribute("p2");
                                    while (p2.next()){
                                %>
                                <div class="product product__style--3 col-lg-4 col-md-4 col-sm-6 col-12">
                                    <div class="product__thumb">
                                        <a class="first__img" href="<%=Util.fullPath("Chitietsanpham1?id="+p2.getInt(1))%>"><img src="<%=p2.getString(4)%>" height="340" width="230"/></a>

                                        <div class="hot__box">
                                            <span class="hot-label">BEST SALLER</span>
                                        </div>
                                    </div>
                                    <div class="product__content content--center">
                                        <h4><a href="<%=Util.fullPath("Chitietsanpham1?id="+p2.getInt(1))%>"><%=p2.getString(2)%></a></h4>
                                        <ul class="prize d-flex">
                                            <li><%=p2.getString(3)%>  ₫<</li>
                                        </ul>
                                        <div class="action">
                                            <div class="actions_inner">
                                                <ul class="add_to_links">
                                                    <li><a class="cart" href="cart.jsp"><i class="bi bi-shopping-bag4"></i></a></li>
                                                    <li><a class="wishlist" href="<%= Util.fullPath("AddCTSP?id="+p2.getInt(1))%>" title="Thêm vào giỏ hàng"><i class="bi bi-shopping-cart-full"></i></a></li>
                                                    <li><a data-toggle="modal" title="Quick View" class="quickview modal-view detail-link" href="#productmodal"><i class="bi bi-search"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="product__hover--content">
                                            <ul class="rating d-flex">
                                                <li class="on"><i class="zmdi zmdi-star"></i></li>
                                                <li class="on"><i class="zmdi zmdi-star"></i></li>
                                                <li class="on"><i class="zmdi zmdi-star"></i></li>
                                                <li class="off"><i class="zmdi zmdi-star"></i></li>
                                                <li class="off"><i class="zmdi zmdi-star"></i></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>

                                <% } %>

                            </div>
                        </div>
                    </div>
                   
                </div>
                <div class="col-lg-3 col-12 md-mt-40 sm-mt-40">
                    <div class="shop__sidebar">
                       
                            <img class="i" src="images/others/3K6Ps4-1.jpg" height="350" width="280"/></aside>
                    </div>
                </div>

            </div>
            <% } %>
        </div>
    </div>
    <!-- End main Content -->
    <!-- Start Search Popup -->
    <div class="box-search-content search_active block-bg close__top">
        <form id="search_mini_form--2" class="minisearch" action="#">
            <div class="field__search">
                <input type="text" placeholder="Search entire store here...">
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
    <!-- Footer Area -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- //Footer Area -->
    <!-- QUICKVIEW PRODUCT -->
    <div id="quickview-wrapper">
        <!-- Modal -->
        <div class="modal fade" id="productmodal" tabindex="-1" role="dialog">
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

</body>
</html>
