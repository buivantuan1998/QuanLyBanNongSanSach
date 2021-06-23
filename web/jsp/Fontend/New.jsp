<%-- 
    Document   : New
    Created on : Jan 11, 2020, 4:43:40 PM
    Author     : Win 10
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="vi">
    <jsp:include page="Head.jsp"></jsp:include>
        <iframe src='//www.googletagmanager.com/ns.html?id=GTM-MS77Z9' height='0' width='0' style='display:none;visibility:hidden'></iframe>
        </noscript>
        <script>
            (function (w, d, s, l, i) {
                w[l] = w[l] || [];
                w[l].push({
                    'gtm.start':
                            new Date().getTime(), event: 'gtm.js'
                });
                var f = d.getElementsByTagName(s)[0],
                        j = d.createElement(s), dl = l != 'dataLayer' ? '&l=' + l : '';
                j.async = true;
                j.src =
                        '//www.googletagmanager.com/gtm.js?id=' + i + dl;
                f.parentNode.insertBefore(j, f);
            })(window, document, 'script', 'dataLayer', 'GTM-MS77Z9');
        </script>

        <body  class="" >  
            <div class="page"> 
            <c:choose>
                <c:when test="${account==null}">
                    <jsp:include page="Header.jsp"></jsp:include>
                </c:when>
                <c:otherwise>
                    <jsp:include page="Header1.jsp"></jsp:include>
                </c:otherwise>
            </c:choose>
            <!-- end header --> 
            <!-- Navbar -->
            <jsp:include page="Menu.jsp"></jsp:include>
                <!-- end nav -->

                <div class="breadcrumbs">
                    <div class="container">
                        <div class="row">
                            <ul>				
                                <li class="home"> <a href="/" title="Trang chủ">Trang chủ</a><span>—›</span></li>				

                                <li><strong>Tin tức</strong></li>

                            </ul>
                        </div>
                    </div>
                </div>

                <div class="main-container col2-right-layout">
                    <div class="main container">
                        <div class="row">
                            <div class="col-main col-sm-9">
                                <div class="page-title">
                                    <h1>Tin tức</h1>
                                </div>

                                <div class="blog-wrapper" id="main">
                                    <div class="site-content" id="primary">
                                        <div role="main" id="content">
                                        <c:forEach items="${newPost}" var="newPost">
                                            <article class="blog_entry clearfix" >
                                                <header class="blog_entry-header clearfix">
                                                    <div class="blog_entry-header-inner">
                                                        <h3 class="blog_entry-title"> <a rel="bookmark" href="PostDetail.htm?Id=${newPost.id}">${newPost.postTitle}</a> </h3>
                                                    </div>
                                                    <!--blog_entry-header-inner--> 
                                                </header>
                                                <div class="entry-content">
                                                    <div class="featured-thumb">
                                                        <a href="PostDetail.htm?Id=${newPost.id}" title="${newPost.postTitle}">

                                                            <img src="/QuanLyBanNongSan/jsp/Fontend/images/${newPost.images}" alt="${newPost.postTitle}">

                                                        </a>
                                                    </div>
                                                    <div class="entry-content">

                                                        <p><p style="text-align: justify;">${newPost.content}</p></p>

                                                    </div>
                                                    <!--<p> <a class="btn" href="PostDetail.htm?Id={newPost.id}">Xem chi tiết</a> </p>-->
                                                </div>
                                                <footer class="entry-meta"><time class="entry-date">${newPost.createDate}</time></footer>
                                            </article>
                                        </c:forEach>
                                    </div>
                                </div>
                                <div class="toolbar">
                                    <div class="pager">
                                        <div class="pages">

                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-right sidebar col-sm-3">
                            <div role="complementary" class="widget_wrapper13" id="secondary">

                                <div class="popular-posts widget widget__sidebar " id="recent-posts-4">
                                    <h2 class="widget-title"><span>Tin mới </span></h2>
                                    <div class="widget-content">
                                        <ul class="posts-list unstyled clearfix">
                                            <c:forEach items="${newPost}" var="newPost">
                                                <li>
                                                    <figure class="featured-thumb" style="width:35%;">
                                                        <a href="PostDetail.htm?Id=${newPost.id}" title="${newPost.postTitle}">

                                                            <img src="/QuanLyBanNongSan/jsp/Fontend/images/${newPost.images}" style=" width: 100px;" alt="${newPost.postTitle}">


                                                        </a> 
                                                    </figure>
                                                    <!--featured-thumb-->
                                                    <h4><a title="${newPost.postTitle}" href="PostDetail.htm?Id=${newPost.id}">${newPost.postTitle}</a></h4>
                                                    <p class="post-meta"><i class="icon-calendar"></i>
                                                        <time class="entry-date">${newPost.created}</time>
                                                        .</p>
                                                </li>
                                            </c:forEach>

                                        </ul>
                                    </div>
                                    <!--widget-content--> 
                                </div>

                                <div class="popular-posts widget widget_categories" id="categories-2">
                                    <h2 class="widget-title"><span>Danh mục tin tức</span></h2>
                                    <ul>

                                        <li class="cat-item cat-item-19599"><a href="homeFontend.htm">Trang chủ</a></li>

                                        <li class="cat-item cat-item-19599"><a href="about.htm">Giới thiệu</a></li>

                                        <li class="cat-item cat-item-19599"><a href="getAllProduct.htm">Sản phẩm</a></li>

                                        <li class="cat-item cat-item-19599"><a href="post.htm">Tin tức</a></li>

                                        <li class="cat-item cat-item-19599"><a href="/tin-tuc">Liên hệ</a></li>

                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <jsp:include page="Footer.jsp"></jsp:include>
            <!-- End Footer -->
        </div>
        <script type="text/javascript">
            Bizweb.updateCartFromForm = function (cart, cart_summary_id, cart_count_id) {

                if ((typeof cart_summary_id) === 'string') {
                    var cart_summary = jQuery(cart_summary_id);
                    if (cart_summary.length) {
                        // Start from scratch.
                        cart_summary.empty();
                        // Pull it all out.        
                        jQuery.each(cart, function (key, value) {
                            if (key === 'items') {

                                var table = jQuery(cart_summary_id);
                                if (value.length) {

                                    jQuery('<div class="block-subtitle">Sản phẩm đã cho vào giỏ hàng</div>').appendTo(table)
                                    jQuery.each(value, function (i, item) {


                                        if (item.image != null) {
                                            var src = Bizweb.resizeImage(item.image, 'small');
                                        } else {
                                            var src = 'http://bizweb.dktcdn.net/thumb/medium/assets/themes_support/noimage.gif';
                                        }

                                        jQuery('<li class="item even"> <a class="product-image" href="' + item.url + '"><img src="' + src + '" width="80"></a><div class="detail-item"><div class="product-details"> <a href="javascript:void(0);" onclick="Bizweb.removeItem(' + item.variant_id + ')" title="xóa sản phẩm" onClick="" class="glyphicon glyphicon-remove">&nbsp;</a><p class="product-name"> <a href="' + item.url + '" title="' + item.name + '">' + item.name + '</a> </p></div><div class="product-details-bottom"> <span class="price">' + Bizweb.formatMoney(item.price, "{{amount_no_decimals_with_comma_separator}}₫") + '</span> <span class="title-desc">Số lượng:</span> <strong>' + item.quantity + '</strong> </div></div></li>').appendTo(table);
                                    });
                                    jQuery('<div class="top-subtotal">Tổng tiền: <span class="price total_price">2.050.000₫</span></div><div class="actions"><a class="btn-checkout" href="/checkout\"><span>Thanh toán</span></a><a class="view-cart" href="/cart\"><span>giỏ hàng</span></a></div>').appendTo(table);
                                } else {
                                    jQuery('<div class="block-subtitle">Không có sản phẩm nào trong giỏ hàng.</div>').appendTo(table);
                                }
                            }
                        });
                    }
                }
                updateCartDesc(cart);
            }


            function updateCartDesc(data) {
                var $cartLinkText = $('#open_shopping_cart'),
                        $cartCount = $('#cart-total'),
                        $cartPrice = Bizweb.formatMoney(data.total_price, "{{amount_no_decimals_with_comma_separator}}₫");
                switch (data.item_count) {
                    case 0:
                        $cartLinkText.attr('data-amount', '0');
                        $cartCount.text('0');
                        break;
                    case 1:
                        $cartLinkText.attr('data-amount', '1');
                        $cartCount.text('1');
                        break;
                    default:
                        $cartLinkText.attr('data-amount', data.item_count);
                        $cartCount.text(data.item_count);
                        break;
                }
                $('.total_price').html($cartPrice);
            }
            Bizweb.onCartUpdate = function (cart) {
                Bizweb.updateCartFromForm(cart, '.shopping_cart', 'shopping-cart');
            };
            $(window).load(function () {
                // Let's get the cart and show what's in it in the cart box.  
                Bizweb.getCart(function (cart) {
                    Bizweb.updateCartFromForm(cart, '.shopping_cart');
                });
            });
        </script>
    </body>

</html>
