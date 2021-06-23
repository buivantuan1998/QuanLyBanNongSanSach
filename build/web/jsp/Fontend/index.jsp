<%-- 
    Document   : index
    Created on : Jan 11, 2020, 2:14:59 PM
    Author     : Win 10
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="vi">
    <jsp:include page="Head.jsp"></jsp:include>
        <body  class="" >  
            <script>
                window.fbAsyncInit = function () {
                    FB.init({
                        appId: '1861181127352213',
                        cookie: true,
                        xfbml: true,
                        version: 'v6.0'
                    });

                    FB.AppEvents.logPageView();

                };

                (function (d, s, id) {
                    var js, fjs = d.getElementsByTagName(s)[0];
                    if (d.getElementById(id)) {
                        return;
                    }
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "https://connect.facebook.net/en_US/sdk.js";
                    fjs.parentNode.insertBefore(js, fjs);
                }(document, 'script', 'facebook-jssdk'));
            </script> 
            <script type="text/javascript">
                if (window.location.hash && window.location.hash == '#_=_') {
                    window.location.hash = '';
                }
            </script>
            <div class="page"> 

                <!-- end nav -->

                <h1 style="display:none;">polo-theme</h1>
                <!-- Slider -->
                <!-- end Slider --> 
            <c:choose>
                <c:when test="${account==null}">
                    <jsp:include page="Header.jsp"></jsp:include>
                </c:when>
                <c:otherwise>
                    <jsp:include page="Header1.jsp"></jsp:include>
                </c:otherwise>
            </c:choose>

            <!-- header service -->
            <jsp:include page="Menu.jsp"></jsp:include>
                <div class="container">
                    <div class="header-service">
                        <div class="col-lg-3 col-sm-6 col-xs-12">
                            <div class="content">
                                <div class="ic icon-truck">&nbsp;</div>
                                <span class="dv"><strong>Miễn phí vận chuyển cho đơn hàng trên 1 triệu đồng</strong></span></div>
                        </div>
                        <div class="col-lg-3 col-sm-6 col-xs-12">
                            <div class="content">
                                <div class="ic icon-support">&nbsp;</div>
                                <span class="dv"><strong>Dịch vụ hỗ trợ khách hàng trực tuyến 24/7</strong></span></div>
                        </div>
                        <div class="col-lg-3 col-sm-6 col-xs-12">
                            <div class="content">
                                <div class="ic icon-money">&nbsp;</div>
                                <span class="dv"><strong>Hoàn trả hàng miễn phí trong vòng 3 ngày</strong></span></div>
                        </div>
                        <div class="col-lg-3 col-sm-6 col-xs-12">
                            <div class="content">
                                <div class="ic icon-dis">&nbsp;</div>
                                <span class="dv"><strong>Giảm 10% cho khách mua hàng thường xuyên</strong></span></div>
                        </div>
                    </div>
                </div>
                <!-- end header service --> 

                <!-- main container -->

                <section class="main-container col1-layout home-content-container">
                    <div class="container">
                        <div class="std">
                            <div class="best-seller-pro">
                                <div class="slider-items-products">
                                    <div class="new_title center">
                                        <h2>Sản phẩm nổi bật</h2>
                                    </div>
                                    <div id="best-seller-slider" class="product-flexslider">
                                        <div class="slider-items slider-width-col4"> 
                                        <c:forEach items="${productHot}" var="productHot">
                                            <div class="item">
                                                <div class="col-item">
                                                    <div class="product-image-area"> 
                                                        <a class="product-image" title="${productHot.productName}" href="productDetail.htm?Id=${productHot.id}"> 
                                                            <img src="/QuanLyBanNongSan/jsp/Fontend/images/${productHot.images}" class="img-responsive" alt="${productHot.productName}" style="width: 250px; height: 250px" /> 
                                                        </a>
                                                    </div>
                                                    <div class="info">
                                                        <div class="info-inner">
                                                            <div class="item-title"> 
                                                                <h3>
                                                                    <a title="${productHot.productName}" href="productDetail.htm?Id=${productHot.id}">${productHot.productName}</a>
                                                                </h3>
                                                            </div>
                                                            <!--item-title-->
                                                            <div class="item-content">
                                                                <div class="price-box">
                                                                    <p class="special-price"> <span class="price">${productHot.priceOutput}₫ </span> </p>
                                                                </div>
                                                            </div>
                                                            <!--item-content--> 
                                                        </div>
                                                        <!--info-inner-->
                                                        <form action="addCart.htm" method="get" class="variants" id="product-actions-830910" enctype="multipart/form-data">
                                                            <div class="actions">
                                                                <input type="hidden" name="quantity" value="1">
                                                                <input type="hidden" name="Id" value="${productHot.id}">
                                                                <button class="btn-transparent pull-xs-left" title="Cho vào giỏ hàng" type="submit"><span>Cho vào giỏ hàng</span></button>
                                                            </div>
                                                        </form>
                                                        <div class="clearfix"> </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <!-- End main container --> 

            <!-- offer banner section -->

            <!-- end offer banner section --> 

            <!-- Featured Slider -->

            <section class="featured-pro container">
                <div class="slider-items-products">
                    <div class="new_title center">
                        <h2>Sản phẩm mới</h2>
                    </div>
                    <div id="featured-slider" class="product-flexslider hidden-buttons hidden_popup_cart">
                        <div class="slider-items slider-width-col4"> 
                            <c:forEach items="${productNew}" var="productNew">
                                <div class="item">
                                    <div class="col-item">
                                        <div class="product-image-area"> 
                                            <a class="product-image" title="${productNew.productName}" href="productDetail.htm?Id=${productNew.id}"> 
                                                <img src="/QuanLyBanNongSan/jsp/Fontend/images/${productNew.images}" class="img-responsive" alt="${productNew.productName}" style="width: 200px; height: 200px" /> 
                                            </a>
                                            <form action="addCart.htm" method="get" class="variants" id="product-actions-830910" enctype="multipart/form-data">
                                                <div class="hover_fly">
                                                    <a class="exclusive ajax_add_to_cart_button btn-cart add_to_cart" href="#" title="Cho vào giỏ hàng">
                                                        <div><i class="icon-shopping-cart"></i><span>Cho vào giỏ hàng</span></div>
                                                    </a>
                                                    <input type="hidden" name="variantId" value="1273197" />
                                                </div>
                                            </form>
                                        </div>
                                        <div class="info">
                                            <div class="info-inner">
                                                <div class="item-title"> 
                                                    <h3>
                                                        <a title="${productNew.productName}" href="productDetail.htm?Id=${productNew.id}">${productNew.productName}</a>
                                                    </h3>
                                                </div>
                                                <!--item-title-->
                                                <div class="item-content">
                                                    <div class="price-box">
                                                        <p class="special-price"> <span class="price">${productNew.priceOutput}₫ </span> </p>
                                                    </div>
                                                </div>
                                                <!--item-content--> 
                                            </div>
                                            <!--info-inner-->
                                            <form action="addCart.htm" method="get" class="variants" id="product-actions-830910" enctype="multipart/form-data">
                                                <div class="actions">
                                                    <input type="hidden" name="quantity" value="1">
                                                    <input type="hidden" name="Id" value="${productNew.id}">
                                                    <button class="btn-transparent pull-xs-left" title="Cho vào giỏ hàng" type="submit"><span>Cho vào giỏ hàng</span></button>
                                                </div>
                                            </form>
                                            <div class="clearfix"> </div>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </section>

            <!-- End Featured Slider --> 
            <!-- middle slider -->
            <section class="middle-slider container">
                <div class="row">
                    <div class="col-md-6">

                        <div class="bag-product-slider small-pr-slider cat-section">
                            <div class="slider-items-products">
                                <div class="new_title center">
                                    <h2>Sản phẩm bán chạy</h2>
                                </div>
                                <div id="bag-seller-slider" class="product-flexslider">
                                    <div class="slider-items slider-width-col3"> 
                                        <c:forEach items="${productHot}" var="productHot">
                                            <div class="item">
                                                <div class="col-item">
                                                    <div class="product-image-area"> 
                                                        <a class="product-image" title="${productHot.productName}" href="productDetail.htm?Id=${productHot.id}"> 
                                                            <img src="/QuanLyBanNongSan/jsp/Fontend/images/${productHot.images}" class="img-responsive" alt="${productHot.productName}" style="width: 200px; height: 200px"/> 
                                                        </a>

                                                    </div>
                                                    <div class="info">
                                                        <div class="info-inner">
                                                            <div class="item-title"> 
                                                                <h3><a title="${productHot.productName}" href="productDetail.htm?Id=${productHot.id}">${productHot.productName}</a>
                                                                </h3>
                                                            </div>
                                                            <!--item-title-->
                                                            <div class="item-content">

                                                                <div class="price-box">
                                                                    <p class="special-price"> <span class="price">${productHot.priceOutput}₫ </span> </p>
                                                                </div>

                                                            </div>
                                                            <!--item-content--> 
                                                        </div>
                                                        <!--info-inner-->
                                                        <form action="addCart.htm" method="get" class="variants" id="product-actions-830911" enctype="multipart/form-data">


                                                            <div class="actions">
                                                                <input type="hidden" name="quantity" value="1">
                                                                <input type="hidden" name="Id" value="${productHot.id}">
                                                                <button class="btn-transparent pull-xs-left" title="Cho vào giỏ hàng" type="submit"><span>Cho vào giỏ hàng</span></button>
                                                            </div>

                                                        </form>
                                                        <div class="clearfix"> </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-md-6">

                        <div class="shoes-product-slider small-pr-slider cat-section">
                            <div class="slider-items-products">
                                <div class="new_title center">
                                    <h2>Sản phẩm khuyến mại</h2>
                                </div>
                                <div id="shoes-slider" class="product-flexslider hidden-buttons hidden_popup_cart">
                                    <div class="slider-items slider-width-col3"> 
                                        <c:forEach items="${productDiscount}" var="productDiscount">
                                            <div class="item">
                                                <div class="col-item">

                                                    <div class="product-image-area"> 
                                                        <a class="product-image" title="${productDiscount.productName}" href="productDetail.htm?Id=${productDiscount.id}"> 
                                                            <img src="/QuanLyBanNongSan/jsp/Fontend/images/${productDiscount.images}" class="img-responsive" alt="${productDiscount.productName}" style="width: 200px; height: 200px"/> 
                                                        </a>
                                                        <form action="/cart/add" method="post" class="variants" id="product-actions-830919" enctype="multipart/form-data">


                                                            <div class="hover_fly">
                                                                <a class="exclusive ajax_add_to_cart_button btn-cart add_to_cart" href="#" title="Cho vào giỏ hàng">
                                                                    <div><i class="icon-shopping-cart"></i><span>Cho vào giỏ hàng</span></div>
                                                                </a>
                                                                <input type="hidden" name="variantId" value="1273202" />
                                                            </div>

                                                        </form>
                                                    </div>
                                                    <div class="info">
                                                        <div class="info-inner">
                                                            <div class="item-title"> 
                                                                <h3>
                                                                    <a title="${productDiscount.productName}" href="productDetail.htm?Id=${productDiscount.id}">${productDiscount.productName}</a>
                                                                </h3>
                                                            </div>
                                                            <!--item-title-->
                                                            <div class="item-content">

                                                                <div class="price-box">
                                                                    <p class="special-price"> <span class="price">${productDiscount.priceOutput}₫ </span> </p>
                                                                </div>

                                                            </div>
                                                            <!--item-content--> 
                                                        </div>
                                                        <!--info-inner-->
                                                        <form action="addCart.htm" method="get" class="variants" id="product-actions-830919" enctype="multipart/form-data">


                                                            <div class="actions">
                                                                 <input type="hidden" name="quantity" value="1">
                                                                <input type="hidden" name="Id" value="${productDiscount.id}">
                                                                <button class="btn-transparent pull-xs-left" title="Cho vào giỏ hàng" type="submit"><span>Cho vào giỏ hàng</span></button>
                                                            </div>

                                                        </form>
                                                        <div class="clearfix"> </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </section>
            <!-- End middle slider --> 

            <!-- Latest Blog -->
            <section class="latest-blog container">
                <div class="blog-title">
                    <h2><span>Tin tức</span></h2>
                </div>
                <c:forEach items="${listPost}" var="post">
                    <div class="col-xs-12 col-sm-4">
                        <div class="blog-img"> <a href="/QuanLyBanNongSan/post.htm"><img src="/QuanLyBanNongSan/jsp/Fontend/images/${post.images}" alt="${post.postTitle}"/></a>
                        </div>
                        <h3><a href="/QuanLyBanNongSan/post.htm">${post.postTitle}</a></h3>
                        <div class="post-date"><i class="icon-calendar"></i>${post.createDate}</div>

                        <p><p style="text-align: justify;"></p></p>

                    </div>
                </c:forEach>


            </section>
            <!-- End Latest Blog -->
            <jsp:include page="Footer.jsp"></jsp:include>

            <!-- End Footer -->
        </div>

    </body>

</html>
