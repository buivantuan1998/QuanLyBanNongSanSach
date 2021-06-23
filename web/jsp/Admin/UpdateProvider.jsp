
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
        <script>
            function validate() {
                var providerName = document.getElementById("providerName").value;
                var address = document.getElementById("address").value;
                var email = document.getElementById("email").value;
                var sdt = document.getElementById("phone").value;
                var pattern = /^([a-zA-Z0-9_.-])+@([a-zA-Z0-9_.-])+\.([a-zA-Z])+([a-zA-Z])+/;
                if (providerName != "" && address != "" && email != "" && sdt != "" && pattern.test(email) == true) {
                    return true;
                } else {
                    if (providerName == "") {
                        swal("Bạn phải nhập tên  nhà cung cấp");
                        document.getElementById("providerName").focus();
                        return false;
                    }
                    if (address == "") {
                        swal("Bạn phải nhập địa chỉ nhà cung cấp.");
                        document.getElementById("address").focus();
                        return false;
                    }
                    if (sdt == "") {
                        swal("Bạn phải nhập số điện thoại nhà cung cấp.");
                        document.getElementById("email").focus();
                        return false;
                    }
                    if (email == "") {
                        swal("Bạn phải nhập email nhà cung cấp.");
                        document.getElementById("email").focus();
                        return false;
                    } else {
                        if (!pattern.test(email)) {
                            swal("Email sai định dạng.");
                            document.getElementById("email").focus();
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
                                            <h4>Quản lí nhà cung cấp <small>  >> Sửa thông tin nhà cung cấp</small></h4>
                                            <div class="clearfix"></div>
                                        <f:form class="form-horizontal form-label-left" action="updateProvider.htm" commandName="updateProvider" onsubmit="return validate()">
                                            <div class="form-group message">
                                                 ${message}
                                             </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Mã nhà cung cấp <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="providerId" class="form-control col-md-7 col-xs-12" path="providerId" readonly="readonly"/>
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Tên nhà cung cấp <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="providerName" class="form-control col-md-7 col-xs-12" path="providerName" />
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Địa chỉ <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="address"  class="form-control col-md-7 col-xs-12" path="address" /> 
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Số điện thoại<span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="phone"  class="form-control col-md-7 col-xs-12" path="phone" /> 
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Email<span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:input type="text" id="email"  class="form-control col-md-7 col-xs-12" path="email" /> 
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="last-name">Trạng thái <span class="required">*</span>
                                                </label>
                                                <div class="col-md-6 col-sm-6 col-xs-12">
                                                    <f:select id="status" class="form-control col-md-7 col-xs-12" path="status" >


                                                        <f:option value="True" label="Khích hoạt"/>
                                                        <f:option value="False" label="Không kích hoạt"/>

                                                    </f:select>
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
                </div>
            </div><!-- /.main-content -->

            <jsp:include page="Footer.jsp"></jsp:include>

        </div><!-- /.main-container -->

    </body>
</html>

