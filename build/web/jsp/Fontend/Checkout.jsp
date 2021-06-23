<%-- 
    Document   : Checkout
    Created on : Jan 11, 2020, 4:41:43 PM
    Author     : Win 10
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" class="anyflexbox boxshadow display-table">
    <head>   
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta http-equiv="content-language" content="vi" />
            <meta name="viewport" content="width=device-width,initial-scale=1">
                <title> FreshFood - Thanh toán đơn hàng </title>

                <meta name="keywords" content=" FreshFood">
                    <meta name="robots" content="noodp,index,follow" />
                    <meta name='revisit-after' content='1 days' />
                    <meta name="language" content="vietnamese">

                        <meta property="og:type" content="website">
                            <meta property="og:title" content="new-boutique">

                                <meta property="og:image" content="/QuanLyBanNongSan/jsp/Fontend/images/logo.png">
                                    <meta property="og:image:secure_url" content="/QuanLyBanNongSan/jsp/Fontend/images/logo.png">
                                        <meta property="og:site_name" content="new-boutique">  
                                            <link rel="canonical" href="#">
                                                <link rel="shortcut icon" href="/QuanLyBanNongSan/jsp/Fontend/images/favicon.png" type="image/x-icon" />
                                                <link href='/QuanLyBanNongSan/jsp/Fontend/css/bootstrap.min.css' rel='stylesheet' type='text/css' />
                                                <link href='/QuanLyBanNongSan/jsp/Fontend/css/themes_support_nprogress.css' rel='stylesheet' type='text/css' />
                                                <link href='/QuanLyBanNongSan/jsp/Fontend/css/themes_support_font-awesome.min.css' rel='stylesheet' type='text/css' />
                                                <link href='/QuanLyBanNongSan/jsp/Fontend/css/style_payment.css' rel='stylesheet' type='text/css' />
                                                <link href='/QuanLyBanNongSan/jsp/Fontend/css/checkout.css' rel='stylesheet' type='text/css' />
                                                <link href='/QuanLyBanNongSan/jsp/Fontend/css/checkout_stylesheet.css' rel='stylesheet' type='text/css' />
                                                <link href='http://fonts.googleapis.com/css?family=Fugaz+One' rel='stylesheet' type='text/css'>
                                                    <link href='http://fonts.googleapis.com/css?family=Alegreya+Sans:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
                                                        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>

                                                            <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
                                                                function hideURLbar(){ window.scrollTo(0,1); } 
                                                            </script>


                                                            <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
                                                                function hideURLbar(){ window.scrollTo(0,1); } 
                                                            </script>
                                                            <script type="text/javascript">
                                                                $(document).ready(function () {
                                                                    $('#horizontalTab').easyResponsiveTabs({
                                                                        type: 'default',
                                                                        width: 'auto',
                                                                        fit: true
                                                                    });
                                                                });

                                                            </script>
                                                            <script>
                                                                //<![CDATA[
                                                                (function () {
                                                                    var s = document.createElement('script');
                                                                    s.type = 'text/javascript';
                                                                    s.async = true;
                                                                    s.src = '/QuanLyBanNongSan/jsp/Fontend/js/themes_support_bizweb_stats.js';
                                                                    var x = document.getElementsByTagName('script')[0];
                                                                    x.parentNode.insertBefore(s, x);
                                                                })();
                                                                //]]>
                                                            </script>
                                                            <!-- Google Tag Manager -->

                                                            <script>

                                                                $(function () {
                                                                    $('.adsense_btn_close').click(function () {
                                                                        $(this).closest('.adsense_fixed').css('display', 'none');
                                                                    });

                                                                    $('.adsense_btn_info').click(function () {
                                                                        if ($('.adsense_info_content').is(':visible')) {
                                                                            $('.adsense_info_content').css('display', 'none');
                                                                        } else {
                                                                            $('.adsense_info_content').css('display', 'block');
                                                                        }
                                                                    });

                                                                });

                                                            </script>
                                                            <script>
                                                                (function (i, s, o, g, r, a, m) {
                                                                    i['GoogleAnalyticsObject'] = r;
                                                                    i[r] = i[r] || function () {
                                                                        (i[r].q = i[r].q || []).push(arguments)
                                                                    }, i[r].l = 1 * new Date();
                                                                    a = s.createElement(o),
                                                                            m = s.getElementsByTagName(o)[0];
                                                                    a.async = 1;
                                                                    a.src = g;
                                                                    m.parentNode.insertBefore(a, m)
                                                                })(window, document, 'script', '../../../../www.google-analytics.com/analytics.js', 'ga');
                                                                ga('create', 'UA-30027142-1', 'w3layouts.com');
                                                                ga('send', 'pageview');
                                                            </script>


                                                            <script async type='text/javascript' src='../../../../cdn.fancybar.net/ac/fancybar6a2f.js?zoneid=1502&amp;serve=C6ADVKE&amp;placement=w3layouts' id='_fancybar_js'></script>
                                                            <style type='text/css'>  .adsense_fixed{position:fixed;bottom:-8px;width:100%;z-index:999999999999;}.adsense_content{width:720px;margin:0 auto;position:relative;background:#fff;}
                                                                .adsense_btn_close,.adsense_btn_info{font-size:12px;color:#fff;height:20px;width:20px;vertical-align:middle;text-align:center;background:#000;top:4px;left:4px;position:absolute;z-index:99999999;font-family:Georgia;cursor:pointer;line-height:18px}
                                                                .adsense_btn_info{left:26px;font-family:Georgia;font-style:italic}
                                                                .adsense_info_content{display:none;width:260px;height:340px;position:absolute;top:-360px;background:rgba(255,255,255,.9);font-size:14px;padding:20px;font-family:Arial;border-radius:4px;-webkit-box-shadow:0 1px 26px -2px rgba(0,0,0,.3);-moz-box-shadow:0 1px 26px -2px rgba(0,0,0,.3);box-shadow:0 1px 26px -2px rgba(0,0,0,.3)}
                                                                .adsense_info_content:after{content:'';position:absolute;left:25px;top:100%;width:0;height:0;border-left:10px solid transparent;border-right:10px solid transparent;border-top:10px solid #fff;clear:both}.adsense_info_content #adsense_h3{color:#000;margin:0;font-size:18px!important;font-family:'Arial'!important;margin-bottom:20px!important;}
                                                                .adsense_info_content .adsense_p{color:#888;font-size:13px!important;line-height:20px;font-family:'Arial'!important;margin-bottom:20px!important;}
                                                                .adsense_fh5co-team{color:#000;font-style:italic;}
                                                            </style>

                                                            <script>
                                                                var Bizweb = Bizweb || {};
                                                                Bizweb.store = 'new-boutique.bizwebvietnam.net';
                                                                Bizweb.theme = {"id": 530298, "name": "new-boutique-build-2", "role": "main", "previewable": true, "processing": false, "created_on": "2017-04-27T13:58:57Z", "modified_on": "2017-04-27T13:59:07Z"}
                                                                Bizweb.template = 'index';
                                                            </script>

                                                            <script>
                                                                //<![CDATA[
                                                                (function () {
                                                                    var s = document.createElement('script');
                                                                    s.type = 'text/javascript';
                                                                    s.async = true;
                                                                    s.src = '/QuanLyBanNongSan/jsp/Fontend/js/themes_support_bizweb_stats.js';
                                                                    var x = document.getElementsByTagName('script')[0];
                                                                    x.parentNode.insertBefore(s, x);
                                                                })();

                                                                //]]>
                                                            </script>

                                                            <script>
                                                                (function () {
                                                                    function asyncLoad() {
                                                                        var urls = ["/QuanLyBanNongSan/jsp/Fontend/js/script.js"];
                                                                        for (var i = 0; i < urls.length; i++) {
                                                                            var s = document.createElement('script');
                                                                            s.type = 'text/javascript';
                                                                            s.async = true;
                                                                            s.src = urls[i];
                                                                            s.src = urls[i];
                                                                            var x = document.getElementsByTagName('script')[0];
                                                                            x.parentNode.insertBefore(s, x);
                                                                        }
                                                                    }
                                                                    window.attachEvent ? window.attachEvent('onload', asyncLoad) : window.addEventListener('load', asyncLoad, false);
                                                                })();
                                                            </script>

                                                            <script type='text/javascript'>
                                                                (function () {
                                                                    var log = document.createElement('script');
                                                                    log.type = 'text/javascript';
                                                                    log.async = true;
                                                                    log.src = '/QuanLyBanNongSan/jsp/Fontend/js/delivery.js';
                                                                    var s = document.getElementsByTagName('script')[0];
                                                                    s.parentNode.insertBefore(log, s);
                                                                })();
                                                            </script>
                                                            <!-- Google Tag Manager -->
                                                            <link href="https://fonts.googleapis.com/css?family=Cabin:400,500,700" rel="stylesheet">
                                                                <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">                                                                        
                                                                    <link href='/QuanLyBanNongSan/jsp/Fontend/css/styles.css' rel='stylesheet' type='text/css' />
                                                                    <link href='/QuanLyBanNongSan/jsp/Fontend/css/settings.css' rel='stylesheet' type='text/css' />
                                                                    <link href='/QuanLyBanNongSan/jsp/Fontend/css/responsive.css' rel='stylesheet' type='text/css' />  
                                                                    <script>
                                                                        window.money_format = "{{amount_no_decimals_with_comma_separator}} VND";

                                                                        window.change_image = true;

                                                                        window.use_quickview_swatch = true;
                                                                        window.asset_url = "//bizweb.dktcdn.net/100/087/870/themes/530298/assets/.?1495240977358";
                                                                        window.inPageCollection = false;
                                                                        Bizweb.arrayInc = function (e, t) {
                                                                            for (var n = 0; n < e.length; n++)
                                                                                if (e[n] == t)
                                                                                    return !0;
                                                                            return !1
                                                                        }
                                                                        Bizweb.uniq = function (e) {
                                                                            for (var t = [], n = 0; n < e.length; n++)
                                                                                Bizweb.arrayInc(t, e[n]) || t.push(e[n]);
                                                                            return t
                                                                        }
                                                                    </script>
                                                                    <!-- FIRST JS -->
                                                                    <script src='/QuanLyBanNongSan/jsp/Fontend/js/important_plugin.js' type='text/javascript'></script>    
                                                                    <script src='/QuanLyBanNongSan/jsp/Fontend/js/themes_support_option-selectors.js' type='text/javascript'></script>



                                                                    <script src='/QuanLyBanNongSan/jsp/Fontend/js/jquery.products.min.js' type='text/javascript'></script>


                                                                    <style>#quickView .selector-wrapper {display:none}</style>

                                                                    </head>

                                                                    <body class="body--custom-background-color ">
                                                                        <c:choose>
                                                                            <c:when test="${account==null}">
                                                                                <jsp:include page="Header.jsp"></jsp:include>
                                                                            </c:when>
                                                                            <c:otherwise>
                                                                                <jsp:include page="Header1.jsp"></jsp:include>
                                                                            </c:otherwise>
                                                                        </c:choose>
                                                                        <jsp:include page="Menu.jsp"></jsp:include>

                                                                            <div class="banner" data-header="">
                                                                                <div class="wrap">
                                                                                    <div class="shop logo logo--left ">

                                                                                        <h1 class="shop__name">
                                                                                            <a href="/">
                                                                                                FreshFood
                                                                                            </a>
                                                                                        </h1>

                                                                                    </div>
                                                                                </div>
                                                                            </div>

                                                                            <button class="order-summary-toggle" bind-event-click="Bizweb.Checkout.toggleOrderSummary(this)">
                                                                                <div class="wrap">
                                                                                    <h2>
                                                                                        <label class="control-label">Đơn hàng</label>
                                                                                        <label class="control-label hidden-small-device">
                                                                                            (${listCart.size()} sản phẩm)
                                                                                    </label>
                                                                                    <label class="control-label visible-small-device inline">
                                                                                        (5)
                                                                                    </label>
                                                                                </h2>
                                                                                <a class="underline-none expandable pull-right" href="javascript:void(0)">
                                                                                    Xem chi tiết
                                                                                </a>
                                                                            </div>
                                                                        </button>
                                                                        <form action="Payment.htm" data-toggle="validator" class="content stateful-form formCheckout" method="post">
                                                                            <div class="wrap" context="checkout" define='{checkout: new Bizweb.Checkout(this,{ existCode: false, totalOrderItemPrice: 4180000.0000, discount: 0, shippingFee: 0, freeShipping: false, requiresShipping: true, code: "", settingLanguage: "vi", moneyFormat: "{{amount_no_decimals_with_comma_separator}}₫", discountLabel: "Miễn phí", districtPolicy: "optional", district: "", province:"" })}'>
                                                                                <div class='sidebar '>
                                                                                    <div class="sidebar_header">
                                                                                        <h2>
                                                                                            <label class="control-label">Đơn hàng</label>
                                                                                            <label class="control-label">(${listCart.size()} sản phẩm)</label>
                                                                                        </h2>
                                                                                        <hr class="full_width"/>
                                                                                    </div>
                                                                                    <div class="sidebar__content">
                                                                                        <div class="order-summary order-summary--product-list order-summary--is-collapsed">
                                                                                            <div class="summary-body summary-section summary-product" >
                                                                                                <div class="summary-product-list">
                                                                                                    <table class="product-table">
                                                                                                        <tbody>
                                                                                                            <c:forEach items="${listCart}" var="listCart">
                                                                                                                <tr class="product product-has-image clearfix">
                                                                                                                    <td>
                                                                                                                        <div class="product-thumbnail">
                                                                                                                            <div class="product-thumbnail__wrapper">

                                                                                                                                <img src='/QuanLyBanNongSan/jsp/Fontend/images/${listCart.product.images}' alt='${listCart.product.productName}' class='product-thumbnail__image' />

                                                                                                                            </div>
                                                                                                                            <span class="product-thumbnail__quantity" aria-hidden="true">${listCart.quantity}</span>
                                                                                                                        </div>
                                                                                                                    </td>
                                                                                                                    <td class="product-info">
                                                                                                                        <span class="product-info-name">

                                                                                                                            ${listCart.product.productName}
                                                                                                                        </span>


                                                                                                                    </td>
                                                                                                                    <c:choose>
                                                                                                                        <c:when test="${cart.product.discountId==1}">
                                                                                                                            <td class="product-price text-right">
                                                                                                                                ${listCart.product.priceOutput}₫
                                                                                                                            </td>
                                                                                                                        </c:when>
                                                                                                                        
                                                                                                                    </c:choose>

                                                                                                                </tr>
                                                                                                            </c:forEach>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                    <div class="order-summary__scroll-indicator">
                                                                                                        Cuộn chuột để xem thêm
                                                                                                        <i class="fa fa-long-arrow-down" aria-hidden="true"></i>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <hr class="m0"/>
                                                                                        </div>
                                                                                        <div class="order-summary order-summary--total-lines">
                                                                                            <div class="summary-section border-top-none--mobile">
                                                                                                <div class="total-line total-line-subtotal clearfix">
                                                                                                    <span class="total-line-name pull-left">
                                                                                                        Tạm tính
                                                                                                    </span>
                                                                                                    <span bind="money(totalOrderItemPrice - discount,'{{amount_no_decimals_with_comma_separator}}₫')" class="total-line-subprice pull-right">
                                                                                                        ${total}₫
                                                                                                    </span>
                                                                                                </div>
                                                                                                <div class="total-line total-line-shipping clearfix" bind-show="requiresShipping">
                                                                                                    <span class="total-line-name pull-left">
                                                                                                        Phí vận chuyển
                                                                                                    </span>
                                                                                                    <span bind="shippingFee >  0 ? money(shippingFee,'{{amount_no_decimals_with_comma_separator}}₫') : ((requiresShipping && shippingMethods.length == 0) ? 'Khu vực này không hỗ trợ vận chuyển': 'Miễn phí')" class="total-line-shipping pull-right"  bind-show="ShippingProvinceId || BillingProvinceId && !otherAddress || (requiresShipping && shippingMethods.length > 0)" >

                                                                                                        Miễn phí

                                                                                                    </span>
                                                                                                </div>
                                                                                                <div class="total-line total-line-total clearfix">
                                                                                                    <span class="total-line-name pull-left">
                                                                                                        Tổng cộng
                                                                                                    </span>
                                                                                                    <span bind="money(totalOrderItemPrice + (isNaN(shippingFee) ? 0 : shippingFee) - discount,'{{amount_no_decimals_with_comma_separator}}₫')" class="total-line-price pull-right">
                                                                                                        ${total}₫
                                                                                                    </span>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="form-group clearfix hidden-sm hidden-xs">
                                                                                            <div class="field__input-btn-wrapper mt10">
                                                                                                <a class="previous-link" href="MyCart.htm">
                                                                                                    <i class="fa fa-angle-left fa-lg" aria-hidden="true"></i>
                                                                                                    <span>Quay về giỏ hàng</span>
                                                                                                </a>
                                                                                                <div class="form-group">
                                                                                                    <button class="btn btn-primary" type="submit">Tiếp tục</button>   
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="form-group has-error">
                                                                                            <div class="help-block ">
                                                                                                <ul class="list-unstyled">

                                                                                                </ul>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="main" role="main">
                                                                                    <div class="main_header">
                                                                                        <div class="shop logo logo--left ">

                                                                                            <h1 class="shop__name">
                                                                                                <a href="/">
                                                                                                    FreshFood
                                                                                                </a>
                                                                                            </h1>

                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="main_content">
                                                                                        <div class="row">
                                                                                            <div class="col-md-6 col-lg-6">
                                                                                                <div class="section" define="{billing_address: {}}">
                                                                                                    <div class="section__header">
                                                                                                        <div class="layout-flex layout-flex--wrap">
                                                                                                            <h2 class="section__title layout-flex__item layout-flex__item--stretch">
                                                                                                                <i class="fa fa-id-card-o fa-lg section__title--icon hidden-md hidden-lg" aria-hidden="true"></i>
                                                                                                                <label class="control-label">Thông tin mua hàng</label>
                                                                                                            </h2>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="section__content">


                                                                                                        <div class="form-group" bind-class="{'has-error' : invalidEmail}">
                                                                                                            <input data-error="Vui lòng nhập email" required bind="billing_address.email" 
                                                                                                                   name="BillingAddress.Email" class="form-control" placeholder="Email" value="${us.email}"/>
                                                                                                            <div class="help-block with-errors"></div>
                                                                                                        </div>

                                                                                                        <div class="billing">
                                                                                                            <div>
                                                                                                                <div class="form-group">
                                                                                                                    <input data-error="Vui lòng nhập tên đăng nhập" required bind="billing_address.userName" 
                                                                                                                           name="BillingAddress.UserName" class="form-control" placeholder="Tên đăng nhập" value="${us.userName}"/>
                                                                                                                    <div class="help-block with-errors"></div>
                                                                                                                </div>

                                                                                                                <div class="form-group">
                                                                                                                    <input data-error="Vui lòng nhập số điện thoại" required bind="billing_address.phone" 
                                                                                                                           name="BillingAddress.Phone" class="form-control" placeholder="Số điện thoại" value="${us.phone}"/>
                                                                                                                    <div class="help-block with-errors"></div>
                                                                                                                </div>


                                                                                                                <div class="form-group">
                                                                                                                    <input data-error="Vui lòng nhập địa chỉ" required bind="billing_address.address" 
                                                                                                                           name="BillingAddress.Address" class="form-control" placeholder="Địa chỉ" value="${us.address}"/>
                                                                                                                    <div class="help-block with-errors"></div>
                                                                                                                </div>

                                                                                                                <div bind-show="!otherAddress" class="form-group">
                                                                                                                    <div class="error hide" bind-show="requiresShipping && loadedShippingMethods && shippingMethods.length == 0  && BillingProvinceId  ">
                                                                                                                        <label>Khu vực này không hỗ trợ vận chuyển</label>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="section pt10">
                                                                                                    <div class="section__content">
                                                                                                        <div class="form-group" bind-show="requiresShipping">
                                                                                                            <div class="checkbox-wrapper">
                                                                                                                <div class="checkbox__input">
                                                                                                                    <input class="input-checkbox" type="checkbox"  value="false"  name="otherAddress" id="other_address" bind="otherAddress" bind-event-change="changeOtherAddress(this)">
                                                                                                                </div>
                                                                                                                <label>
                                                                                                                    <div bind-class="{'checked' : otherAddress}" class="icheckbox_square" style="position: relative;">
                                                                                                                        <input bind-event-change="changeOtherAddress(this)" bind="otherAddress" type="checkbox" name="otherAddress" 
                                                                                                                               value="false"  class="icheck square" style="position: absolute; opacity: 0;" />
                                                                                                                        <ins class="iCheck-helper" style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; 
                                                                                                                             height: 100%; margin: 0px; padding: 0px; background: none repeat scroll 0% 0% rgb(255, 255, 255);
                                                                                                                             border: 0px none; opacity: 0;"></ins>
                                                                                                                    </div>
                                                                                                                    Giao hàng đến địa chỉ khác
                                                                                                                </label>         
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="section pt10" bind-show="otherAddress">
                                                                                                    <div class="section__header">
                                                                                                        <h2 class="section__title">
                                                                                                            <i class="fa fa-id-card-o fa-lg section__title--icon hidden-md hidden-lg" aria-hidden="true"></i>
                                                                                                            <label class="control-label">
                                                                                                                Thông tin nhận hàng
                                                                                                            </label>
                                                                                                        </h2>
                                                                                                    </div>
                                                                                                    <div class="section__content">
                                                                                                        <div bind-show="otherAddress" define="{shipping_address: {}, shipping_expand:true,show_district:  true ,show_country:  false }" class="shipping  hide ">
                                                                                                            <div bind-show="shipping_expand || !otherAddress">
                                                                                                                <div class="form-group">
                                                                                                                    <div class="field__input-wrapper" bind-class="{ 'js-is-filled': shipping_address.name }">
                                                                                                                        <span class="field__label" bind-event-click="handleClick(this)">
                                                                                                                            Họ và tên
                                                                                                                        </span>
                                                                                                                        <input name="ShippingAddress.name" type="text" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)"
                                                                                                                               class="field__input form-control" id="_shipping_address_last_name" data-error="Vui lòng nhập họ tên" required bind="shipping_address.name" />
                                                                                                                    </div>
                                                                                                                    <div class="help-block with-errors"></div>
                                                                                                                </div>

                                                                                                                <div class="form-group">
                                                                                                                    <div class="field__input-wrapper" bind-class="{ 'js-is-filled': shipping_address.phone }">
                                                                                                                        <span class="field__label" bind-event-click="handleClick(this)">
                                                                                                                            Số điện thoại
                                                                                                                        </span>
                                                                                                                        <input name="ShippingAddress.phone" type="text" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)" 
                                                                                                                               class="field__input form-control" id="_shipping_address_phone"  bind="shipping_address.phone" />
                                                                                                                    </div>
                                                                                                                    <div class="help-block with-errors"></div>
                                                                                                                </div>


                                                                                                                <div class="form-group">
                                                                                                                    <div class="field__input-wrapper" bind-class="{ 'js-is-filled': shipping_address.address }">
                                                                                                                        <span class="field__label" bind-event-click="handleClick(this)">
                                                                                                                            Địa chỉ
                                                                                                                        </span>
                                                                                                                        <input name="ShippingAddress.address" type="text" bind-event-focus="handleFocus(this)" bind-event-blur="handleFieldBlur(this)"
                                                                                                                               class="field__input form-control" id="_shipping_address_address1"  bind="shipping_address.address" />
                                                                                                                    </div>
                                                                                                                    <div class="help-block with-errors"></div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="section" bind-class="{ 'pt0': otherAddress, 'pt10': !otherAddress}">
                                                                                                    <div class="section__content">
                                                                                                        <div class="form-group m0">
                                                                                                            <input name="description" value="" class="field__input form-control m0" placeholder="Ghi chú"></input>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                            <div class="col-md-6 col-lg-6">
                                                                                                <div class="section shipping-method hide" bind-show="shippingMethods.length > 0">
                                                                                                    <div class="section__header">
                                                                                                        <h2 class="section__title">
                                                                                                            <i class="fa fa-truck fa-lg section__title--icon hidden-md hidden-lg" aria-hidden="true"></i>
                                                                                                            <label class="control-label">Vận chuyển</label>
                                                                                                        </h2>
                                                                                                    </div>
                                                                                                    <div class="section__content">
                                                                                                        <div class="content-box">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="section payment-methods" bind-class="{'p0--desktop': shippingMethods.length == 0}">
                                                                                                    <div class="section__header">
                                                                                                        <h2 class="section__title">
                                                                                                            <i class="fa fa-credit-card fa-lg section__title--icon hidden-md hidden-lg" aria-hidden="true"></i>
                                                                                                            <label class="control-label">Thanh toán</label>
                                                                                                        </h2>
                                                                                                    </div>
                                                                                                    <div class="section__content">
                                                                                                        <div class="content-box">

                                                                                                            <div class="content-box__row">
                                                                                                                <div class="radio-wrapper">
                                                                                                                    <div class="radio__input">
                                                                                                                        <input class="input-radio" type="radio" value="39810" name="PaymentMethodId" id="payment_method_39810" data-check-id="4" bind="payment_method_id" checked>
                                                                                                                    </div>
                                                                                                                    <label class="radio__label" for="payment_method_39810">
                                                                                                                        <span class="radio__label__primary">Thanh toán khi giao hàng (COD)</span>
                                                                                                                        <span class="radio__label__accessory">
                                                                                                                            <ul>
                                                                                                                                <li class="payment-icon-v2 payment-icon--4">

                                                                                                                                    <i class="fa fa-money payment-icon-fa" aria-hidden="true"></i>

                                                                                                                                </li>
                                                                                                                            </ul>
                                                                                                                        </span>
                                                                                                                    </label> 
                                                                                                                </div> <!-- /radio-wrapper--> 
                                                                                                            </div>

                                                                                                            <div class="radio-wrapper content-box__row content-box__row--secondary hide" id="payment-gateway-subfields-39810" bind-show="payment_method_id == 39810">
                                                                                                                <div class="blank-slate">
                                                                                                                    <p>cod</p>


                                                                                                                </div>
                                                                                                            </div>


                                                                                                            <a href="javascript:void(0)" data-toggle="modal" data-target="#moca-modal" data-backdrop="static" data-keyboard="false" class="trigger-moca-modal" style="display: none;" title="Thanh toán qua Moca">
                                                                                                            </a>
                                                                                                            <a href="javascript:void(0)" data-toggle="modal" data-target="#moca-error-modal" class="trigger-moca-error-modal" style="display: none;" title="Lỗi thanh toán qua Moca">
                                                                                                            </a>
                                                                                                            <div class="modal fade moca-modal" id="moca-modal" tabindex="-1" role="dialog">
                                                                                                                <div class="modal-dialog">
                                                                                                                    <div class="modal-content">
                                                                                                                        <div>
                                                                                                                            <iframe style="border: 0px; width: 100%; height: 100%;" src=""></iframe>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                            <div class="modal fade" id="moca-error-modal" data-width="" tabindex="-1" role="dialog">
                                                                                                                <div class="modal-dialog">
                                                                                                                    <div class="modal-content">
                                                                                                                        <div class="modal-body">
                                                                                                                            <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                                                                                            <div>
                                                                                                                                <p>Giao dịch của bạn chưa đủ hạn mức thanh toán</p>
                                                                                                                                <p>Hạn mức tối thiểu để thanh toán được là 1đ</p>
                                                                                                                                <p>Vui lòng chọn hình thức thanh toán khác</p>
                                                                                                                            </div>
                                                                                                                        </div>
                                                                                                                    </div>
                                                                                                                </div>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="section hidden-md hidden-lg">
                                                                                                    <div class="form-group">
                                                                                                        <button class="btn btn-primary" type="submit">Tiếp tục</button>   
                                                                                                    </div>
                                                                                                    <div class="text-center mt20">
                                                                                                        <a class="previous-link" href="/cart">
                                                                                                            <i class="fa fa-angle-left fa-lg" aria-hidden="true"></i>
                                                                                                            <span>Quay về giỏ hàng</span>
                                                                                                        </a>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>

                                                                                    <div class="modal fade" id="refund-policy" data-width="" tabindex="-1" role="dialog">
                                                                                        <div class="modal-dialog modal-lg">
                                                                                            <div class="modal-content">
                                                                                                <div class="modal-header">
                                                                                                    <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                                                                    <h4 class="modal-title">Chính sách hoàn trả</h4>
                                                                                                </div>
                                                                                                <div class="modal-body">
                                                                                                    <pre></pre>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="modal fade" id="privacy-policy" data-width="" tabindex="-1" role="dialog">
                                                                                        <div class="modal-dialog modal-lg">
                                                                                            <div class="modal-content">
                                                                                                <div class="modal-header">
                                                                                                    <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                                                                    <h4 class="modal-title">Chính sách bảo mật</h4>
                                                                                                </div>
                                                                                                <div class="modal-body">
                                                                                                    <pre></pre>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="modal fade" id="terms-of-service" data-width="" tabindex="-1" role="dialog">
                                                                                        <div class="modal-dialog modal-lg">
                                                                                            <div class="modal-content">
                                                                                                <div class="modal-header">
                                                                                                    <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
                                                                                                    <h4 class="modal-title">Điều khoản sử dụng</h4>
                                                                                                </div>
                                                                                                <div class="modal-body">
                                                                                                    <pre></pre>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </form>

                                                                        <script src='/QuanLyBanNongSan/jsp/Fontend/js/jquery-2.2.3.min.js' type='text/javascript'></script>
                                                                        <script src='/QuanLyBanNongSan/jsp/Fontend/js/bootstrap.min.js' type='text/javascript'></script>
                                                                        <script src='/QuanLyBanNongSan/jsp/Fontend/js/twine.min.js' type='text/javascript'></script>
                                                                        <script src='/QuanLyBanNongSan/jsp/Fontend/js/validator.min.js' type='text/javascript'></script>
                                                                        <script src='/QuanLyBanNongSan/jsp/Fontend/js/nprogress.js' type='text/javascript'></script>
                                                                        <script src='/QuanLyBanNongSan/jsp/Fontend/js/money-helper.js' type='text/javascript'></script>
                                                                        <script src='/QuanLyBanNongSan/jsp/Fontend/js/checkout_new_v2.js' type='text/javascript'></script>

                                                                        <script type="text/javascript">
                                                                        $(document).ajaxStart(function () {
                                                                            NProgress.start();
                                                                        });
                                                                        $(document).ajaxComplete(function () {
                                                                            NProgress.done();
                                                                        });

                                                                        context = {}

                                                                        $(function () {
                                                                            Twine.reset(context).bind().refresh();
                                                                        });

                                                                        $(document).ready(function () {

                                                                            $("#customer-address").trigger("change");

                                                                            $("select[name='BillingProvinceId']").trigger("change");
                                                                            $("select[name='ShippingProvinceId']").trigger("change");
                                                                            Twine.context(document.body).checkout.caculateShippingFee('');
                                                                        });
                                                                        </script>
                                                                        <jsp:include page="Footer.jsp"></jsp:include>>
                                                                    </body>
                                                                    </html>
