
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <jsp:include page="Head.jsp"></jsp:include>
        <link rel="stylesheet" href="/SpringFrameworks/jsp/Admin/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

        <link href="/SpringFrameworks/jsp/Admin/css/sweetalert.css" rel="stylesheet" type="text/css"/>
        <script src="/SpringFrameworks/jsp/Admin/js/sweetalert.min.js" type="text/javascript"></script>
        <script>
            function validate() {
              
                var images = document.getElementById("images").value;
                var dis = document.getElementById("displayNumber").value;
                if (images != "" && dis != "") {
                    return true;
                } else {
                    if (images == "") {
                        swal("Bạn phải thêm ảnh banner.");
                        document.getElementById("images").focus();
                        return false;
                    }
                 
                    if(dis == ""){
                        
                         swal("Bạn phải nhập mức độ ưu tiên hiển thi của danh mục.");
                        document.getElementById("displayNumber").focus();
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
                                    <a href="#">Trang chủ</a>
                                </li>
                                <li class="active">Quản lí Banner</li>
                            </ul><!-- /.breadcrumb -->


                        </div>

                        <div class="page-content">

                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="x_panel">
                                        <div class="x_title">
                                            <h4>Quản lí Banner <small>  >> Thêm mới</small></h4>
                                            <div class="clearfix"></div>
                                        <f:form class="form-horizontal form-label-left" action="insertBanner.htm" commandName="newBanner" enctype="multipart/form-data"  onsubmit="return validate()">
                                            <div class="form-group message">
                                                ${message}
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Ảnh <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="file" id="images" class="form-control col-md-7 col-xs-12" path="images" />
                                                </div>
                                            </div>
                                                <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Độ ưu tiên hiển thị <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="displayNumber" class="form-control col-md-7 col-xs-12" path="displayNumber" />
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

            <jsp:include page="Footer.jsp"></jsp:include>

        </div><!-- /.main-container -->

    </body>
</html>

