<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">


    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <jsp:include page="Head.jsp"></jsp:include>

        <link href="/QuanLyBanNongSan/jsp/Admin/css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="/QuanLyBanNongSan/jsp/Admin/js/sweetalert.min.js" type="text/javascript"></script>
        <script src="/QuanLyBanNongSan/jsp/ckeditor/ckeditor.js" type="text/javascript"></script>
        <script src="/QuanLyBanNongSan/jsp/ckfinder/ckfinder.js" type="text/javascript"></script>
        <script>
            function validate() {
                var productName = document.getElementById("productName").value;
                var quantity = document.getElementById("quantity").value;
                var priceInput = document.getElementById("priceInput").value;
                var priceOutput = document.getElementById("priceOutput").value;
      //                var discount = document.getElementById("discount").value;

                var pattern = /^[0-9][0-9]*$/;
                var pattern1 = /^[0-9]*\.?[0-9]*$/;

                if (productName != "" &&
                        images != "" && quantity != "" && priceInput != "" && priceOutput != "" &&
                        pattern.test(quantity) == true && pattern1.test(priceInput) == true && pattern1.test(priceOutput) == true) {
                    return true;
                } else {
                    if (productName != "") {
                        document.getElementById("error-productName").innerHTML = "";
                    }
                    if (quantity != "") {
                        document.getElementById("error-quantity").innerHTML = "";
                    }
                    if (priceInput != "") {
                        document.getElementById("error-priceInput").innerHTML = "";
                    }
                    if (priceOutput != "") {
                        document.getElementById("error-priceOutput").innerHTML = "";
                    }


                    if (productName == "") {
                        document.getElementById("error-productName").innerHTML = "B???n ph???i nh???p t??n s???n ph???m.";
                        document.getElementById("productName").focus();
                        return false;
                    }
                    if (quantity == "") {
                        document.getElementById("error-quantity").innerHTML = "B???n ph???i nh???p s??? l?????ng";
                        document.getElementById("quantity").focus();
                        return false;
                    } else {
                        if (!pattern.test(quantity)) {
                            document.getElementById("error-quantity").innerHTML = "S??? l?????ng ph???i l?? s???";
                            document.getElementById("quantity").focus();
                            return false;
                        }
                    }
                    if (priceInput == "") {
                        document.getElementById("error-priceInput").innerHTML = "B???n ph???i nh???p gi?? nh???p";
                        document.getElementById("priceInput").focus();
                        return false;
                    } else {
                        if (!pattern1.test(priceInput)) {
                            document.getElementById("error-priceInput").innerHTML = "Gi?? nh???p ph???i l?? s???";
                            document.getElementById("priceInput").focus();
                            return false;
                        }
                    }
                    if (priceOutput == "") {
                        document.getElementById("error-priceOutput").innerHTML = "B???n ph???i nh???p gi?? b??n";
                        document.getElementById("priceOutput").focus();
                        return false;
                    } else {
                        if (!pattern1.test(priceOutput)) {
                            document.getElementById("error-priceOutput").innerHTML = "Gi?? b??n ph???i l?? s???";
                            document.getElementById("priceOutput").focus();
                            return false;
                        }
                    }

                }
            }

        </script>

        <body class="no-skin">
        <jsp:include page="Header.jsp"></jsp:include>

            <div class="main-container" id="main-container">
                <script type="text/javascript">
                    try {
                        ace.settings.check('main-container', 'fixed')
                    } catch (e) {
                    }
                </script>

            <jsp:include page="Menu.jsp"></jsp:include>


                <div class="main-content">
                    <div class="main-content-inner">
                        <div class="breadcrumbs" id="breadcrumbs">
                            <script type="text/javascript">
                                try {
                                    ace.settings.check('breadcrumbs', 'fixed')
                                } catch (e) {
                                }
                            </script>

                            <ul class="breadcrumb">
                                <li>
                                    <i class="ace-icon fa fa-home home-icon"></i>
                                    <a href="#">Home</a>
                                </li>
                                <li class="active">Dashboard</li>
                            </ul><!-- /.breadcrumb -->


                        </div>

                        <div class="page-content">

                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h4>Qu???n l?? s???n ph???m <small>  >> Th??m m???i</small></h4>
                                            <div class="clearfix"></div>
                                        <f:form class="form-horizontal form-label-left" action="InsertProduct.htm" commandName="newProduct" onsubmit="return validate()" enctype="multipart/form-data" method="POST">

                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">T??n s???n ph???m <span class="required">*</span>
                                                </label>
                                                <div class="col-md-10 col-sm-10 col-xs-12">
                                                    <f:input type="text" id="productName" class="form-control col-md-7 col-xs-12" path="productName" />
                                                </div>
                                                <div id="error-productName" style="color:red; font-size: 14px;"></div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">M?? t??? chi ti???t <span class="required">*</span>
                                                </label>
                                                <div class="col-md-10 col-sm-10 col-xs-12">
                                                    <f:textarea id="discription"  class="form-control col-md-7 col-xs-12" path="discription"></f:textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">???nh s???n ph???m<span class="required">*</span>
                                                    </label>
                                                    <div class="col-md-10 col-sm-10 col-xs-12">
                                                    <f:input type="file" id="images"  class="form-control col-md-7 col-xs-12" path="images" />
                                                </div>
                                            </div>
                                            <!--                                            <div class="form-group">
                                                                                            <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">???nh ph???<span class="required">*</span>
                                                                                            </label>
                                                                                            <div class="col-md-10 col-sm-10 col-xs-12">
                                                                                                <:input type ="file" id="images"  class="form-control col-md-7 col-xs-12" path="images" />
                                                                                            </div>
                                                                                        </div>-->
                                            
                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Gi?? nh???p <span class="required">*</span>
                                                </label>
                                                <div class="col-md-10 col-sm-10 col-xs-12">
                                                    <f:input type="text" id="priceInput" class="form-control col-md-7 col-xs-12" path="priceInput" onclick="document.getElementById('priceInput').value = '' "/>
                                                </div>
                                                <div id="error-priceInput" style="color:red; font-size: 14px;"></div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">Gi?? b??n<span class="required">*</span>
                                                </label>
                                                <div class="col-md-10 col-sm-10 col-xs-12">
                                                    <f:input type="text" id="priceOutput" class="form-control col-md-7 col-xs-12" path="priceOutput" onclick="document.getElementById('priceOutput').value = '' " />
                                                </div>
                                                <div id="error-priceOutput" style="color:red; font-size: 14px;"></div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">S??? l?????ng <span class="required">*</span>
                                                </label>
                                                <div class="col-md-10 col-sm-10 col-xs-12">
                                                    <f:input type="text" id="quantity" class="form-control col-md-7 col-xs-12" path="quantity" onclick="document.getElementById('quantity').value = '' " />
                                                </div>
                                                <div id="error-quantity" style="color:red; font-size: 14px;"></div>
                                            </div>

                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">M?? danh m???c <span class="required">*</span>
                                                </label>
                                                <div class="col-md-10 col-sm-10 col-xs-12">
                                                    <f:select id="id" class="form-control col-md-7 col-xs-12"  path="categoryId" >
                                                        <c:forEach items="${listCatalog}" var="catalog">
                                                            <f:option value="${catalog.id}" >${catalog.categoryName}</f:option>
                                                        </c:forEach>
                                                    </f:select>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs-12" for="last-name">M?? gi???m gi??<span class="required">*</span>
                                                </label>
                                                <div class="col-md-10 col-sm-10 col-xs-12">
                                                    <f:select id="discountId" class="form-control col-md-7 col-xs-12"  path="discountId" >
                                                        <c:forEach items="${listDiscount}" var="discount">
                                                            <f:option value="${discount.id}" >${discount.discountName}</f:option>
                                                        </c:forEach>
                                                    </f:select>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="control-label col-md-2 col-sm-2 col-xs-12" for="first-name">????n v??? t??nh <span class="required">*</span>
                                                </label>
                                                <div class="col-md-10 col-sm-10 col-xs-12">
                                                    <f:input type="text" id="unit" class="form-control col-md-7 col-xs-12" path="unit"/>
                                                </div>
                                            </div>

                                            <div class="ln_solid"></div>
                                            <div class="form-group">
                                                <div class="col-md-10 col-sm-10 col-xs-12 col-md-offset-3">
                                                    <button class="btn btn-primary" type="reset">H???y</button>
                                                    <button class="btn btn-primary" type="button" onclick="history.go(-1)">Quay l???i</button>
                                                    <button type="submit" class="btn btn-success">Th??m m???i</button>
                                                </div>
                                            </div>

                                        </f:form>
                                    </div>
                                </div>
                            </div>

                        </div><!-- /.row -->
                    </div><!-- /.page-content -->
                </div>
            </div><!-- /.main-content -->
            <script type="text/javascript">

                var editor = CKEDITOR.replace('productContentDetail');
                var editor1 = CKEDITOR.replace('productContent');
                CKFinder.setupCKEditor(editor, 'jsp/ckfinder/');
                CKFinder.setupCKEditor(editor1, 'jsp/ckfinder/');


            </script>    

            <jsp:include page="Footer.jsp"></jsp:include>

        </div><!-- /.main-container -->

    </body>
</html>

