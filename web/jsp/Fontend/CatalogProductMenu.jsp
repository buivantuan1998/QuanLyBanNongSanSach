<%-- 
    Document   : CatalogProductMenu
    Created on : Jan 18, 2020, 2:41:40 PM
    Author     : Win 10
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="side-nav-categories">
    <div class="block-title"> Danh mục sản phẩm </div>
    <!--block-title--> 
    <!-- BEGIN BOX-CATEGORY -->
    <div class="box-content box-category" id="pro">
        <ul>


            <li> <a  href="#">Sản phẩm khuyến mại</a> </li>
            <li> <a  href="#">Sản phẩm nổi bật</a> </li>
            <c:forEach items="${listCatalog}" var="categorys">
            <!--getProduct.htm?Id={categorys.id}-->
                <li> 
                    <a  href="#" class="${categorys.id}">${categorys.categoryName}</a> 
                    <input type="hidden" class="form-control pro"  name="prof" value="${categorys.id}">
                </li>
            </c:forEach>
        </ul>
    </div>
    <!--box-content box-category--> 
</div>
