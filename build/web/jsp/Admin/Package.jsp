
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        $('#package').dataTable({
           "pagingType": "full_numbers",
           "lengthMenu": [[5, 10, 20, -1], [5, 10, 20, "All"]],
         });
    });
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
                                <li class="active">Dashboard</li>
                            </ul><!-- /.breadcrumb -->


                        </div>

                        <div class="page-content">

                            <div class="row">
                                <div class="col-xs-12">
                                    <div class="table-header">
                                        Danh s??ch v?? ti???n
                                    </div>

                                    <div>    
                                       <table id="package" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                              <thead>
                                                <tr>
                                                
                                                    <th>M?? v?? ti???n</th>
                                                    <th>T??n v?? ti???n</th>
                                                    <th class="hidden-480">T???ng ti???n</th>

                                                    <th>
                                                        <i class="ace-icon fa fa-clock-o bigger-110 hidden-480"></i>
                                                       M?? ng?????i d??ng
                                                    </th>
                                                   
                                                    <th class="hidden-480">Tr???ng th??i</th>

                                                    <th></th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <c:forEach items="${listPackage}" var="package">
                                                <tr>
                                                  

                                                    <td>
                                                        ${package.packageId}
                                                    </td>
                                                    <td>${package.packageName}</td>
                                                    <td class="hidden-480"> <fmt:formatNumber currencyCode="3"> ${package.amount} </fmt:formatNumber></td>
                                                    <td>${package.userId}</td>
                                                 
                                                     <c:if test="${package.status == 'True'}">
                                                    <td>
                                                      K??ch ho???t
                                                    </td>
                                                    </c:if>
                                                     <c:if test="${package.status == 'False'}">
                                                    <td>
                                                      Kh??ng kh??ch ho???t
                                                    </td>
                                                    </c:if>
                                                    
                                                    
                                                     
                                                    <td>
                                                        <div class="hidden-sm hidden-xs action-buttons">
                                                            <a class="blue" href="#">
                                                                <i class="ace-icon fa fa-search-plus bigger-130"></i>
                                                            </a>

                                                            <a class="green" href="initUpdatePackage.htm?Id=${package.packageId}">
                                                                <i class="ace-icon fa fa-pencil bigger-130"></i>
                                                            </a>

                                                            <a class="red" href="deletePackage.htm?Id=${package.packageId}">
                                                                <i class="ace-icon fa fa-trash-o bigger-130"></i>
                                                            </a>
                                                        </div>

                                                    
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                                
                                            </tbody>
                                        </table>   
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
