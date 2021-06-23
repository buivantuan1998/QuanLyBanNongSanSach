<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <jsp:include page="Head.jsp"></jsp:include>


        <script src="/QuanLyBanNongSan/jsp/Admin/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="/QuanLyBanNongSan/jsp/Admin/js/jquery.min.js" type="text/javascript"></script>
        <script src="/QuanLyBanNongSan/jsp/Admin/js/jquery.dataTables.min.js" type="text/javascript"></script>
        <script src="/QuanLyBanNongSan/jsp/Admin/js/dataTables.jqueryui.js" type="text/javascript"></script>
        <link href="/QuanLyBanNongSan/jsp/Admin/css/jquery-ui.css" rel="stylesheet" type="text/css"/>
        <link href="/QuanLyBanNongSan/jsp/Admin/css/dataTables.jqueryui.css" rel="stylesheet" type="text/css"/>
        <script src="/QuanLyBanNongSan/jsp/Admin/js/count.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $('#order').dataTable({
                    "pagingType": "full_numbers",
                    "lengthMenu": [[5, 10, 20, -1], [5, 10, 20, "All"]],
                });
            });
        </script>

        <body class="no-skin">
            <div id="navbar" class="navbar navbar-default">
                <script type="text/javascript">
                    try {
                        ace.settings.check('navbar', 'fixed')
                    } catch (e) {
                    }
                </script>
            <jsp:include page="Header.jsp"></jsp:include>


                <div class="main-container" id="main-container">
                    <script type="text/javascript">
                        try {
                            ace.settings.check('main-container', 'fixed')
                        } catch (e) {
                        }
                    </script>

                    <div id="sidebar" class="sidebar                  responsive">
                        <script type="text/javascript">
                            try {
                                ace.settings.check('sidebar', 'fixed')
                            } catch (e) {
                            }
                        </script>

                    </div>
                    <script src="/QuanLyBanNongSan/jsp/Fontend/js/test.js" type="text/javascript"></script>
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
                                    <li class="active">Chi tiết đơn hàng</li>
                                </ul><!-- /.breadcrumb -->

                                <div class="nav-search" id="nav-search">
                                    <form class="form-search">
                                        <span class="input-icon">
                                            <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                                            <i class="ace-icon fa fa-search nav-search-icon"></i>
                                        </span>
                                    </form>
                                </div><!-- /.nav-search -->
                            </div>

                            <div class="page-content">
                                <div class="row">
                                    <div class="col-xs-12">
                                        <!-- PAGE CONTENT BEGINS -->
                                        <div class="space-6"></div>

                                        <div class="row">
                                            <div class="col-sm-10 col-sm-offset-1">
                                                <div class="widget-box transparent">
                                                    <div class="widget-header widget-header-large">
                                                        <h3 class="widget-title grey lighter">
                                                            <i class="ace-icon fa fa-leaf green"></i>
                                                            Chi tiết đơn hàng
                                                        </h3>

                                                        <div class="widget-toolbar no-border invoice-info">
                                                            <span class="invoice-info-label">Invoice:</span>
                                                            <span class="red"># <%= request.getParameter("Id")%></span>

                                                        <br />
                                                        <span class="invoice-info-label">Date:</span>
                                                        <span class="blue">${orderDetail.get(0).createdDate}</span>
                                                    </div>

                                                    <div class="widget-toolbar hidden-480">
                                                        <!--                                                        <a href="#">
                                                                                                                    <i class="ace-icon fa fa-print"></i>
                                                                                                                </a>-->
                                                        <a onclick="window.print()" class="nounderline print-link" href="javascript:void(0)">
                                                            <div class="print-link__block clearfix">
                                                                <i class="ace-icon fa fa-print" aria-hidden="true"></i>

                                                            </div>
                                                        </a>
                                                       
                                                    </div>
                                                </div>

                                                <div class="widget-body">
                                                    <div class="widget-main padding-24">
                                                        <div class="row">
                                                            <div class="col-sm-6">
                                                                <div class="row">
                                                                    <div class="col-xs-11 label label-lg label-info arrowed-in arrowed-right">
                                                                        <b>Hình thức thanh toán</b>
                                                                    </div>
                                                                </div>

                                                                <div>
                                                                    <ul class="list-unstyled spaced">
                                                                        <li>
                                                                            <i class="ace-icon fa fa-caret-right blue"></i>Thanh toán bằng tiền mặt khi giao hàng
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div><!-- /.col -->

                                                            <div class="col-sm-6">
                                                                <div class="row">
                                                                    <div class="col-xs-11 label label-lg label-success arrowed-in arrowed-right">
                                                                        <b>Thông tin khách hàng</b>
                                                                    </div>
                                                                </div>

                                                                <div>
                                                                    <ul class="list-unstyled  spaced">
                                                                        <li>
                                                                            <i class="ace-icon fa fa-caret-right green"></i>Tên: ${orderDetail.get(0).name}
                                                                        </li>

                                                                        <li>
                                                                            <i class="ace-icon fa fa-caret-right green"></i>Địa chỉ: ${orderDetail.get(0).address}
                                                                        </li>

                                                                        <li>
                                                                            <i class="ace-icon fa fa-caret-right green"></i>Số điện thoại: ${orderDetail.get(0).phone}
                                                                        </li>

                                                                        <li class="divider"></li>

                                                                        <li>
                                                                            <i class="ace-icon fa fa-caret-right green"></i>
                                                                            Email: ${orderDetail.get(0).email}
                                                                        </li>
                                                                    </ul>
                                                                </div>
                                                            </div><!-- /.col -->
                                                        </div><!-- /.row -->

                                                        <div class="space"></div>

                                                        <div>
                                                            <table class="table table-striped table-bordered">
                                                                <thead>
                                                                    <tr>
                                                                        <th class="center">ProductId</th>
                                                                        <th>ProductName</th>
                                                                        <th class="hidden-xs">Image</th>
                                                                        <th>CreateDate</th>
                                                                        <th class="hidden-480">Quantity</th>
                                                                        <th>Price</th>
                                                                        <th>Amount</th>

                                                                    </tr>
                                                                </thead>

                                                                <tbody>
                                                                    <c:forEach items="${orderDetail}" var="od">
                                                                        <tr>
                                                                            <td class="center">1</td>

                                                                            <td>
                                                                                ${od.productName}
                                                                            </td>
                                                                            <td class="hidden-xs">
                                                                                <img src="/QuanLyBanNongSan/jsp/Fontend/images/${od.images}" class="img-fix3" style="width:100px;height:100px;">
                                                                            </td>
                                                                            <td>${od.createdDate}</td>
                                                                            <td>${od.quantity}</td>
                                                                            <td>${od.price}</td>
                                                                            <td>${od.amount}</td>

                                                                        </tr>
                                                                    </c:forEach>

                                                                </tbody>
                                                            </table>
                                                        </div>

                                                        <div class="hr hr8 hr-double hr-dotted"></div>

                                                        <div class="row">
                                                            <div class="col-sm-5 pull-right">
                                                                <h4 class="pull-right">
                                                                    Total amount :
                                                                    <span class="price product-price">${orderDetail.get(0).totalAmount}</span>
                                                                </h4>
                                                                
                                                            </div>
                                                            <div class="col-sm-7 pull-left"> Extra Information </div>
                                                        </div>

                                                        <div class="space-6"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- PAGE CONTENT ENDS -->
                                </div><!-- /.col -->
                            </div><!-- /.row -->
                        </div><!-- /.page-content -->
                    </div>
                </div><!-- /.main-content -->

                <div class="footer">
                    <div class="footer-inner">
                        <div class="footer-content">
                            <span class="bigger-120">
                                <span class="blue bolder">Ace</span>
                                POLO &copy; 2021-2026
                            </span>
                            &nbsp; &nbsp;
                            <span class="action-buttons">
                                <a href="#">
                                    <i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
                                </a>
                                <a href="#">
                                    <i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
                                </a>
                                <a href="#">
                                    <i class="ace-icon fa fa-rss-square orange bigger-150"></i>
                                </a>
                            </span>
                        </div>
                    </div>
                </div>
                <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
                    <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
                </a>
            </div>
            <script src="assets/js/jquery.2.1.1.min.js"></script>
            <script type="text/javascript">
                                                                window.jQuery || document.write("<script src='assets/js/jquery.min.js'>" + "<" + "/script>");
            </script>
            <script type="text/javascript">
                if ('ontouchstart' in document.documentElement)
                    document.write("<script src='assets/js/jquery.mobile.custom.min.js'>" + "<" + "/script>");
            </script>
            <script src="assets/js/bootstrap.min.js"></script>
            <script src="assets/js/ace-elements.min.js"></script>
            <script src="assets/js/ace.min.js"></script>
    </body>
</html>
