

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <jsp:include page="Head.jsp"></jsp:include>
    <link rel="stylesheet" href="/SpringFrameworks/jsp/Admin/css/bootstrap.min.css" />
    <link href="/SpringFrameworks/jsp/Admin/css/sweetalert.css" rel="stylesheet" type="text/css"/>
     <script src="/SpringFrameworks/jsp/Admin/js/sweetalert.min.js" type="text/javascript"></script>
        <script>
            function validate() {
                var paymentTypeName = document.getElementById("paymentTypeName").value;
                var des = document.getElementById("descriptions").value;
                if (paymentTypeName != "" && des != "") {
                    return true;
                } else {
                    if (paymentTypeName == "") {
                        swal("Bạn phải nhập tên hình thức thanh toán.");
                        document.getElementById("paymentTypeName").focus();
                        return false;
                    }
                      
                    if (des == "") {
                        swal("Bạn phải nhập mô tả.");
                        document.getElementById("descriptions").focus();
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
                                            <h4>Quản lí hình thức thanh toán <small>  >> Thêm mới</small></h4>
                                            <div class="clearfix"></div>
                                        <f:form class="form-horizontal form-label-left" action="insertPaymentType.htm" commandName="newPaymentType" onsubmit="return validate()">
                                             <div class="form-group message">
                                                 ${message}
                                             </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Tên hình hình thức thanh toán <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="paymentTypeName" class="form-control col-md-7 col-xs-12" path="paymenTypeName" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Mô tả <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="descriptions"  class="form-control col-md-7 col-xs-12" path="descriptions" /> 
                                                </div>
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

