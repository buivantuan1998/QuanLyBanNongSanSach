<%-- 
    Document   : Footer
    Created on : Jan 11, 2020, 2:35:53 PM
    Author     : Win 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Messenger Plugin chat Code -->
    <div id="fb-root"></div>

    <!-- Your Plugin chat code -->
    <div id="fb-customer-chat" class="fb-customerchat">
    </div>

    <script>
      var chatbox = document.getElementById('fb-customer-chat');
      chatbox.setAttribute("page_id", "103141832017212");
      chatbox.setAttribute("attribution", "biz_inbox");
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : 'v11.0'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/en_US/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script>
<footer class="footer">
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
                
                <p>FreshFood shop được thành lập từ 8/2010 được sự tin tưởng của khách hàng trong suốt thời gian hoạt động đến nay cửa hàng ngày một phát triển và xây dựng được thương hiệu trong lòng quý khách .</p>
            </div>
            <div class="col-md-2 col-sm-4">
                <h3>Về chúng tôi</h3>
                <ul class="links">

                    <li><a href="homeFontend.htm">Trang chủ</a></li>

                    <li><a href="/gioi-thieu">Giới thiệu</a></li>

                    <li><a href="getAllProduct.htm">Sản phẩm</a></li>

                    <li><a href="/tin-tuc">Tin tức</a></li>

                </ul>
            </div>
            <div class="col-md-2 col-sm-4">
                <h3>Hỗ trợ</h3>
                <ul class="links">

                    <li><a href="/search">Tìm kiếm</a></li>

                    <li><a href="initLogin.htm">Đăng nhập</a></li>

                    <li><a href="initRegister.htm">Đăng ký</a></li>

                    <li><a href="MyCart.htm">Giỏ hàng</a></li>

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

                        <li><a href="homeFontend.htm">Trang chủ</a></li>

                        <li><a href="/gioi-thieu">Giới thiệu</a></li>

                        <li><a href="getAllProduct.htm">Sản phẩm</a></li>

                        <li><a href="/tin-tuc">Tin tức</a></li>

                        <li><a href="/contact.htm">Liên hệ</a></li>

                    </ul>
                </div>
            </div>
        </div>
    </div>

</footer>
