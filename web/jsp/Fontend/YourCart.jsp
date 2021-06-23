<%-- 
    Document   : YourCart
    Created on : Jan 18, 2020, 2:46:33 PM
    Author     : Win 10
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="block block-cart hide_scroll open_button" id="open_shopping_cart">
    <div class="block-title"><span>Giỏ hàng của bạn</span></div>
    <div class="block-content">
        <div class="summary">
            <c:choose>
                <c:when test="${listCart.size()==null}">
                    <p class="amount">Đang có <span id="cart-total" >0</span> sản phẩm trong giỏ hàng của bạn.</p>
                    <p class="subtotal"> <span class="label">Tổng tiền:</span> <span class="price total_price">0₫</span> </p>
                </c:when>
                <c:otherwise>
                    <p class="amount">Đang có <span id="cart-total" >${listCart.size()}</span> sản phẩm trong giỏ hàng của bạn.</p>
                    <p class="subtotal"> <span class="label">Tổng tiền:</span> <span class="price total_price">${total}₫</span> </p>
                </c:otherwise>
            </c:choose>
        </div>
        <div class="ajax-checkout">
            <button onclick="window.location = '/checkout'" type="submit" title="Submit" class="button button-checkout"><span>Thanh toán</span></button>
        </div>
        <ul class="shopping_cart style_cart_col">
        </ul>
    </div>
</div>
