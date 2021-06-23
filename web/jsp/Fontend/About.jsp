<%-- 
    Document   : About
    Created on : Jan 11, 2020, 4:39:18 PM
    Author     : Win 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

    </head>
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

                            <li><strong>Giới thiệu</strong></li>

                        </ul>
                    </div>
                </div>
            </div>

            <div class="container">
                <div class="content_page_info">
                    <h1>Giới thiệu</h1>
                    <div class="sidebar-line"><span></span></div>
                    <div class="rte">
                        <p style="text-align: justify;"><strong>I. QUÁ TRÌNH HÌNH THÀNH VÀ PHÁT TRIỂN</strong></p>

                        <p style="text-align: justify;">Trong những năm qua, xã hội phát triển, kinh tế tăng trưởng đồng thời là chất lượng cuộc sống của người dân ngày càng càng được nâng cao nhiều trung tâm thương mại, nhà cao tầng, biệt thự được mọc ra kèm theo đấy là nhu cầu mua sắm các mặt hàng phục vụ nhu cầu cuộc sống hàng ngày như hoa và quà tặng.</p>

                        <p style="text-align: justify;">FresherShop khai trương siêu thị số 442 Đội Cấn, Cống Vị, Ba Đình, Hà Nội, chính thức tham gia vào lĩnh vực kinh doanh bán lẻ trực tuyến, tạo ra một phong cách mua sắm hoàn toàn mới với người dân thủ đô, thông qua cung cấp các sản phẩm và dịch vụ tới người tiêu dùng.</p>

                        <p style="text-align: justify;"><strong>II. MỤC TIÊU CHIẾN LƯỢC</strong></p>

                        <p style="text-align: justify;">1. Tối đa hoá giá trị đầu tư của các cổ đông; giữ vững tốc độ tăng trưởng lợi nhuận và tình hình tài chính lành mạnh;</p>

                        <p style="text-align: justify;">2. Không ngừng nâng cao động lực làm việc và năng lực cán bộ; Fresher Shop&nbsp;phải luôn dẫn đầu ngành bán lẻ trong việc sáng tạo, phát triển chính sách đãi ngộ và cơ hội thăng tiến nghề nghiệp cho cán bộ của mình;</p>

                        <p style="text-align: justify;">3. Duy trì sự hài lòng, trung thành và gắn bó của khách hàng với Fresher Shop; xây dựng FreshFood Shop thành một trong những công ty hàng đầu Việt Nam có chất lượng dịch vụ tốt nhất do khách hàng lựa chọn.</p>

                        <p style="text-align: justify;">4. Phát triển FreshFood Shop thành một trong những công ty hàng đầu Việt Nam về: quản lý tốt nhất, môi trường làm việc tốt nhất, văn hoá doanh nghiệp chú trọng khách hàng, thúc đẩy hợp tác và sáng tạo, linh hoạt nhất khi môi trường kinh doanh thay đổi.</p>

                        <p style="text-align: justify;"><strong>III. THẾ MẠNH VÀ ĐỊNH HƯỚNG CỦA CÔNG TY</strong></p>

                        <p style="text-align: justify;">Với kim chỉ nam là “<em>Không ngừng phát triển vì khách hàng</em>”, FreshFood đã quy tụ được Ban lãnh đạo có bề dày kinh nghiệm trong lĩnh vực bán lẻ, không chỉ mạnh về kinh doanh mà còn mạnh về công nghệ, có nhiều tiềm năng phát triển, kết hợp với đội ngũ nhân viên trẻ, năng động và chuyên nghiệp, tạo nên thế mạnh nòng cốt của công ty để thực hiện tốt các mục tiêu đề ra.</p>

                        <p style="text-align: justify;">Hơn nữa, trên cơ sở nguồn lực của công ty và nhu cầu của xã hội, FreshFood Shop<strong>&nbsp;</strong>lựa chọn phát triển kinh doanh hoa và quà tặng phục vụ nhu cầu thiết yếu của người dân với các sản phẩm đa dạng, phong phú, mang lại giá trị gia tăng cho người tiêu dùng thông qua các dịch vụ sau bán hàng.</p>

                        <p style="text-align: justify;">Qua quá trình phát triển, bên cạnh việc thiết lập được một hệ thống đối tác nước trong nước và ngoài đến từ các doanh nghiệp lớn, có thế mạnh trong lĩnh vực ban..., công ty sẽ đầu tư vào các ngành nghề mới như bất động sản, khai thác khoáng, đầu tư tài chính... trong thời gian tới.</p>
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