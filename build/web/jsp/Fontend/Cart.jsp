<%-- 
    Document   : Cart
    Created on : Jan 11, 2020, 4:40:56 PM
    Author     : Win 10
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html> <!--<![endif]-->

    <jsp:include page="Head.jsp"></jsp:include>
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

                                <li><strong>Giỏ hàng</strong></li>

                            </ul>
                        </div>
                    </div>
                </div>

                <section class="main-container col1-layout">
                    <div class="main container">
                        <div class="col-main">
                            <div class="cart wow bounceInUp animated">
                                <div class="page-title">
                                    <h2>Giỏ hàng</h2>
                                </div>
                                <font color="red">${messageQuantity}</font>
                                <div class="table-responsive">
                                    <form action="updateCart.htm" method="post">
                                        <input type="hidden" value="Vwww7itR3zQFe86m" name="form_key">
                                        <fieldset>
                                            <table class="data-table cart-table" id="shopping-cart-table">
                                                <thead>
                                                    <tr class="first last">
                                                        <th rowspan="1">&nbsp;</th>
                                                        <th rowspan="1"><span class="nobr">Tên sản phẩm</span></th>
                                                        <th colspan="1" class="a-center"><span class="nobr">Giá</span></th>
                                                        <th class="a-center" rowspan="1">Số lượng</th>
                                                        <th colspan="1" class="a-center">Tổng tiền</th>
                                                        <th class="a-center" rowspan="1">&nbsp;</th>
                                                    </tr>
                                                </thead>
                                                <tfoot>
                                                    <tr class="first last">
                                                        <td class="a-right last" colspan="50">
                                                            <button onclick="window.location = 'homeFontend.htm'" class="button btn-continue" title="Continue Shopping" type="button">
                                                                <span>
                                                                    <span>Tiếp tục mua hàng</span>                                                                        
                                                                </span>
                                                            </button>
                                                            <button class="button btn-update" title="Update Cart" value="update_qty" name="update_cart_action" type="submit"><span><span>Cập nhật giỏ hàng</span></span></button>
                                                            <button onclick="window.location = 'removeAllCart.htm'" id="empty_cart_button"
                                                                    class="button btn-empty" title="Clear Cart" value="empty_cart" name="update_cart_action" type="button">
                                                                <span>
                                                                    <span>Xóa giỏ hàng</span>

                                                                </span>
                                                            </button>
                                                        </td>
                                                    </tr>
                                                </tfoot>
                                                <tbody>
                                                <c:forEach items="${listCart}" var="cart">
                                                    <tr class="first odd">
                                                        <td class="image" style="text-align: center;">
                                                            <a class="product-image" title="${cart.product.productName}" href="productDetail.htm?Id=${cart.product.id}">
                                                                <img width="75" height="75" alt="${cart.product.productName}" src="/QuanLyBanNongSan/jsp/Fontend/images/${cart.product.images}">
                                                            </a>
                                                        </td>
                                                        <td>
                                                            <h2 class="product-name"> 
                                                                <a href="productDetail.htm?Id=${cart.product.id}">${cart.product.productName}(${cart.note})</a>
                                                            </h2>

                                                        </td>

                                                        <c:choose>
                                                            <c:when test="${cart.product.discountId==0}">
                                                                <td class="a-right">
                                                                    <span class="cart-price"> 
                                                                        <span class="price">${cart.product.priceOutput}₫</span>
                                                                    </span>
                                                                </td>
                                                                <td class="a-center movewishlist">
                                                                    <input class="variantID" type="hidden" name="variantId" value="${cart.product.id}">
                                                                    <input maxlength="12" class="input-text qty" type="number" min="0" name="Lines" id="updates_3224350" value="${cart.quantity}">
                                                                </td>
                                                                <td class="a-right movewishlist">
                                                                    <span class="cart-price"> 
                                                                        <span class="price">${cart.quantity*cart.product.priceOutput}₫</span>
                                                                    </span>
                                                                </td>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <td class="a-right">
                                                                    <span class="cart-price"> 
                                                                        <span class="price">${cart.product.priceOutput}₫</span>
                                                                    </span>
                                                                </td>
                                                                <td class="a-center movewishlist">
                                                                    <input maxlength="12" class="input-text qty" type="number" min="0" name="Lines" id="updates_3224350" value="${cart.quantity}">
                                                                </td>
                                                                <td class="a-right movewishlist">
                                                                    <span class="cart-price"> 
                                                                        <span class="price">${cart.quantity*cart.product.priceOutput}₫</span>
                                                                    </span>
                                                                </td>
                                                            </c:otherwise>
                                                        </c:choose>


                                                        <td class="a-center last" style="text-align: center;">
                                                            <a  style="float:initial !important;" class="button remove-item" title="Remove item" href="remove.htm?Id=${cart.product.id}">
                                                                <span>
                                                                    <span>Remove item</span>

                                                                </span>
                                                            </a>
                                                        </td>
                                                    </tr>
                                                </c:forEach>                                                                                
                                            </tbody>
                                        </table>
                                    </fieldset>
                                </form>
                            </div>

                            <div class="cart-collaterals row">
                                <div class="totals col-sm-4" style="float:right">
                                    <h3><span>Tổng tiền</span></h3>
                                    <div class="inner">
                                        <table class="table shopping-cart-table-total" id="shopping-cart-totals-table">
                                            <colgroup>
                                                <col>
                                                <col width="1">
                                            </colgroup>
                                            <tfoot>
                                                <tr>
                                                    <td colspan="1" class="a-left" style=""><strong>Tổng</strong></td>
                                                    <td class="a-right" style=""><strong><span class="price">${total}₫</span></strong></td>
                                                </tr>
                                            </tfoot>
                                        </table>
                                        <ul class="checkout">
                                            <c:choose>
                                                <c:when test="${listCart.size()!=0}">
                                                    <li>
                                                        <button onclick="window.location = 'Payment.htm'" name="checkout"  
                                                                class="button btn-proceed-checkout" title="Proceed to Checkout" type="button">
                                                            <span>Thanh toán</span>
                                                        </button>
                                                    </li>
                                                </c:when>
                                                <c:otherwise>
                                                    <li>
                                                        <button onclick="return confirm('Không có sản phẩm trong giỏ hàng')" name="checkout"  
                                                                class="button btn-proceed-checkout" title="Proceed to Checkout" type="button">
                                                            <span>Thanh toán</span>
                                                        </button>
                                                    </li>
                                                </c:otherwise>
                                            </c:choose>
                                        </ul>
                                    </div>
                                    <!--inner--> 
                                </div>
                            </div>

                        </div>
                        <!-- BEGIN CART COLLATERALS -->

                    </div>
                </div>
            </section>
            <style>
                img{max-width:initial;}
            </style>
            <footer class="footer">
                <div class="brand-logo ">
                    <div class="container">
                        <div class="slider-items-products">
                            <div id="brand-logo-slider" class="product-flexslider hidden-buttons">
                                <div class="slider-items slider-width-col6"> 

                                    <!-- Item -->
                                    <div class="item"> <a href=""><img src="/QuanLyBanNongSan/jsp/Fontend/images/b-logo1.png" alt="polo-theme"></a> </div>
                                    <!-- End Item --> 

                                    <!-- Item -->
                                    <div class="item"> <a href=""><img src="/QuanLyBanNongSan/jsp/Fontend/images/b-logo2.png" alt="polo-theme"></a> </div>
                                    <!-- End Item --> 

                                    <!-- Item -->
                                    <div class="item"> <a href=""><img src="/QuanLyBanNongSan/jsp/Fontend/images/b-logo3.png" alt="polo-theme"></a> </div>
                                    <!-- End Item --> 

                                    <!-- Item -->
                                    <div class="item"> <a href=""><img src="/QuanLyBanNongSan/jsp/Fontend/images/b-logo4.png" alt="polo-theme"></a> </div>
                                    <!-- End Item --> 

                                    <!-- Item -->
                                    <div class="item"> <a href=""><img src="/QuanLyBanNongSan/jsp/Fontend/images/b-logo5.png" alt="polo-theme"></a> </div>
                                    <!-- End Item --> 

                                    <!-- Item -->
                                    <div class="item"> <a href=""><img src="/QuanLyBanNongSan/jsp/Fontend/images/b-logo6.png" alt="polo-theme"></a> </div>
                                    <!-- End Item --> 

                                    <!-- Item -->
                                    <div class="item"> <a href=""><img src="/QuanLyBanNongSan/jsp/Fontend/images/b-logo7.png" alt="polo-theme"></a> </div>
                                    <!-- End Item --> 

                                    <!-- Item -->
                                    <div class="item"> <a href=""><img src="/QuanLyBanNongSan/jsp/Fontend/images/b-logo8.png" alt="polo-theme"></a> </div>
                                    <!-- End Item --> 

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-top">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-6 col-md-7">
                                <div class="block-subscribe">
                                    <div class="newsletter">

                                        <h3>Đăng kí nhận tin</h3>



                                        <form action="//dkt.us13.list-manage.com/subscribe/post?u=0bafe4be7e17843051883e746&amp;id=3bdd6e9e3b" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" target="_blank">      
                                            <input id="email" name="EMAIL" type="text" value="" class="input_newsletter input-text required-entry validate-email" placeholder="Email nhận tin" style="width: 55%;">
                                            <button type="submit" id="subscribe" class="subscribe" name="subscribe"><span>Gửi đi</span></button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-6 col-md-5">
                                <div class="social">
                                    <ul>
                                        <li class="fb"><a href="1"></a></li>
                                        <li class="tw"><a href="2"></a></li>
                                        <li class="googleplus"><a href="Về chúng tôi"></a></li>
                                        <li class="rss"><a href="3"></a></li>
                                        <li class="pintrest"><a href="4"></a></li>
                                        <li class="linkedin"><a href="6"></a></li>
                                        <li class="youtube"><a href="5"></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-middle container">
                    <div class="row">
                        <div class="col-md-3 col-sm-4">
                            <div class="footer-logo">
                                <a class="logo" href="homeFontend.htm">

                               

                                </a>
                            </div>
                            <p>FreshFood shop được thành lập từ 8/2010 được sự tin tưởng của khách hàng trong suốt thời gian hoạt động đến nay cửa hàng ngày một phát triển và xây dựng được thương hiệu trong lòng quý khách .</p>
                        </div>
                        <div class="col-md-2 col-sm-4">
                            <h3>Về chúng tôi</h3>
                            <ul class="links">

                                <li><a href="/">Trang chủ</a></li>

                                <li><a href="/gioi-thieu">Giới thiệu</a></li>

                                <li><a href="/collections/all">Sản phẩm</a></li>

                                <li><a href="/tin-tuc">Tin tức</a></li>

                            </ul>
                        </div>
                        <div class="col-md-2 col-sm-4">
                            <h3>Hỗ trợ</h3>
                            <ul class="links">

                                <li><a href="/search">Tìm kiếm</a></li>

                                <li><a href="/account/login">Đăng nhập</a></li>

                                <li><a href="/account/register">Đăng ký</a></li>

                                <li><a href="/cart">Giỏ hàng</a></li>

                            </ul>
                        </div>
                        <div class="col-md-2 col-sm-4">
                            <h3>Hướng dẫn</h3>
                            <ul class="links">

                                <li><a href="/dieu-khoan">Điều khoản</a></li>

                                <li><a href="/huong-dan">Hướng dẫn</a></li>

                                <li><a href="/chinh-sach">Chính sách</a></li>

                                <li><a href="/lien-he">Liên hệ</a></li>

                            </ul>
                        </div>
                        <div class="col-md-3 col-sm-4">
                            <h3>Liên hệ</h3>
                            <div class="contacts-info">
                                <address>
                                    <i class="add-icon">&nbsp;</i>442 Đội Cấn - Ba Đình - Hà Nội
                                </address>
                                <div class="phone-footer"><i class="phone-icon">&nbsp;</i> (04) 6674 2332</div>
                                <div class="email-footer"><i class="email-icon">&nbsp;</i> <a href="mailto:support@bizweb.vn">support@bizweb.vn</a> </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-5 col-xs-12 coppyright">© Bản quyền thuộc về Avent Team | Cung cấp bởi <a href="https://www.bizweb.vn/?utm_source=site-khach-hang&utm_campaign=referral_bizweb&utm_medium=footer&utm_content=cung-cap-boi-bizweb" target="_blank" title="Bizweb">Bizweb</a></div>
                            <div class="col-sm-7 col-xs-12 company-links">
                                <ul class="links">

                                    <li><a href="/">Trang chủ</a></li>

                                    <li><a href="/gioi-thieu">Giới thiệu</a></li>

                                    <li><a href="/collections/all">Sản phẩm</a></li>

                                    <li><a href="/tin-tuc">Tin tức</a></li>

                                    <li><a href="/lien-he">Liên hệ</a></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </footer>
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
                                    jQuery('<div class="top-subtotal">Tổng tiền: <span class="price total_price">2.050.000₫</span></div><div class="actions"><a class="btn-checkout" href="initPayment.htm"><span>Thanh toán</span></a><a class="view-cart" href="/cart\"><span>giỏ hàng</span></a></div>').appendTo(table);
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
