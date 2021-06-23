
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
                                            <h4>Quản lí sản phẩm <small>  >> Cập nhật ảnh sản phẩm</small></h4>
                                            <div class="clearfix"></div>
                                        <f:form class="form-horizontal form-label-left" action="UpdateImageProduct.htm" commandName="updateImageProduct" onsubmit="return validate()" method="POST">
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
                                                    <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Ảnh sản phẩm<span class="required">*</span>
                                                    </label>
                                                    <div class="col-md-6 col-sm-6  col-xs-12">
                                                    <f:input type="file" id="images"  class="form-control col-md-7 col-xs-12" path="images" />
                                                </div>
                                            </div>
                                             

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

