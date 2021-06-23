<%-- 
    Document   : Account
    Created on : Feb 10, 2020, 3:38:25 PM
    Author     : Win 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <jsp:include page="Head.jsp"></jsp:include>
        <body>		
            <div class="page-body">
                <div class="hidden-md hidden-lg opacity_menu"></div>
                <div class="opacity_filter"></div>
                <div class="body_opactiy"></div>
                <div class="op_login"></div>
                <!-- Main content -->
            <c:choose>
                <c:when test="${account==null}">
                    <jsp:include page="Header.jsp"></jsp:include>
                </c:when>
                <c:otherwise>
                    <jsp:include page="Header1.jsp"></jsp:include>
                </c:otherwise>
            </c:choose>
            <!-- end header --> 

            <jsp:include page="Menu.jsp"></jsp:include>

                <script src="//bizweb.dktcdn.net/100/037/483/themes/709526/assets/jquery-2.2.3.min.js?1564646079882" type="text/javascript"></script> 



                <section class="bread-crumb">
                    <span class="crumb-border"></span>
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 a-left">
                                <ul class="breadcrumb" itemscope itemtype="http://data-vocabulary.org/Breadcrumb">					
                                    <li class="home">
                                        <a itemprop="url" href="/" ><span itemprop="title">Trang chủ</span></a>						
                                        <span class="mr_lr">&nbsp;/&nbsp;</span>
                                    </li>

                                    <li><strong ><span itemprop="title">Trang khách hàng</span></strong></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </section> 
                <section class="signup page_customer_account">
                    <div class="container">
                        <div class="row">
                            <div class="col-xs-12 col-sm-12 col-md-12 col-main-acount">
                                <div id="parent" class="row">
                                    <div id="a" class="col-xs-12 col-sm-12 col-lg-9 col-left-account">
                                        <div class="title_head margin-bottom-20 m992">
                                            <h1 class="title_center_page left">
                                                <span class="padding__">Trang khách hàng</span>
                                            </h1>
                                        </div>
                                        <div class="form-signup name-account m992"> 
                                            <p><strong>Xin chào, <a href="/account/addresses" style="color:#c22b3b;">${userName}</a>&nbsp;!</strong></p>
                                    </div>
                                    <div class="col-xs-12 col-sm-12 col-lg-12 no-padding">
                                        <div class="my-account">
                                            <div class="dashboard">

                                                <div class="recent-orders">
                                                    <div class="table-responsive-block tab-all" style="overflow-x:auto;">
                                                        <table class="table table-cart" id="my-orders-table">
                                                            <thead class="thead-default">
                                                                <tr>
                                                                    <th>Đơn hàng</th>
                                                                    <th>Ngày đặt hàng</th>														
                                                                    <th>Địa chỉ</th>
                                                                    <th>Giá trị đơn hàng</th>
                                                                    <th>Tình trạng thanh toán</th>
                                                                    <th>Tình trạng vận chuyển</th>
                                                                </tr>
                                                            </thead>

                                                            <tbody>
                                                                <c:forEach items="${orderInfo}" var="oi">
                                                                    <tr>
                                                                        <td colspan="1"><p>${oi.orderId}</p></td>
                                                                        <td colspan="1"><p>${oi.createDate}</p></td>
                                                                        <td colspan="1"><p>${oi.address}</p></td>
                                                                        <td colspan="1"><p>${oi.totalAmount}</p></td>
                                                                        <td colspan="1"><p>${oi.paymentStatus}</p></td>
                                                                        <td colspan="1"><p>${oi.transportStatus}</p></td>
                                                                    </tr>
                                                                </c:forEach>


                                                            </tbody>


                                                        </table>

                                                    </div>

                                                    <div class="text-xs-right">

                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div id="b" class="col-xs-12 col-sm-12 col-lg-3 col-right-account">
                                    <div class="block-account">
                                        <div class="block-title-account"><h2>Tài khoản của tôi</h2></div>
                                        <div class="block-content form-signup">
                                            <p>Tên tài khoản: <strong style="line-height: 20px;"> ${userName}</strong></p>

                                            <p><i class="fa fa-home font-some" aria-hidden="true"></i>  <span>Địa chỉ: ${accountAct.address}</span></p>
                                            <p><i class="fa fa-mobile font-some" aria-hidden="true"></i> <span>Điện thoại: ${accountAct.phone}</span> </p>
                                            <p><i class="fa fa-map-marker font-some" aria-hidden="true"></i> <span> Địa chỉ 1: ${accountAct.address}</span></p>
                                            <p><i class="fa fa-yelp font-some" aria-hidden="true"></i> <span> Email: ${accountAct.email}</span></p> 
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </section>











            <jsp:include page="Footer.jsp"></jsp:include>
            <!-- Add to cart -->	
            <div class="ajax-load"> 
                <span class="loading-icon">
                    <svg version="1.1"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                         width="24px" height="30px" viewBox="0 0 24 30" style="enable-background:new 0 0 50 50;" xml:space="preserve">
                    <rect x="0" y="10" width="4" height="10" fill="#333" opacity="0.2">
                    <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0s" dur="0.6s" repeatCount="indefinite" />
                    <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0s" dur="0.6s" repeatCount="indefinite" />
                    <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0s" dur="0.6s" repeatCount="indefinite" />
                    </rect>
                    <rect x="8" y="10" width="4" height="10" fill="#333"  opacity="0.2">
                    <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
                    <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
                    <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
                    </rect>
                    <rect x="16" y="10" width="4" height="10" fill="#333"  opacity="0.2">
                    <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
                    <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
                    <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
                    </rect>
                    </svg>
                </span>
            </div>

            <div class="loading awe-popup">
                <div class="overlay"></div>
                <div class="loader" title="2">
                    <svg version="1.1"  xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                         width="24px" height="30px" viewBox="0 0 24 30" style="enable-background:new 0 0 50 50;" xml:space="preserve">
                    <rect x="0" y="10" width="4" height="10" fill="#333" opacity="0.2">
                    <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0s" dur="0.6s" repeatCount="indefinite" />
                    <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0s" dur="0.6s" repeatCount="indefinite" />
                    <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0s" dur="0.6s" repeatCount="indefinite" />
                    </rect>
                    <rect x="8" y="10" width="4" height="10" fill="#333"  opacity="0.2">
                    <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
                    <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
                    <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.15s" dur="0.6s" repeatCount="indefinite" />
                    </rect>
                    <rect x="16" y="10" width="4" height="10" fill="#333"  opacity="0.2">
                    <animate attributeName="opacity" attributeType="XML" values="0.2; 1; .2" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
                    <animate attributeName="height" attributeType="XML" values="10; 20; 10" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
                    <animate attributeName="y" attributeType="XML" values="10; 5; 10" begin="0.3s" dur="0.6s" repeatCount="indefinite" />
                    </rect>
                    </svg>
                </div>

            </div>


            <div class="error-popup awe-popup">
                <div class="overlay no-background"></div>
                <div class="popup-inner content">
                    <div class="error-message"></div>
                </div>
            </div>		
            <div id="popup-cart" class="modal fade" role="dialog">
                <div id="popup-cart-desktop" class="clearfix">
                    <div class="title-popup-cart">
                        <img src="//bizweb.dktcdn.net/100/037/483/themes/709526/assets/ico_check_.png?1564646079882"  alt="FreshFood"/> <span class="your_product">Bạn đã thêm [<span class="cart-popup-name"></span>] vào giỏ hàng thành công ! </span>
                    </div>
                    <div class="wrap_popup">
                        <div class="title-quantity-popup" >
                            <span class="cart_status" onclick="window.location.href = '/cart';">Giỏ hàng của bạn có <span class="cart-popup-count"></span> sản phẩm </span>
                        </div>
                        <div class="content-popup-cart">
                            <div class="thead-popup">
                                <div style="width: 53%;" class="text-left">Sản phẩm</div>
                                <div style="width: 15%;" class="text-center">Đơn giá</div>
                                <div style="width: 15%;" class="text-center">Số lượng</div>
                                <div style="width: 17%;" class="text-center">Thành tiền</div>
                            </div>
                            <div class="tbody-popup scrollbar-dynamic">
                            </div>
                            <div class="tfoot-popup">
                                <div class="tfoot-popup-1 a-right clearfix">
                                    <span class="total-p popup-total">Tổng tiền thanh toán: <span class="total-price"></span></span>
                                </div>
                                <div class="tfoot-popup-2 clearfix">
                                    <a class="button buy_ btn-proceed-checkout" title="tiếp tục mua hàng" href="javascript:;" onclick="$('#popup-cart').modal('hide');"><span><span>Tiếp tục mua hàng</span></span></a>
                                    <a class="button checkout_ btn-proceed-checkout" title="Thực hiện thanh toán" href="/checkout"><span>Thực hiện thanh toán</span></a>

                                </div>
                            </div>
                        </div>
                        <a title="Close" class="quickview-close close-window" href="javascript:;" onclick="$('#popup-cart').modal('hide');"><i class="fa  fa-close"></i></a>
                    </div>
                </div>

            </div>
            <div id="myModal" class="modal fade" role="dialog">
            </div>


            <!-- Bizweb javascript customer -->

            <script src="//bizweb.dktcdn.net/assets/themes_support/bizweb-api.js?4" type="text/javascript"></script>
            <script src="//bizweb.dktcdn.net/assets/themes_support/common.js?4" type="text/javascript"></script>   
            <script src="//bizweb.dktcdn.net/assets/themes_support/customer.js?4" type="text/javascript"></script>

            <!-- Bizweb javascript -->
            <script src="//bizweb.dktcdn.net/100/037/483/themes/709526/assets/option-selectors.js?1564646079882" type="text/javascript"></script>
            <script src="//bizweb.dktcdn.net/assets/themes_support/api.jquery.js?4" type="text/javascript"></script> 

            <!-- Plugin JS -->
            <script src="//bizweb.dktcdn.net/100/037/483/themes/709526/assets/plugin.js?1564646079882" type="text/javascript"></script>	

            <script src="//bizweb.dktcdn.net/100/037/483/themes/709526/assets/cs.script.js?1564646079882" type="text/javascript"></script>
            <script>
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
                                                    jQuery('<ul class="list-item-cart top_sider_bar"></ul>').appendTo(table);
                                                    jQuery.each(value, function (i, item) {

                                                        var src = item.image;
                                                        if (src == null) {
                                                            src = "https://bizweb.dktcdn.net/thumb/large/assets/themes_support/noimage.gif";
                                                        }
                                                        var buttonQty = "";
                                                        if (item.quantity == '1') {
                                                            // buttonQty = 'disabled';
                                                        } else {
                                                            buttonQty = '';
                                                        }
                                                        jQuery('<li class="item productid-' + item.variant_id + '"><div class="wrap_item"><a class="product-image" href="' + item.url + '" title="' + item.name + '">'
                                                                + '<img alt="' + item.name + '" src="' + src + '"width="' + '100' + '"\></a>'
                                                                + '<div class="detail-item"><div class="product-details"> <a href="javascript:;" data-id="' + item.variant_id + '" title="Xóa" class="remove-item-cart fa fa-close">&nbsp;</a>'
                                                                + '<h3 class="product-name"> <a href="' + item.url + '" title="' + item.name + '">' + item.name + '</a></h3></div>'
                                                                + '<div class="product-details-bottom"><span class="price pricechange">' + Bizweb.formatMoney(item.price, "{{amount_no_decimals_with_comma_separator}}₫") + '</span><span class="hidden quaty item_quanty_count"> x ' + item.quantity + '</span>'
                                                                + '<div class="quantity-select qty_drop_cart"><input class="variantID" type="hidden" name="variantId" value="' + item.variant_id + '"><button onClick="var result = document.getElementById(\'qty' + item.variant_id + '\'); var qty' + item.variant_id + ' = result.value; if( !isNaN( qty' + item.variant_id + ' ) &amp;&amp; qty' + item.variant_id + ' &gt; 1 ) result.value--;return false;" class="btn_reduced reduced items-count btn-minus" ' + buttonQty + ' type="button">–</button><input type="text" maxlength="12" readonly class="input-text number-sidebar qty' + item.variant_id + '" id="qty' + item.variant_id + '" name="Lines" id="updates_' + item.variant_id + '" size="4" value="' + item.quantity + '"><button onClick="var result = document.getElementById(\'qty' + item.variant_id + '\'); var qty' + item.variant_id + ' = result.value; if( !isNaN( qty' + item.variant_id + ' )) result.value++;return false;" class="btn_increase increase items-count btn-plus" type="button">+</button></div>'
                                                                + '</div></div><div class="border"></div></li>').appendTo(table.children('.top_sider_bar'));
                                                    });
                                                    jQuery('<div class="wrap_total"><div class="top-subtotal hidden">Phí vận chuyển: <span class="pricex">Tính khi thanh toán</span></div><div class="top-subtotal">Tổng tiền: <span class="price">' + Bizweb.formatMoney(cart.total_price, "{{amount_no_decimals_with_comma_separator}}₫") + '</span></div></div>').appendTo(table);
                                                    jQuery('<div class="wrap_button"><div class="actions"><a href="/cart" class="btn btn-gray btn-cart-page pink"><span>Giỏ hàng</span></a> <a href="/checkout" class="btn btn-gray btn-checkout pink"><span>Thanh toán</span></a> </div></div>').appendTo(table);
                                                } else {
                                                    jQuery('<div class="no-item"><p>Không có sản phẩm nào.</p></div>').appendTo(table);

                                                }
                                            }
                                        });
                                    }
                                }
                                updateCartDesc(cart);
                                var numInput = document.querySelector('#cart-sidebar .qty_drop_cart input.input-text');
                                if (numInput != null) {
                                    // Listen for input event on numInput.
                                    numInput.addEventListener('input', function () {
                                        // Let's match only digits.
                                        var num = this.value.match(/^\d+$/);
                                        if (num == 0) {
                                            // If we have no match, value will be empty.
                                            this.value = 1;
                                        }
                                        if (num === null) {
                                            // If we have no match, value will be empty.
                                            this.value = "1";
                                        }
                                    }, false)
                                }
                            }

                            Bizweb.updateCartSiderForm = function (cart, cart_summary_id, cart_count_id) {
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
                                                    jQuery('<ul class="list-item-cart list_sider_bar"></ul>').appendTo(table);
                                                    jQuery.each(value, function (i, item) {

                                                        var src = item.image;
                                                        if (src == null) {
                                                            src = "https://bizweb.dktcdn.net/thumb/large/assets/themes_support/noimage.gif";
                                                        }
                                                        var buttonQty = "";
                                                        if (item.quantity == '1') {
                                                            // buttonQty = 'disabled';
                                                        } else {
                                                            buttonQty = '';
                                                        }
                                                        jQuery('<li class="item productid-' + item.variant_id + '"><div class="wrap_item"><a class="product-image" href="' + item.url + '" title="' + item.name + '">'
                                                                + '<img alt="' + item.name + '" src="' + src + '"width="' + '100' + '"\></a>'
                                                                + '<div class="detail-item"><div class="product-details"> <a href="javascript:;" data-id="' + item.variant_id + '" title="Xóa" class="remove-item-cart fa fa-close">&nbsp;</a>'
                                                                + '<h3 class="product-name"> <a href="' + item.url + '" title="' + item.name + '">' + item.name + '</a></h3></div>'
                                                                + '<div class="product-details-bottom"><span class="price pricechange">' + Bizweb.formatMoney(item.price, "{{amount_no_decimals_with_comma_separator}}₫") + '</span><span class="hidden quaty item_quanty_count"> x ' + item.quantity + '</span>'
                                                                + '<div class="quantity-select qty_drop_cart"><input class="variantID" type="hidden" name="variantId" value="' + item.variant_id + '"><button onClick="var result = document.getElementById(\'qtys' + item.variant_id + '\'); var qtys' + item.variant_id + ' = result.value; if( !isNaN( qtys' + item.variant_id + ' ) &amp;&amp; qtys' + item.variant_id + ' &gt; 1 ) result.value--;return false;" class="btn_reduced reduced items-count btn-minus" ' + buttonQty + ' type="button">–</button><input type="text" maxlength="12" readonly class="input-text number-sidebar qtys' + item.variant_id + '" id="qtys' + item.variant_id + '" name="Lines" id="updates_' + item.variant_id + '" size="4" value="' + item.quantity + '"><button onClick="var result = document.getElementById(\'qtys' + item.variant_id + '\'); var qtys' + item.variant_id + ' = result.value; if( !isNaN( qtys' + item.variant_id + ' )) result.value++;return false;" class="btn_increase increase items-count btn-plus" type="button">+</button></div>'
                                                                + '</div></div><div class="border"></div></li>').appendTo(table.children('.list_sider_bar'));
                                                    });
                                                    jQuery('<div class="wrap_total"><div class="top-subtotal hidden">Phí vận chuyển: <span class="pricex">Tính khi thanh toán</span></div><div class="top-subtotal">Tổng tiền: <span class="price">' + Bizweb.formatMoney(cart.total_price, "{{amount_no_decimals_with_comma_separator}}₫") + '</span></div></div>').appendTo(table);
                                                    jQuery('<div class="wrap_button"><div class="actions"><a href="/cart" class="btn btn-gray btn-cart-page pink"><span>Giỏ hàng</span></a> <a href="/checkout" class="btn btn-gray btn-checkout pink"><span>Thanh toán</span></a> </div></div>').appendTo(table);
                                                } else {
                                                    jQuery('<div class="no-item"><p>Không có sản phẩm nào.</p></div>').appendTo(table);

                                                }
                                            }
                                        });
                                    }
                                }
                                updateCartDesc(cart);
                                var numInput = document.querySelector('#cart-sidebar .qty_drop_cart input.input-text');
                                if (numInput != null) {
                                    // Listen for input event on numInput.
                                    numInput.addEventListener('input', function () {
                                        // Let's match only digits.
                                        var num = this.value.match(/^\d+$/);
                                        if (num == 0) {
                                            // If we have no match, value will be empty.
                                            this.value = 1;
                                        }
                                        if (num === null) {
                                            // If we have no match, value will be empty.
                                            this.value = "1";
                                        }
                                    }, false)
                                }
                            }

                            Bizweb.updateCartPageForm = function (cart, cart_summary_id, cart_count_id) {
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

                                                    var pageCart = '<div class="cart page_cart hidden-xs">'
                                                            + '<form action="/cart" method="post" novalidate class="margin-bottom-0"><div class="bg-scroll"><div class="cart-thead">'
                                                            + '<div style="width: 18%" class="a-center">Ảnh sản phẩm</div><div style="width: 32%" class="a-center">Tên sản phẩm</div><div style="width: 17%" class="a-center"><span class="nobr">Đơn giá</span></div><div style="width: 14%" class="a-center">Số lượng</div><div style="width: 14%" class="a-center">Tổng tiền</div><div style="width: 5%" class="a-center">Xoá</div></div>'
                                                            + '<div class="cart-tbody"></div></div></form></div>';
                                                    var pageCartCheckout = '<div class="row margin-top-20  margin-bottom-40"><div class="col-lg-7 col-md-7"><div class="form-cart-button"><div class=""><a href="/" class="form-cart-continue">Tiếp tục mua hàng</a></div></div></div>'
                                                            + '<div class="col-lg-5 col-md-5 bg_cart shopping-cart-table-total"><div class="table-total"><table class="table ">'
                                                            + '<tr class="hidden"><td>Tiền vận chuyển</td><td class="txt-right a-right">Tính khi thanh toán</td></tr>'
                                                            + '<tr><td class="total-text">Tổng tiền thanh toán:</td><td class="txt-right totals_price price_end a-right">' + Bizweb.formatMoney(cart.total_price, "{{amount_no_decimals_with_comma_separator}}₫") + '</td></tr></table></div>'
                                                            + '<a onclick="window.location.href=\'/checkout\'" class="btn-checkout-cart">Tiến hành thanh toán</a></div></div>';
                                                    jQuery(pageCart).appendTo(table);
                                                    jQuery.each(value, function (i, item) {
                                                        var buttonQty = "";
                                                        if (item.quantity == '1') {
                                                            buttonQty = 'disabled';
                                                        } else {
                                                            buttonQty = '';
                                                        }
                                                        var link_img1 = Bizweb.resizeImage(item.image, 'compact');
                                                        if (link_img1 == "null" || link_img1 == '' || link_img1 == null) {
                                                            link_img1 = 'https://bizweb.dktcdn.net/thumb/large/assets/themes_support/noimage.gif';
                                                        }

                                                        var title_vas = item.variant_title;
                                                        if (title_vas == 'Default Title') {
                                                            title_vas = "";
                                                        } else {
                                                            title_vas = item.variant_title;
                                                        }

                                                        var pageCartItem = '<div class="item-cart productid-' + item.variant_id + '"><div style="width: 18%" class="image"><a class="product-image" title="' + item.name + '" href="' + item.url + '"><img width="75" height="auto" alt="' + item.name + '" src="' + link_img1 + '"></a></div>'
                                                                + '<div style="width: 32%" class="a-center"><h3 class="product-name"> <a href="' + item.url + '" title="' + item.name + '">' + item.title + '</a></h3>'
                                                                + '<span class="variant-title">' + title_vas + '</span>'
                                                                + '</div><div style="width: 17%" class="a-center"><span class="item-price"> <span class="price pricechange">' + Bizweb.formatMoney(item.price, "{{amount_no_decimals_with_comma_separator}}₫") + '</span></span></div>'
                                                                + '<div style="width: 14%" class="a-center"><div class="input_qty_pr"><input class="variantID" type="hidden" name="variantId" value="' + item.variant_id + '">'
                                                                + '<input type="text" maxlength="12" readonly min="0" class="check_number_here input-text number-sidebar input_pop input_pop qtyItem' + item.variant_id + '" id="qtyItem' + item.variant_id + '" name="Lines" id="updates_' + item.variant_id + '" size="4" value="' + item.quantity + '">'
                                                                + '<button onClick="var result = document.getElementById(\'qtyItem' + item.variant_id + '\'); var qtyItem' + item.variant_id + ' = result.value; if( !isNaN( qtyItem' + item.variant_id + ' )) result.value++;return false;" class="increase_pop items-count btn-plus" type="button">+</button><button onClick="var result = document.getElementById(\'qtyItem' + item.variant_id + '\'); var qtyItem' + item.variant_id + ' = result.value; if( !isNaN( qtyItem' + item.variant_id + ' ) &amp;&amp; qtyItem' + item.variant_id + ' &gt; 1 ) result.value--;return false;" ' + buttonQty + ' class="reduced_pop items-count btn-minus" type="button">-</button></div></div>'
                                                                + '<div style="width: 14%" class="a-center"><span class="cart-price"> <span class="price">' + Bizweb.formatMoney(item.price * item.quantity, "{{amount_no_decimals_with_comma_separator}}₫") + '</span> </span></div>'
                                                                + '<div style="width: 5%" class="a-center">'
                                                                + '<a class="remove-itemx remove-item-cart" title="Xóa" href="javascript:;" data-id="' + item.variant_id + '"><span><i class="fa fa-trash-o"></i></span></a>'
                                                                + '</div>'
                                                                + '</div>';
                                                        jQuery(pageCartItem).appendTo(table.find('.cart-tbody'));
                                                    });
                                                    jQuery(pageCartCheckout).appendTo(table.children('.cart'));
                                                } else {
                                                    jQuery('<p class="hidden-xs-down ">Không có sản phẩm nào. Quay lại <a href="/collections/all" style="color:;">cửa hàng</a> để tiếp tục mua sắm.</p>').appendTo(table);
                                                    jQuery('.cart_desktop_page').css('min-height', 'auto');
                                                }
                                            }
                                        });
                                    }
                                }
                                updateCartDesc(cart);
                                jQuery('#wait').hide();

                            }

                            Bizweb.updateCartPopupForm = function (cart, cart_summary_id, cart_count_id) {

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
                                                    jQuery.each(value, function (i, item) {
                                                        var src = item.image;
                                                        if (src == null) {
                                                            src = "https://bizweb.dktcdn.net/thumb/large/assets/themes_support/noimage.gif";
                                                        }
                                                        var buttonQty = "";
                                                        if (item.quantity == '1') {
                                                            buttonQty = 'disabled';
                                                        } else {
                                                            buttonQty = '';
                                                        }
                                                        var title_vas = item.variant_title;
                                                        if (title_vas == 'Default Title') {
                                                            title_vas = "";
                                                        } else {
                                                            title_vas = item.variant_title;
                                                        }
                                                        var pageCartItem = '<div class="item-popup productid-' + item.variant_id + '">'
                                                                + '<div style="width: 15%;" class="border height image_ text-left"><div class="item-image">'
                                                                + '<a class="product-image" href="' + item.url + '" title="' + item.name + '"><img alt="' + item.name + '" src="' + src + '"width="' + '90' + '"\></a>'
                                                                + '</div></div>'
                                                                + '<div style="width:38.8%;" class="height text-left"><div class="item-info"><p class="item-name"><a class="text2line" href="' + item.url + '" title="' + item.name + '">' + item.title + '</a></p>'
                                                                + '<span class="variant-title-popup">' + title_vas + '</span>'
                                                                + '<a href="javascript:;" class="remove-item-cart" title="Xóa sản phẩm" data-id="' + item.variant_id + '"><i class="fa fa-close"></i>&nbsp;&nbsp;Xoá sản phẩm</a>'
                                                                + '<p class="addpass" style="color:#fff;margin:0px;">' + item.variant_id + '</p>'
                                                                + '</div></div>'
                                                                + '<div style="width: 15.2%;" class="border height text-center"><div class="item-price"><span class="price pricechange">' + Bizweb.formatMoney(item.price, "{{amount_no_decimals_with_comma_separator}}₫") + '</span>'
                                                                + '</div></div><div style="width: 15.4%;" class="border height text-center"><div class="qty_thuongdq check_"><input class="variantID" type="hidden" name="variantId" value="' + item.variant_id + '">'
                                                                + '<button onClick="var result = document.getElementById(\'qtyItemP' + item.variant_id + '\'); var qtyItemP' + item.variant_id + ' = result.value; if( !isNaN( qtyItemP' + item.variant_id + ' ) &amp;&amp; qtyItemP' + item.variant_id + ' &gt; 1 ) result.value--;return false;" ' + buttonQty + ' class="num1 reduced items-count btn-minus" type="button">-</button>'
                                                                + '<input type="text" maxlength="12" min="0" readonly class="input-text number-sidebar qtyItemP' + item.variant_id + '" id="qtyItemP' + item.variant_id + '" name="Lines" id="updates_' + item.variant_id + '" size="4" value="' + item.quantity + '">'
                                                                + '<button onClick="var result = document.getElementById(\'qtyItemP' + item.variant_id + '\'); var qtyItemP' + item.variant_id + ' = result.value; if( !isNaN( qtyItemP' + item.variant_id + ' )) result.value++;return false;" class="num2 increase items-count btn-plus" type="button">+</button></div></div>'
                                                                + '<div style="width: 15%;" class="border height text-center"><span class="cart-price"> <span class="price">' + Bizweb.formatMoney(item.price * item.quantity, "{{amount_no_decimals_with_comma_separator}}₫") + '</span> </span></div>'
                                                                + '</div>';
                                                        jQuery(pageCartItem).appendTo(table);
                                                        $('.link_product').text();
                                                    });
                                                }
                                            }
                                        });
                                    }
                                }
                                jQuery('.total-price').html(Bizweb.formatMoney(cart.total_price, "{{amount_no_decimals_with_comma_separator}}₫"));

                                updateCartDesc(cart);

                            }

                            Bizweb.updateCartPageFormMobile = function (cart, cart_summary_id, cart_count_id) {
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
                                                    jQuery('<div class="cart_page_mobile content-product-list"></div>').appendTo(table);
                                                    jQuery.each(value, function (i, item) {
                                                        if (item.image != null) {
                                                            var src = Bizweb.resizeImage(item.image, 'small');
                                                        } else {
                                                            var src = "https://bizweb.dktcdn.net/thumb/large/assets/themes_support/noimage.gif";
                                                        }
                                                        jQuery('<div class="item-product item-mobile-cart item productid-' + item.variant_id + ' "><div class="item-product-cart-mobile"><a href="' + item.url + '">	<a class="product-images1" href="' + item.url + '"  title="' + item.name + '"><img width="80" height="150" alt="' + item.name + '" src="' + src + '" alt="' + item.name + '"></a></a></div>'
                                                                + '<div class="title-product-cart-mobile"><h3><a href="' + item.url + '" title="' + item.name + '">' + item.name + '</a></h3><p>Giá: <span class="pricechange">' + Bizweb.formatMoney(item.price, "{{amount_no_decimals_with_comma_separator}}₫") + '</span></p></div>'
                                                                + '<div class="select-item-qty-mobile"><div class="txt_center in_put check_">'
                                                                + '<input class="variantID" type="hidden" name="variantId" value="' + item.variant_id + '"><button onClick="var result = document.getElementById(\'qtyMobile' + item.variant_id + '\'); var qtyMobile' + item.variant_id + ' = result.value; if( !isNaN( qtyMobile' + item.variant_id + ' ) &amp;&amp; qtyMobile' + item.variant_id + ' &gt; 0 ) result.value--;return false;" class="reduced items-count btn-minus" type="button">–</button><input type="number" maxlength="12" min="1" readonly class="check_number_here input-text mobile_input number-sidebar qtyMobile' + item.variant_id + '" id="qtyMobile' + item.variant_id + '" name="Lines" id="updates_' + item.variant_id + '" size="4" value="' + item.quantity + '"><button onClick="var result = document.getElementById(\'qtyMobile' + item.variant_id + '\'); var qtyMobile' + item.variant_id + ' = result.value; if( !isNaN( qtyMobile' + item.variant_id + ' )) result.value++;return false;" class="increase items-count btn-plus" type="button">+</button></div>'
                                                                + '<a class="button remove-item remove-item-cart" href="javascript:;" data-id="' + item.variant_id + '">Xoá</a></div>').appendTo(table.children('.content-product-list'));
                                                    });

                                                    jQuery('<div class="header-cart-price" style=""><div class="title-cart a-center"><span class="total_mobile a-center">Tổng tiền: <span class=" totals_price_mobile">' + Bizweb.formatMoney(cart.total_price, "{{amount_no_decimals_with_comma_separator}}₫") + '</span><span></div>'
                                                            + '<div class="checkout"><button class="btn-proceed-checkout-mobile" title="Tiến hành thanh toán" type="button" onclick="window.location.href=\'/checkout\'">'
                                                            + '<span>Tiến hành thanh toán</span></button>'
                                                            + '<button class="btn btn-white contin" title="Tiếp tục mua hàng" type="button" onclick="window.location.href=\'/collections/all\'"><span>Tiếp tục mua hàng</span></button>'
                                                            + '</div></div>').appendTo(table);
                                                } else {
                                                    jQuery('<p class="hidden-xs-down col-xs-12">Không có sản phẩm nào. Quay lại <a href="/collections/all" style="color:;">cửa hàng</a> để tiếp tục mua sắm.</p>').appendTo(table);
                                                    jQuery('.cart_desktop_page').css('min-height', 'auto');
                                                }

                                            }
                                        });
                                    }
                                }

                                updateCartDesc(cart);


                            }



                            function updateCartDesc(data) {
                                var $cartPrice = Bizweb.formatMoney(data.total_price, "{{amount_no_decimals_with_comma_separator}}₫"),
                                        $cartMobile = $('#header .cart-mobile .quantity-product'),
                                        $cartDesktop = $('.count_item_pr'),
                                        $cartDesktopList = $('.cart-counter-list'),
                                        $cartPopup = $('.cart-popup-count');

                                switch (data.item_count) {
                                    case 0:
                                        $cartMobile.text('0');
                                        $cartDesktop.text('0');
                                        $cartDesktopList.text('0');
                                        $cartPopup.text('0');

                                        break;
                                    case 1:
                                        $cartMobile.text('1');
                                        $cartDesktop.text('1');
                                        $cartDesktopList.text('1');
                                        $cartPopup.text('1');

                                        break;
                                    default:
                                        $cartMobile.text(data.item_count);
                                        $cartDesktop.text(data.item_count);
                                        $cartDesktopList.text(data.item_count);
                                        $cartPopup.text(data.item_count);

                                        break;
                                }
                                $('.top-cart-content .top-subtotal .price, aside.sidebar .block-cart .subtotal .price, .popup-total .total-price').html($cartPrice);
                                $('.popup-total .total-price').html($cartPrice);
                                $('.shopping-cart-table-total .totals_price').html($cartPrice);
                                $('.header-cart-price .totals_price_mobile').html($cartPrice);
                                $('.cartCount').html(data.item_count);
                            }

                            Bizweb.onCartUpdate = function (cart) {
                                Bizweb.updateCartFromForm(cart, '.mini-products-list-top');
                                Bizweb.updateCartSiderForm(cart, '.siderbar_product_list');
                                Bizweb.updateCartPopupForm(cart, '#popup-cart-desktop .tbody-popup');

                            };
                            Bizweb.onCartUpdateClick = function (cart, variantId) {
                                jQuery.each(cart, function (key, value) {
                                    if (key === 'items') {
                                        jQuery.each(value, function (i, item) {
                                            if (item.variant_id == variantId) {
                                                $('.productid-' + variantId).find('.pricechange').html(Bizweb.formatMoney(item.price, "{{amount_no_decimals_with_comma_separator}}₫"));
                                                $('.productid-' + variantId).find('.cart-price span.price').html(Bizweb.formatMoney(item.price * item.quantity, "{{amount_no_decimals_with_comma_separator}}₫"));
                                                $('.productid-' + variantId).find('.items-count').prop("disabled", false);
                                                $('.productid-' + variantId).find('.number-sidebar').prop("disabled", false);
                                                $('.productid-' + variantId + ' .number-sidebar').val(item.quantity);
                                                if (item.quantity == '1') {
                                                    $('.productid-' + variantId).find('.items-count.btn-minus').prop("disabled", true);
                                                }
                                            }
                                        });
                                    }
                                });
                                updateCartDesc(cart);
                            }
                            Bizweb.onCartRemoveClick = function (cart, variantId) {
                                jQuery.each(cart, function (key, value) {
                                    if (key === 'items') {
                                        jQuery.each(value, function (i, item) {
                                            if (item.variant_id == variantId) {
                                                $('.productid-' + variantId).remove();
                                            }
                                        });
                                    }
                                });
                                updateCartDesc(cart);
                            }
                            $(window).ready(function () {
                                $.ajax({
                                    type: 'GET',
                                    url: '/cart.js',
                                    async: false,
                                    cache: false,
                                    dataType: 'json',
                                    success: function (cart) {
                                        Bizweb.updateCartFromForm(cart, '.mini-products-list-top');
                                        Bizweb.updateCartSiderForm(cart, '.siderbar_product_list');
                                        Bizweb.updateCartPopupForm(cart, '#popup-cart-desktop .tbody-popup');

                                    }
                                });
                            });

            </script>


            <script src="//bizweb.dktcdn.net/100/037/483/themes/709526/assets/main.js?1564646079882" type="text/javascript"></script>	


            <!-- Product detail JS,CSS -->



            <script>
                            var resource = document.createElement('link');
                            resource.setAttribute("rel", "stylesheet");
                            resource.setAttribute("href", "//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css");
                            resource.setAttribute("type", "text/css");
                            var head = document.getElementsByTagName('head')[0];
                            head.appendChild(resource);

                            var resources = document.createElement('link');
                            resources.setAttribute("rel", "stylesheet");
                            resources.setAttribute("href", "//bizweb.dktcdn.net/100/037/483/themes/709526/assets/responsive.scss.css?1564646079882");
                            resources.setAttribute("type", "text/css");
                            var head = document.getElementsByTagName('head')[0];
                            head.appendChild(resources);


            </script>
        </div>
    </body>
</html>
