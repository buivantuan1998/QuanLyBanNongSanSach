<%-- 
    Document   : FilterProduct
    Created on : Jan 18, 2020, 2:44:10 PM
    Author     : Win 10
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="block block-layered-nav hide_scroll">
    <div class="block-title"><span>Lọc sản phẩm theo :</span></div>
    <div class="block-content" id="provider">
        <dl id="narrow-by-list">
            <dt class="even">Thương hiệu</dt>
            <dd class="even">
                <ol>
                    <c:forEach items="${listProvider}" var="provider">
                        <li>
                            <a href='#' title='${provider.supplierName}' class="${provider.id}">${provider.supplierName}</a>
                            <input type="hidden" class="form-control pro"  name="prof" value="${provider.id}">
                        </li>
                    </c:forEach>
                        
                </ol>
            </dd>
        </dl>
    </div>
</div>
