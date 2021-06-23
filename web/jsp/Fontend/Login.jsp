<%-- 
    Document   : Login
    Created on : Jan 28, 2020, 9:11:39 AM
    Author     : Win 10
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<!DOCTYPE html>
<html lang="vi">
    <head>
        <!-- ================= Favicon ================== -->

        <link rel="icon" href="/QuanLyBanNongSan/jsp/Fontend/images/favicon.png" type="image/x-icon" />

        <meta http-equiv="content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">				
        <title>
            Đăng ký tài khoản		
        </title>
        <!-- ================= Page description ================== -->

        <meta name="description" content="">

        <!-- ================= Meta ================== -->
        <meta name="keywords" content="Đăng ký tài khoản, FresherFood, polo-theme.mysapo.net"/>		
        <link rel="canonical" href="https://polo-theme.mysapo.net/account/register"/>
        <meta name='revisit-after' content='1 days' />


        <meta name="robots" content="noodp,index,follow" />			
        <link href="/QuanLyBanNongSan/jsp/Fontend/css/plugin.scss.css" rel="stylesheet" type="text/css" />

        <!-- Build Main CSS -->								
        <link href="/QuanLyBanNongSan/jsp/Fontend/css/base.scss.css" rel="stylesheet" type="text/css" />		

        <link href="/QuanLyBanNongSan/jsp/Fontend/css/style.scss.css" rel="stylesheet" type="text/css" />
        <link href="/QuanLyBanNongSan/jsp/Fontend/css/styles.css" rel="stylesheet" type="text/css" />
        <link href="/QuanLyBanNongSan/jsp/Fontend/css/module.scss.css" rel="stylesheet" type="text/css" />

        <!-- Bizweb javascript customer -->

        <script src="/QuanLyBanNongSan/jsp/Fontend/js/common.js" type="text/javascript"></script>   
    </head>
    <body>

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
        <%
            Cookie[] listCookie = request.getCookies();
            String user = "";
            String pass = "";
            int co = 0;
            if (listCookie != null) {
                while (co < listCookie.length) {
                    if (listCookie[co].getName().equals("email")) {
                        user = listCookie[co].getValue();
                    }
                    if (listCookie[co].getName().equals("password")) {
                        pass = listCookie[co].getValue();
                    }
                    co++;
                }

            }
        %>
        <div class="page-body">
            <!-- Main content -->

            <jsp:include page="Header.jsp"></jsp:include>


                <!-- end header --> 
            <jsp:include page="Menu.jsp"></jsp:include>
                <!-- Header JS -->	
                <script src="/QuanLyBanNongSan/jsp/Fontend/js/jquery-2.2.3.min.js" type="text/javascript"></script> 

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

                                    <li><strong ><span itemprop="title">Đăng nhập tài khoản</span></strong></li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </section> 
                <section class=" margin-top-0">
                    <div class="container">
                        <div class="page_title">
                            <h1 class="title_page_h1">Đăng nhập tài khoản
                            </h1>
                        </div>
                        <div class="customer-form row">
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <div class="register_form">
                                    <strong>Khách hàng mới</strong>
                                    <p>Bằng cách tạo một tài khoản với cửa hàng của chúng tôi, bạn sẽ có thể thực hiện những quy trình mua hàng nhanh hơn, lưu trữ nhiều địa chỉ gửi hàng, xem và theo dõi đơn đặt hàng của bạn trong tài khoản của bạn và nhiều hơn nữa.</p>
                                    <div class="buttons-set">
                                        <button onclick="window.location = 'initRegister.htm';" class=" btn button-hover create-account" type="button">
                                            <span>Tạo tài khoản</span>
                                        </button>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <div class="register_forms">
                                    <strong>Đăng nhập</strong>
                                    <p>Nếu bạn có một tài khoản, xin vui lòng đăng nhập</p>
                                    <font color="red">${messageLogin}</font>
                                <f:form accept-charset="UTF-8" action="login.htm" id="customer_login" commandName="account" method="post">
                                    <input name="FormType" type="hidden" value="customer_login" />
                                    <input name="utf8" type="hidden" value="true" />
                                    <div class="form-signup error a-left margin-bottom-15" >

                                    </div>
                                    <label>Email <span class="required">*</span></label>
                                    <f:input type="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" class="input-control" name="email" id="customer_email" path="email"/>
                                    <label>Mật khẩu <span class="required">*</span> </label>
                                    <f:input type="password" class="input-control" name="password" id="customer_password" path="password"/> 
                                    <p class="required">* Yêu cầu bắt buộc</p>
                                    <div class="pull-xs-left" style="margin-top: 25px;">
                                        <button class="btn button-hover-3" type="submit" value="Đăng nhập">
                                            <span>Đăng nhập</span>
                                        </button>
                                        <a href="#recover" onclick="showRecoverPasswordForm();
                                                return false;" id="RecoverPassword">Quên mật khẩu?</a>
                                    </div>
                                    <div class="block social-login--facebooks">
                                        <p class="a-center">
                                            Hoặc đăng nhập bằng
                                        </p>
                                        <!--                                        <script>function loginFacebook() {
                                                                                        var a = {client_id: "947410958642584", redirect_uri: "https://store.mysapo.net/account/facebook_account_callback", state: JSON.stringify({redirect_url: window.location.href}), scope: "email", response_type: "code"}, b = "https://www.facebook.com/v3.2/dialog/oauth" + encodeURIParams(a, !0);
                                                                                        window.location.href = b
                                                                                    }
                                                                                    function loginGoogle() {
                                                                                        var a = {client_id: "885968593373-197u9i4pte44vmvcc0j50pvhlfvl27ds.apps.googleusercontent.com", redirect_uri: "https://store.mysapo.net/account/google_account_callback", scope: "email profile https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile", access_type: "online", state: JSON.stringify({redirect_url: window.location.href}), response_type: "code"}, b = "https://accounts.google.com/o/oauth2/v2/auth" + encodeURIParams(a, !0);
                                                                                        window.location.href = b
                                                                                    }
                                                                                    function encodeURIParams(a, b) {
                                                                                        var c = [];
                                                                                        for (var d in a)
                                                                                            if (a.hasOwnProperty(d)) {
                                                                                                var e = a[d];
                                                                                                null != e && c.push(encodeURIComponent(d) + "=" + encodeURIComponent(e))
                                                                                            }
                                                                                        return 0 == c.length ? "" : (b ? "?" : "") + c.join("&")
                                                                                    }</script>-->
                                        <a href="https://www.facebook.com/dialog/oauth?client_id=328385878702806&redirect_uri=http://localhost:8080/QuanLyBanNongSan/LoginFacebookServlet" class="social-login--facebook"><img width="129px" height="37px" alt="facebook-login-button" src="//bizweb.dktcdn.net/assets/admin/images/login/fb-btn.svg"></a>
                                        <a href="javascript:void(0)" class="social-login--google" onclick="loginGoogle()"><img width="129px" height="37px" alt="google-login-button" src="//bizweb.dktcdn.net/assets/admin/images/login/gp-btn.svg"></a>
                                    </div>
                                </f:form>

                                <form accept-charset="UTF-8" action="/account/recover" id="recover_customer_password" method="post">
                                    <input name="FormType" type="hidden" value="recover_customer_password" />
                                    <input name="utf8" type="hidden" value="true" />

                                    <div id="recover_password" style="display: none;">
                                        <h2>Đặt lại mật khẩu</h2>                     
                                        <p>Chúng tôi sẽ gửi cho bạn một email để kích hoạt việc đặt lại mật khẩu.</p>

                                        <div class="form-signup error margin-bottom-15" >

                                        </div>
                                        <label>Email<span class="required">*</span></label>
                                        <input type="email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" class="input-control" value="" title="email" name="email" id="email" >
                                        <p class="action-btn">
                                            <input type="submit" class="button_all" value="Gửi">
                                            hoặc <a href="#" onclick="hideRecoverPasswordForm();
                                                    return false;">Hủy</a>
                                        </p>
                                    </div>
                                </form> 
                            </div>
                        </div>
                    </div>
                </div>
            </section>
            <script>
                function showRecoverPasswordForm() {
                    document.getElementById('recover_password').style.display = 'block';
                    document.getElementById('customer_login').style.display = 'none';
                }

                function hideRecoverPasswordForm() {
                    document.getElementById('recover_password').style.display = 'none';
                    document.getElementById('customer_login').style.display = 'block';
                }

                // Allow deep linking to the recover password form
                if (window.location.hash == '#recover') {
                    showRecoverPasswordForm()
                }

                // reset_success is only true when the reset form is

            </script>











            <footer>

                <div class="section_brand">
                    <div class="container">
                        <div class="row">
                            <div class="block-brand owl-carousel" data-dot="false"
                                 data-nav='false'
                                 data-lg-items='6'
                                 data-md-items='4' 
                                 data-sm-items='3'
                                 data-xs-items="2" 
                                 data-margin='0'>






                                <div class="image_brand">
                                    <span class="wrp effect-2">
                                        <img src="//bizweb.dktcdn.net/thumb/small/100/037/483/themes/709526/assets/load-image.gif?1564646079882" data-lazyload="//bizweb.dktcdn.net/100/037/483/themes/709526/assets/brand1.png?1564646079882" alt="demo">
                                    </span>
                                </div>







                                <div class="image_brand">
                                    <span class="wrp effect-2">
                                        <img src="//bizweb.dktcdn.net/thumb/small/100/037/483/themes/709526/assets/load-image.gif?1564646079882" data-lazyload="//bizweb.dktcdn.net/100/037/483/themes/709526/assets/brand2.png?1564646079882" alt="demo">
                                    </span>
                                </div>







                                <div class="image_brand">
                                    <span class="wrp effect-2">
                                        <img src="//bizweb.dktcdn.net/thumb/small/100/037/483/themes/709526/assets/load-image.gif?1564646079882" data-lazyload="//bizweb.dktcdn.net/100/037/483/themes/709526/assets/brand3.png?1564646079882" alt="demo">
                                    </span>
                                </div>







                                <div class="image_brand">
                                    <span class="wrp effect-2">
                                        <img src="//bizweb.dktcdn.net/thumb/small/100/037/483/themes/709526/assets/load-image.gif?1564646079882" data-lazyload="//bizweb.dktcdn.net/100/037/483/themes/709526/assets/brand4.png?1564646079882" alt="demo">
                                    </span>
                                </div>







                                <div class="image_brand">
                                    <span class="wrp effect-2">
                                        <img src="//bizweb.dktcdn.net/thumb/small/100/037/483/themes/709526/assets/load-image.gif?1564646079882" data-lazyload="//bizweb.dktcdn.net/100/037/483/themes/709526/assets/brand5.png?1564646079882" alt="demo">
                                    </span>
                                </div>







                                <div class="image_brand">
                                    <span class="wrp effect-2">
                                        <img src="//bizweb.dktcdn.net/thumb/small/100/037/483/themes/709526/assets/load-image.gif?1564646079882" data-lazyload="//bizweb.dktcdn.net/100/037/483/themes/709526/assets/brand6.png?1564646079882" alt="demo">
                                    </span>
                                </div>








                            </div>
                        </div>
                    </div>
                </div>

                <div class="section_mail_social">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                <div class="mail">         
                                    <h3>Đăng kí nhận tin</h3>

                                    <form action="//sapo.us19.list-manage.com/subscribe/post?u=2887dcda77021868cccd236ea&id=7ace19f37b" method="POST" role="form">
                                        <input  class= "form-email" type="email" id="mail" placeholder="Email của bạn">
                                        <button class="btn btn-primary subscribe"><i class="fa fa-envelope" aria-hidden="true"></i>
                                            <span>Gửi đi</span></button>
                                    </form>         
                                </div>
                            </div>			
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">       

                                <div class="social">           

                                    <a href="#" class="fa fa-facebook"></a>


                                    <a href="#" class="fa fa-google-plus"></a>						


                                    <a href="#" class="fa fa-youtube"></a>						


                                    <a href="#" class="fa fa-twitter"></a>						


                                    <a href="#" class="fa fa-pinterest-p"></a>						


                                    <a href="#" class="fa fa-linkedin"></a>						

                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                <div class="infor-footer">
                    <div class="container">
                        <div class="row">

                            <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3 item-footer">
                                <div class="logo_image">

                                    <a href="/" class="logo-wrapper">					
                                        <img src="//bizweb.dktcdn.net/100/037/483/themes/709526/assets/logo.png?1564646079882" alt="logo Polo" title="logo Polo">					
                                    </a>

                                </div>
                                <div class="introduce">
                                    <p>FreshFood Shop được thành lập từ 8/2010 được sự tin tưởng của khách hàng trong suốt thời gian hoạt động đến nay cửa hàng ngày một phát triển và xây dựng được thương hiệu trong lòng quý khách.</p>
                                </div>
                                <div class="payment">
                                    <img src="//bizweb.dktcdn.net/thumb/small/100/037/483/themes/709526/assets/load-image.gif?1564646079882" data-lazyload="//bizweb.dktcdn.net/thumb/compact/100/037/483/themes/709526/assets/payment-1-min.png?1564646079882" alt="payment">
                                    <img src="//bizweb.dktcdn.net/thumb/small/100/037/483/themes/709526/assets/load-image.gif?1564646079882" data-lazyload="//bizweb.dktcdn.net/thumb/compact/100/037/483/themes/709526/assets/payment-2-min.png?1564646079882" alt="payment">
                                    <img src="//bizweb.dktcdn.net/thumb/small/100/037/483/themes/709526/assets/load-image.gif?1564646079882" data-lazyload="//bizweb.dktcdn.net/thumb/compact/100/037/483/themes/709526/assets/payment-3-min.png?1564646079882" alt="payment">
                                    <img src="//bizweb.dktcdn.net/thumb/small/100/037/483/themes/709526/assets/load-image.gif?1564646079882" data-lazyload="//bizweb.dktcdn.net/thumb/compact/100/037/483/themes/709526/assets/payment-4-min.png?1564646079882" alt="payment">
                                </div>
                            </div>

                            <div class="col-xs-12 col-sm-4 col-md-2 col-lg-2 item-footer footer-click">
                                <h4 class="cliked">Về chúng tôi</h4>
                                <ul class="detail_content toggle-mn" style="display:none;">

                                    <li><a class="ef" href="/">Trang chủ</a></li>

                                    <li><a class="ef" href="/gioi-thieu">Giới thiệu</a></li>

                                    <li><a class="ef" href="/collections/all">Sản phẩm</a></li>

                                    <li><a class="ef" href="/tin-tuc">Tin tức</a></li>

                                    <li><a class="ef" href="/lien-he">Liên hệ</a></li>

                                </ul>					
                            </div>

                            <div class="col-xs-12 col-sm-4 col-md-2 col-lg-2 item-footer footer-click">					
                                <h4 class="cliked">Hỗ trợ</h4>										
                                <ul class="detail_content toggle-mn" style="display:none;">

                                    <li><a class="ef" href="/">Trang chủ</a></li>

                                    <li><a class="ef" href="/gioi-thieu">Giới thiệu</a></li>

                                    <li><a class="ef" href="/collections/all">Sản phẩm</a></li>

                                    <li><a class="ef" href="/tin-tuc">Tin tức</a></li>

                                    <li><a class="ef" href="/lien-he">Liên hệ</a></li>

                                </ul>					
                            </div>

                            <div class="col-xs-12 col-sm-4 col-md-2 col-lg-2 item-footer footer-click">					
                                <h4 class="cliked">Hướng dẫn</h4>										
                                <ul class="detail_content toggle-mn" style="display:none;">

                                    <li><a class="ef" href="/">Trang chủ</a></li>

                                    <li><a class="ef" href="/gioi-thieu">Giới thiệu</a></li>

                                    <li><a class="ef" href="/collections/all">Sản phẩm</a></li>

                                    <li><a class="ef" href="/tin-tuc">Tin tức</a></li>

                                    <li><a class="ef" href="/lien-he">Liên hệ</a></li>

                                </ul>					
                            </div>

                            <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3 item-footer">	
                                <h4 class="name"><span>Liên hệ</span></h4>
                                <ul class="list-unstyled list-block">
                                    <li class="clearfix">
                                        <div class="icon">
                                            <a href="#"><i class="fa fa-map-marker" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="contact">
                                            <span>Tầng 6 - Tòa nhà Ladeco - 266 Đội Cấn - Ba Đình, Hà Nội</span>
                                        </div>
                                    </li>
                                    <li class="clearfix">
                                        <div class="icon">
                                            <a href="#"><i class="fa fa-phone" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="contact">
                                            <a class="hotline" href="tel:18006750">1800 6750 </a>
                                        </div>
                                    </li>
                                    <li class="clearfix action">
                                        <div class="icon">
                                            <a href="#"><i class="fa fa-envelope" aria-hidden="true"></i></a>
                                        </div>
                                        <div class="contact">
                                            <a class="email" href="mailto:support@sapo.vn">support@sapo.vn</a>
                                        </div>
                                    </li>
                                </ul>

                            </div>

                        </div>
                    </div>
                </div>
                <div class="bottom-footer">
                    <div class="container">
                        <div class="row">	

                            <div class="hidden-xs col-sm-12 col-md-7 col-lg-7 menu col-lg-push-5 col-md-push-5">
                                <div class="wrap-ul">
                                    <ul class="list-unstyled extra-menu">

                                        <li><a class="ef" href="/">Trang chủ</a></li>

                                        <li><a class="ef" href="/gioi-thieu">Giới thiệu</a></li>

                                        <li><a class="ef" href="/collections/all">Sản phẩm</a></li>

                                        <li><a class="ef" href="/tin-tuc">Tin tức</a></li>

                                        <li><a class="ef" href="/lien-he">Liên hệ</a></li>

                                    </ul>
                                </div>
                            </div>
                            <div class="col-xs-12 col-sm-12 col-md-5 col-lg-5 copyright col-lg-pull-7 col-md-pull-7">
                                <div class="text_copyright">
                                    <span class="mobile">© Bản quyền thuộc về <a class="team"> Avent Team</a>. </span><span class="mobiles">Cung cấp bởi </span>
                                    <a class="system" rel="nofollow" href="https://www.sapo.vn/?utm_campaign=cpn%3Asite_khach_hang-plm%3Afooter&utm_source=site_khach_hang&utm_medium=referral&utm_content=fm%3Atext_link-km%3A-sz%3A&utm_term=&campaign=site_khach_hang" title="Sapo" target="_blank">Sapo</a>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <a href="#" id="back-to-top" class="backtop back-to-top"  title="Lên đầu trang"><i class="fa fa-arrow-up"></i></a>

            </footer>	
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