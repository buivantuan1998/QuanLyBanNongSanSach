<%-- 
    Document   : Header1
    Created on : Feb 10, 2020, 10:26:56 AM
    Author     : Win 10
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<header class="header-container">
    <div class="header-top">
        <div class="container">
            <div class="row"> 
                <!-- Header Language -->
                <div class="col-xs-6">
                    <div class="welcome-msg hidden-xs"> Chào mừng bạn tới FreshFood Shop </div>
                </div>
                <div class="col-xs-6"> 

                    <!-- Header Top Links -->
                    <div class="toplinks">
                        <div class="links">

                            <div class="register"><a title="Register" href="account.htm"><span  class="hidden-xs">Tài khoản</span></a></div>
                            <div class="login"><a title="Login" href="logout.htm?logout=ok"><span  class="hidden-xs">Đăng xuất</span></a></div>
                            <div class="myaccount"><a title="Account" href="account.htm"><span  class="hidden-xs">${userName}</span></a></div>
                        </div>
                    </div>
                    <!-- End Header Top Links --> 
                </div>
            </div>
        </div>
    </div>
    <div class="header container">
        <div class="row">
            <div class="col-lg-2 col-sm-3 col-md-2"> 
                <!-- Header Logo --> 
                <a class="logo" href="homeFontend.htm">

                    

                </a>
                <!-- End Header Logo --> 
            </div>
            <div class="col-lg-8 col-sm-6 col-md-8"> 
                <!-- Search-col -->
                <div class="search-box">
                    <form action="Search.htm" method="get" id="search_mini_form">
                        <input type="text" placeholder="Tìm kiếm" value="" maxlength="70" class="" name="query" id="search">
                        <button type="submit" id="submit-button" class="search-btn-bg"><span style="white-space: nowrap;">Tìm kiếm</span></button>
                    </form>
                </div>
                <!-- End Search-col --> 
            </div>
            <!-- Top Cart -->
            <div class="col-lg-2 col-sm-3 col-md-2">
                <div class="top-cart-contain">
                    <div class="mini-cart" id="open_shopping_cart">
                        <div data-hover="dropdown" class="basket dropdown-toggle"> <a href="MyCart.htm"> 
                                <i class="glyphicon glyphicon-shopping-cart"></i>
                                <div class="cart-box"><span class="title">Giỏ hàng</span><span id="cart-total">${listCart.size()} </span></div>
                            </a>
                        </div>
                        <div>
                            <div class="top-cart-content arrow_box">
                                <ul id="cart-sidebar" class="mini-products-list shopping_cart">
                                    <li class="action">
                                        <ul>
                                            <c:choose>
                                                <c:when test="${listCart.size()==0}">
                                                    Giỏ hàng không có sản phẩm nào
                                                </c:when>
                                                <c:otherwise>
                                                    <li class="li-fix-1">
                                                        <div class="top-subtotal">
                                                            Tổng tiền thanh toán: ${total}₫
                                                            <span class="price"></span>
                                                        </div>
                                                    </li>
                                                </c:otherwise>
                                            </c:choose>

                                            <li class="li-fix-2" style="">
                                                <div class="actions">
                                                    <a href="MyCart.htm" class="btn btn-primary">
                                                        <i class="fa fa-cart-plus">&nbsp; Giỏ hàng</i>

                                                    </a>
                                                    &emsp;&emsp;&emsp;
                                                    <c:choose>
                                                        <c:when test="${listCart.size()!=0}">
                                                            <a href="Payment.htm" class="btn btn-success">

                                                                <i class="fa fa-credit-card">&nbsp; Thanh toán</i>

                                                            </a>
                                                        </c:when>
                                                        <c:otherwise>
                                                                 <a class="btn btn-success" onclick="return confirm('Không có sản phẩm trong giỏ hàng')">

                                                                <i class="fa fa-credit-card">&nbsp; Thanh toán</i>

                                                            </a>
                                                        </c:otherwise>
                                                    </c:choose>


                                                </div>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div id="ajaxconfig_info"> <a href="#/"></a>
                        <input value="" type="hidden">
                        <input id="enable_module" value="1" type="hidden">
                        <input class="effect_to_cart" value="1" type="hidden">
                        <input class="title_shopping_cart" value="Giỏ hàng" type="hidden">
                    </div>
                </div>
            </div>
            <!-- End Top Cart --> 
        </div>
    </div>
</header>
