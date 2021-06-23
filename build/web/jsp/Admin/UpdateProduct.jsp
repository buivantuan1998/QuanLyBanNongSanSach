
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <jsp:include page="Head.jsp"></jsp:include>

        <link href="/QuanLyBanNongSan/jsp/Admin/css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="/QuanLyBanNongSan/jsp/Admin/js/sweetalert.min.js" type="text/javascript"></script>
        <script src="/QuanLyBanNongSan/jsp/Admin/js/tinymce/tinymce.min.js" type="text/javascript" charset="utf-8" ></script>
        <script src="/QuanLyBanNongSan/jsp/ckeditor/ckeditor.js" type="text/javascript"></script>
        <script src="/QuanLyBanNongSan/jsp/ckfinder/ckfinder.js" type="text/javascript"></script>
      <script>
            function validate() {
                var productName = document.getElementById("productName").value;
//                var productContent = document.getElementById("productContent").value;
//                var productContentDetail = document.getElementById("productContentDetail").value;
//                var images = document.getElementById("images").value;
//                var imagesHover = document.getElementById("imagesHover").value;
                var quantity = document.getElementById("quantity").value;
                var priceInput = document.getElementById("priceInput").value;
                var priceOutput = document.getElementById("priceOutput").value;
//                var discount = document.getElementById("discount").value;

                var pattern = /^[0-9][0-9]*$/;
                var pattern1 = /^[0-9]*\.?[0-9]*$/;

                if (productName != "" &&
                        images != "" && quantity != "" && priceInput != "" && priceOutput != ""  &&
                        pattern.test(quantity) == true && pattern1.test(priceInput) == true && pattern1.test(priceOutput) == true) {
                    return true;
                } else {
                    if (productName != "") {
                        document.getElementById("error-productName").innerHTML = "";
                    }
//                    if (productContent != "") {
//                        document.getElementById("error-productContent").innerHTML = "";
//                    }
//                    if (productContentDetail != "") {
//                        document.getElementById("error-productContentDetail").innerHTML = "";
//                    }
//                    if (images != "") {
//                        document.getElementById("error-images").innerHTML = "";
//                    }
//                    if (imagesHover != "") {
//                        document.getElementById("error-imagesHover").innerHTML = "";
//                    }
                    if (quantity != "") {
                        document.getElementById("error-quantity").innerHTML = "";
                    }
                    if (priceInput != "") {
                        document.getElementById("error-priceInput").innerHTML = "";
                    }
                    if (priceOutput != "") {
                        document.getElementById("error-priceOutput").innerHTML = "";
                    }
//                    if (discount != "") {
//                        document.getElementById("error-discount").innerHTML = "";
//                    }


                    if (productName == "") {
                        document.getElementById("error-productName").innerHTML = "Bạn phải nhập tên sản phẩm.";
                        document.getElementById("productName").focus();
                        return false;
                    }
//                    if (productContent == "") {
//                        document.getElementById("error-productContent").innerHTML = "Bạn phải nhập mô tả sản phẩm.";
//                        document.getElementById("productContent").focus();
//                        return false;
//                    }
//                    if (productContentDetail == "") {
//                        document.getElementById("error-productContentDetail").innerHTML = "Bạn phải nhập mô tả chi tiết sản phẩm";
//                        document.getElementById("productContentDetail").focus();
//                        return false;
//                    }
//                    if (images == "") {
//                        document.getElementById("error-images").innerHTML = "Bạn phải chọn ảnh";
//                        document.getElementById("images").focus();
//                        return false;
//                    }
//                    if (imagesHover == "") {
//                        document.getElementById("error-imagesHover").innerHTML = "Bạn phải chọn ảnh";
//                        document.getElementById("imagesHover").focus();
//                        return false;
//                    }
                    if (quantity == "") {
                        document.getElementById("error-quantity").innerHTML = "Bạn phải nhập số lượng";
                        document.getElementById("quantity").focus();
                        return false;
                    } else {
                        if (!pattern.test(quantity)) {
                            document.getElementById("error-quantity").innerHTML = "Số lượng phải là số";
                            document.getElementById("quantity").focus();
                            return false;
                        }
                    }
                    if (priceInput == "") {
                        document.getElementById("error-priceInput").innerHTML = "Bạn phải nhập giá nhập";
                        document.getElementById("priceInput").focus();
                        return false;
                    } else {
                        if (!pattern1.test(priceInput)) {
                            document.getElementById("error-priceInput").innerHTML = "Giá nhập phải là số";
                            document.getElementById("priceInput").focus();
                            return false;
                        }
                    }
                    if (priceOutput == "") {
                        document.getElementById("error-priceOutput").innerHTML = "Bạn phải nhập giá bán";
                        document.getElementById("priceOutput").focus();
                        return false;
                    } else {
                        if (!pattern1.test(priceOutput)) {
                            document.getElementById("error-priceOutput").innerHTML = "Giá bán phải là số";
                            document.getElementById("priceOutput").focus();
                            return false;
                        }
                    }
//                    if (discount == "") {
//                        document.getElementById("error-discount").innerHTML = "Bạn phải nhập khuyến mại";
//                        document.getElementById("discount").focus();
//                        return false;
//                    } else {
//                        if (!pattern.test(dis)) {
//                            document.getElementById("error-discount").innerHTML = "Khuyến mại phải là số";
//                            document.getElementById("discount").focus();
//                            return false;
//                        }
//                    }
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
                                    <a href="homeBackend.htm">Trang chủ</a>
                                </li>
                                <li class="active">Quản lí sản phẩm</li>
                            </ul><!-- /.breadcrumb -->


                        </div>

                      
                        <div class="page-content">

                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h4>Quản lí sản phẩm <small>  >> Sửa thông tin</small></h4>
                                            <div class="clearfix"></div>
                                        <f:form class="form-horizontal form-label-left" action="UpdateProduct.htm" commandName="updateProduct" onsubmit="return validate()" method="POST">
                                            <div class="form-group message">
                                                ${message}
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Mã sản phẩm <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="id" class="form-control col-md-7 col-xs-12" path="id" readonly="true"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Tên sản phẩm <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="productName" class="form-control col-md-7 col-xs-12" path="productName" />
                                                </div>
                                                <div id="error-productName" style="color:red; font-size: 14px;"></div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Giá nhập <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="priceInput"  class="form-control col-md-7 col-xs-12" path="priceInput" onclick="document.getElementById('priceInput').value = '' " readonly="true" /> 
                                                </div>
                                                <div id="error-priceInput" style="color:red; font-size: 14px;"></div>
                                            </div>
                                             <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Giá bán <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="priceOutput"  class="form-control col-md-7 col-xs-12" path="priceOutput" onclick="document.getElementById('priceOutput').value = '' "/> 
                                                </div>
                                                <div id="error-priceOutput" style="color:red; font-size: 14px;"></div>
                                            </div>
                                             <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Số lượng <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="quantity"  class="form-control col-md-7 col-xs-12" path="quantity" onclick="document.getElementById('quantity').value = '' "/> 
                                                </div>
                                                <div id="error-quantity" style="color:red; font-size: 14px;"></div>
                                            </div>
<!--                                            <div class="form-group">
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Ảnh sản phẩm<span class="required">*</span>
                                                    </label>
                                                    <div class="col-md-6 col-sm-6  col-xs-12">
                                                    <:input type="file" id="images"  class="form-control col-md-7 col-xs-12" path="images" />
                                                </div>
                                            </div>-->
                                             <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Mô tả <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="discription"  class="form-control col-md-7 col-xs-12" path="discription" /> 
                                                </div>
                                            </div>   
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Danh mục<span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:select id="id" class="form-control col-md-7 col-xs-12"  path="categoryId" >

                                                        <c:forEach items="${listCatalog}" var="catalog">
                                                            <f:option value="${catalog.id}" >${catalog.categoryName}</f:option>
                                                        </c:forEach>
                                                    </f:select>
                                                </div>
                                            </div>
                                                
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Loại hình giảm giá<span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:select id="id" class="form-control col-md-7 col-xs-12"  path="discountId" >

                                                        <c:forEach items="${listDiscount}" var="discount">
                                                            <f:option value="${discount.id}" >${discount.discountName}</f:option>
                                                        </c:forEach>
                                                    </f:select>
                                                </div>
                                            </div>
                                                
<!--                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Trạng thái <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <:select id="isDelete" class="form-control col-md-7 col-xs-12" path="isDelete" >


                                                        <:option value= "0" label="Kích hoạt"/>
                                                        <:option value= "1" label="Không kích hoạt"/>

                                                    </:select>
                                                </div>
                                            </div>-->

                                            <div class="ln_solid"></div>
                                            <div class="form-group">
                                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">

                                                    <button class="btn btn-primary" type="button" onclick="history.go(-1)">Quay lại</button>
                                                    <button type="submit" class="btn btn-success">Lưu</button>
                                                </div>
                                            </div>

                                        </f:form>
                                    </div>
                                </div>
                            </div>

                        </div><!-- /.row -->
                    </div><!-- /.page-content -->
                    </div><!-- /.page-content -->
                </div>
            </div><!-- /.main-content -->
              <script type="text/javascript">
 
            var editor = CKEDITOR.replace( 'productContentDetail' );
            var editor1 = CKEDITOR.replace('ProductContent');
            CKFinder.setupCKEditor(editor,'jsp/ckfinder/');
            CKFinder.setupCKEditor(editor1,'jsp/ckfinder/');
            
 
        </script>    
            <jsp:include page="Footer.jsp"></jsp:include>

        </div><!-- /.main-container -->

    </body>
</html>

