<%-- 
    Document   : AllProduct
    Created on : Jan 18, 2020, 2:53:45 PM
    Author     : Win 10
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div id="data">
    <section class="col-main col-sm-9 col-sm-push-3">
        <div class="category-description std">
            <div class="slider-items-products">
                <div id="category-desc-slider" class="product-flexslider hidden-buttons">
                    <div class="slider-items slider-width-col1"> 

                    </div>
                </div>
            </div>
        </div>
        <div class="category-title">
            <h1>Tất cả sản phẩm</h1>
        </div>
        <div class="category-products">

            <div class="toolbar">
                <div id="sort-by">
                    <label class="left">Lọc theo: </label>
                    <select name="sortBy" id="sortBy" class="selectBox" style="padding: 0px 10px; height: 30px;">
                        <option selected value="default">Mặc định</option>
                        <option value="alpha-asc">A &rarr; Z</option>
                        <option value="alpha-desc">Z &rarr; A</option>
                        <option value="price-asc" >Giá tăng dần</option>
                        <option value="price-desc">Giá giảm dần</option>
                        <option value="created-desc">Hàng mới nhất</option>
                        <option value="created-asc">Hàng cũ nhất</option>
                    </select>
                    <a class="button-asc left" href="#" title="Set Descending Direction"><span class="glyphicon glyphicon-arrow-up"></span></a> 
                </div>
            </div>

            <ul class="products-grid hidden_btn_cart">
                <c:forEach items="${listProduct}" var="product">
                    <li class="item col-lg-4 col-md-4 col-sm-6 col-xs-6">
                        <c:choose>
                            <c:when test="${product.discountId == 0}">
                                <div class="col-item">

                                    <div class="product-image-area"> 
                                        <a class="product-image" title="${product.productName}" href="productDetail.htm?Id=${product.id}"> 
                                            <img src="/QuanLyBanNongSan/jsp/Fontend/images/${product.images}" class="img-responsive" alt="${product.productName}" /> 
                                            <noscript><img src="/QuanLyBanNongSan/jsp/Fontend/images/${product.images}" alt="${product.productName}" class="img-fix"></noscript>
                                        </a>

                                    </div>
                                    <div class="info">
                                        <div class="info-inner">
                                            <div class="item-title"> <h3><a title="${product.productName}" href="productDetail.htm?Id=${product.id}">${product.productName}</a></h3></div>
<!--                                            <div class="item-title"> <h3><a title="${product.buyItem}" href="productDetail.htm?Id=${product.id}">${product.buyItem}</a></h3></div>
                                            <div class="item-title"> <h3><a title="${product.unit}" href="productDetail.htm?Id=${product.id}">${product.unit}</a></h3></div>-->
                                            <!--item-title-->
                                            <div class="item-content">
                                            
                                                <div class="price-box">
                                                    <p class="special-price"> <span class="price">${product.priceOutput}₫ </span> </p>
                                                </div>


                                            </div>
                                            <!--item-content--> 
                                        </div>
                                        <!--info-inner-->
                                        <form class="actions form-ajax-action clearfix" method="get" action="addCart.htm" enctype="multipart/form-data">

                                            <input type="hidden" name="quantity" value="1">
                                            <input type="hidden" name="Id" value="${product.id}">
                                            <button class="btn-transparent pull-xs-left" type="submit">Cho vào giỏ</button>


                                        </form>
                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                            </c:when>
                            <c:otherwise>
                                <div class="col-item">

                                    <div class="product-image-area"> 
                                        <a class="product-image" title="${product.productName}" href="productDetail.htm?Id=${product.id}"> 
                                            <img src="/QuanLyBanNongSan/jsp/Fontend/images/${product.images}" class="img-responsive" alt="${product.productName}" style="width: 250px; height: 250px"/> 
                                        </a>

                                    </div>
                                    <div class="info">
                                        <div class="info-inner">
                                            <div class="item-title"> <h3><a title="${product.productName}" href="productDetail.htm?Id=${product.id}">${product.productName}</a></h3></div>
                                            <!--item-title-->
                                            <div class="item-content">


                                                <div class="price-box">
                                                    <!--<del>${product.priceOutput}₫</del>-->
                                                    <p class="special-price"> <span class="price">${product.priceOutput}₫ </span> </p>
                                                </div>


                                            </div>

                                            <!--item-content--> 
                                        </div>
                                        <form class="actions form-ajax-action clearfix" method="get" action="addCart.htm" enctype="multipart/form-data">

                                            <input type="hidden" name="quantity" value="1">
                                            <input type="hidden" name="Id" value="${product.id}">
                                            <button class="btn-transparent pull-xs-left" type="submit">Cho vào giỏ</button>


                                        </form>
                                        <div class="clearfix"> </div>
                                    </div>
                                </div>
                            </c:otherwise>
                        </c:choose>

                    </li>
                </c:forEach>

            </ul>
            <div class="toolbar">
                <div class="pager">
                    <div class="pages">
                        <label>Trang:</label>
                        <ul class="pagination">
                            ${url}
                        </ul>
                    </div>
                </div>
            </div>


        </div>
    </section>
</div>
