<%-- 
    Document   : Product
    Created on : Jan 11, 2020, 4:44:29 PM
    Author     : Win 10
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html class="no-js" lang="vi"> <!--<![endif]-->
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
                <script src="/QuanLyBanNongSan/jsp/Fontend/js/update.js" type="text/javascript"></script>
                <div class="breadcrumbs">
                    <div class="container">
                        <div class="row">
                            <ul>				
                                <li class="home"> <a href="/" title="Trang chủ">Trang chủ</a><span>—›</span></li>				


                                <li ><strong>Tất cả sản phẩm</strong></li>


                            </ul>
                        </div>
                    </div>
                </div>

                <!-- Two columns content -->
                <div class="main-container col2-left-layout">
                    <div class="main container">
                        <div class="row">
                        <jsp:include page="AllProduct.jsp"></jsp:include>
                            <aside class="col-left sidebar col-sm-3 col-xs-12 col-sm-pull-9">
                                
                                <!-- danh muc san pham -->
                            <jsp:include page="CatalogProductMenu.jsp"></jsp:include>
                                <!-- End danh muc san pham -->

                                <!-- Loc san pham -->
                            <jsp:include page="Provider.jsp"></jsp:include>
                                <!-- End loc san pham -->
                                <!-- YourCart -->
                            <jsp:include page="YourCart.jsp"></jsp:include>
                                <!-- End YourCart -->
                            </aside>
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