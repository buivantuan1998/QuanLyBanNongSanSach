
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <jsp:include page="Head.jsp"></jsp:include>
    <script src="js/jquery-2.1.4.min.js" type="text/javascript"></script>
    <link href="/SpringFrameworks/jsp/Admin/css/sweetalert.css" rel="stylesheet" type="text/css"/>
     <script src="/SpringFrameworks/jsp/Admin/js/sweetalert.min.js" type="text/javascript"></script>
     <script src="/SpringFrameworks/jsp/ckeditor/ckeditor.js" type="text/javascript"></script>
     <script src="/SpringFrameworks/jsp/ckfinder/ckfinder.js" type="text/javascript"></script>
        <script>
            function validate() {
                var cardSeri = document.getElementById("cardSeri").value;
                var cardNumber = document.getElementById("cardNumber").value;
                var price = document.getElementById("priceUnit")
                if (cardSeri != "" && cardNumber != "" && price != 0) {
                    return true;
                } else {
                    if (cardSeri == "") {
                        swal("Bạn phải nhập số seri");
                        document.getElementById("cardSeri").focus();
                        return false;
                    }
                    if (cardNumber == "") {
                        swal("Bạn phải nhập số màu.");
                        document.getElementById("cardNumber").focus();
                        return false;
                    }
                    if(price == 0){
                        
                        swal("Bạn phải nhập mệnh giá").focus();
                                // đi qua vì bọn thôi đi đường khác
                          document.getElementById("user").focus();
                        return false;
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
                                            <h4>Quản lí bài viết<small>  >> Thêm mới</small></h4>
                                            <div class="clearfix"></div>
                                        <f:form class="form-horizontal form-label-left" action="insertPost.htm" commandName="newPost" onsubmit="return validate()">
                                            <div class="form-group message">
                                                ${message}
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Tiêu đề <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="postTitle" class="form-control col-md-7 col-xs-12" path="postTitle" />
                                                </div>
                                            </div>
                                                <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Danh mục tin tức <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:select id="catalogPost" class="form-control col-md-7 col-xs-12" path="catalogPostId" >
                                                        <f:option value="0" >---- Chọn danh mục cha ---</f:option>
                                                        <c:forEach items="${listCatalogPost}" var="catalog">
                                                            <f:option value="${catalog.catalogPostId}" >${catalog.catalogPostName}</f:option>
                                                        </c:forEach>
                                                    </f:select>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Nội dung <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:textarea type="text" id="content"  class="form-control col-md-7 col-xs-12 textarea" path="content" /> 
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Nội dung chi tiết <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:textarea type="text"  name="contentDetail" id="contentDetail"  class="form-control col-md-7 col-xs-12" path="contentDetail" /> 
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Ảnh <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="file" id="images"  class="form-control col-md-7 col-xs-12" path="images" /> 
                                                </div>
                                            </div>
                                             <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Độ ưu tiên hiển thị <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="displayNumber"  class="form-control col-md-7 col-xs-12" path="displayNumber" /> 
                                                </div>
                                            </div>

                                            <div class="ln_solid"></div>
                                            <div class="form-group">
                                                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                                                    <button class="btn btn-primary" type="reset">Hủy</button>
                                                    <button class="btn btn-primary" type="button" onclick="history.go(-1)">Quay lại</button>
                                                    <button type="submit" class="btn btn-success">Thêm mới</button>
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
 
            var editor = CKEDITOR.replace( 'contentDetail' );
            CKFinder.setupCKEditor(editor,'jsp/ckfinder/')
 
        </script>    



            <jsp:include page="Footer.jsp"></jsp:include>

        </div><!-- /.main-container -->

    </body>
</html>

