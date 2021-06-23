<%-- 
    Document   : Menu
    Created on : Jan 11, 2020, 2:22:14 PM
    Author     : Win 10
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<nav>
    <div class="container">
        <div class="nav-inner">
            <div class="logo-small"> 
                <a class="logo" href="/QuanLyBanNongSan/polo-theme.bizwebvietnam.net">

                    <!--<img alt="polo-theme" src="/QuanLyBanNongSan/jsp/Fontend/images/logo.png" />-->

                </a>
            </div>
            <!-- mobile-menu -->
            <div class="hidden-desktop" id="mobile-menu">
                <ul class="navmenu">
                    <li>
                        <div class="menutop">
                            <div class="toggle"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></div>
                            <h2>Menu</h2>
                        </div>
                        <ul class="submenu">
                            <li>
                                <ul class="topnav">


                                    <li class="level0 nacvv-8 level-top parent"> <a class="level-top" href="homeFontend.htm"> <span>Trang chủ</span> </a></li>



                                    <li class="level0 nacvv-8 level-top parent"> <a class="level-top" href="about.htm"> <span>Giới thiệu</span> </a></li>



                                    <li class="level0 nav-8 level-top parent"> <a class="level-top" href="getAllProduct.htm"> <span>Sản phẩm</span> </a>
                                        <ul class="level0">


                                            <li class="level1 nav-2-1 first parent"> <a href="/san-pham-khuyen-mai"> <span>Sản phẩm khuyến mại</span> </a></li>



                                            <li class="level1 nav-2-1 first parent"> <a href="/san-pham-noi-bat"> <span>Sản phẩm nổi bật</span> </a></li>


                                            <c:forEach items="${listCatalog}" var="catalog">
                                                <li class="level1 nav-2-1 first parent"> <a href="getProductByCatalog.htm?Id=${catalog.id}"> <span>${catalog.categoryName}</span> </a></li>
                                            </c:forEach>
                                        </ul>
                                    </li>



                                    <li class="level0 nacvv-8 level-top parent"> <a class="level-top" href="/tin-tuc"> <span>Tin tức</span> </a></li>



                                    <li class="level0 nacvv-8 level-top parent"> <a class="level-top" href="/lien-he"> <span>Liên hệ</span> </a></li>


                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!--navmenu--> 
            </div>		
            <!--End mobile-menu -->
            <ul id="nav" class="hidden-xs">
                <li class="level0 parent drop-menu"><a href="homeFontend.htm"><span>Trang chủ</span></a></li>
                <li class="level0 parent drop-menu"><a href="about.htm"><span>Giới thiệu</span></a></li>
                <li class="level0 parent drop-menu"><a href="getAllProduct.htm"><span>Sản phẩm</span></a>
                </li>
                <li class="level0 parent drop-menu"><a href="post.htm"><span>Tin tức</span></a></li>
                <li class="level0 parent drop-menu"><a href="contact.htm"><span>Liên hệ</span></a></li>
            </ul>
        </div>
    </div>
</nav>