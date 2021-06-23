

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="sidebar" class="sidebar responsive">
    <script type="text/javascript">
        try {
            ace.settings.check('sidebar', 'fixed')
        } catch (e) {
        }
    </script>

    <div class="sidebar-shortcuts" id="sidebar-shortcuts">
        <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
            <button class="btn btn-success">
                <i class="ace-icon fa fa-signal"></i>
            </button>

            <button class="btn btn-info">
                <i class="ace-icon fa fa-pencil"></i>
            </button>

            <button class="btn btn-warning">
                <i class="ace-icon fa fa-users"></i>
            </button>

            <button class="btn btn-danger">
                <i class="ace-icon fa fa-cogs"></i>
            </button>
        </div>

        <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>

            <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span>

            <span class="btn btn-danger"></span>
        </div>
    </div><!-- /.sidebar-shortcuts -->

    <ul class="nav nav-list">
        <li class="active">
            <a href="<%=request.getContextPath()%>/HomeBackend.htm">
                <i class="menu-icon fa fa-home"></i>
                <span class="menu-text"> Trang chủ </span>
            </a>

            <b class="arrow"></b>
        </li>

        <li class="">

            <ul class="submenu">
               

                <li class="">
                     <a href="#" class="dropdown-toggle">
                       
                        <span class="menu-text"> Banner</span>

                        <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>
                    <ul class="submenu">
                        <li class="">
                            <a href="<%=request.getContextPath()%>/getAllBanner.htm">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Danh sách Banner
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="<%=request.getContextPath()%>/initInsertBanner.htm">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Thêm mới Banner
                            </a>

                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>
            </ul>
        </li>
<!--        <li>
            <a href="<%=request.getContextPath()%>/getAllFeeback.htm">
                            <i class="menu-icon fa fa-list"></i>
                             <span class="menu-text"> Quản lí bình luận </span>
             </a>
        </li>-->

        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"> Quản lí danh mục </span>

                <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>

            <ul class="submenu">
                <li class="">
                    <a href="<%=request.getContextPath()%>/AllCatalog.htm">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Danh sách danh mục
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="<%=request.getContextPath()%>/InsertCatalog.htm">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Thêm mới
                    </a>

                    <b class="arrow"></b>
                </li>
            </ul>
        </li>

        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-table"></i>
                <span class="menu-text"> Quản lí sản phẩm </span>

                <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>

            <ul class="submenu">
                <li class="">
                    <a href="#" class="dropdown-toggle">
                       
                        <span class="menu-text"> Sản phẩm</span>

                        <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>
                    <ul class="submenu">
                        <li class="">
                            <a href="<%=request.getContextPath()%>/AllProduct.htm">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Danh sách sản phẩm
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="<%=request.getContextPath()%>/InsertProduct.htm">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Thêm mới sản phẩm
                            </a>

                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>

              

              

            </ul>
        </li>




        <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-user"></i>
                <span class="menu-text"> Quản lí người dùng </span>

                <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>

            <ul class="submenu">
                <li class="">
                     <a href="" class="dropdown-toggle">
                       
                        <span class="menu-text"> Người dùng </span>

                        <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>
                    <ul class="submenu">
                        <li class="">
                            <a href="<%=request.getContextPath()%>/AllUser.htm">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Danh sách người dùng
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="<%=request.getContextPath()%>/InsertUser.htm">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Thêm mới người dùng
                            </a>

                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>

                <li class="">
                   <a href="#" class="dropdown-toggle">
                       
                        <span class="menu-text"> Nhóm người dùng </span>

                        <b class="arrow fa fa-angle-down"></b>
                    </a>

                    <b class="arrow"></b>
                    <ul class="submenu">
                        <li class="">
                            <a href="<%=request.getContextPath()%>/AllGroup.htm">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Danh sách nhóm
                            </a>

                            <b class="arrow"></b>
                        </li>

                        <li class="">
                            <a href="<%=request.getContextPath()%>/InsertGroup.htm">
                                <i class="menu-icon fa fa-caret-right"></i>
                                Thêm mới nhóm
                            </a>

                            <b class="arrow"></b>
                        </li>
                    </ul>
                </li>


            </ul>
        </li>
        
         <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-list"></i>
                <span class="menu-text"> Quản lí đơn hàng </span>

                <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>

            <ul class="submenu">
                <li class="">
                    <a href="<%=request.getContextPath()%>/AllOrder.htm">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Danh sách đơn hàng
                    </a>

                    <b class="arrow"></b>
                </li>

             
            </ul>
        </li>
<!--          <li class="">
            <a href="#" class="dropdown-toggle">
                <i class="menu-icon fa fa-book"></i>
                <span class="menu-text"> Quản lí tin tức </span>

                <b class="arrow fa fa-angle-down"></b>
            </a>

            <b class="arrow"></b>

            <ul class="submenu">
                <li class="">
                    <a href="<%=request.getContextPath()%>/getAllPost.htm">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Danh sách tin tức
                    </a>

                    <b class="arrow"></b>
                </li>

                <li class="">
                    <a href="<%=request.getContextPath()%>/initInsertPost.htm">
                        <i class="menu-icon fa fa-caret-right"></i>
                        Thêm mới tin tức
                    </a>

                    <b class="arrow"></b>
                </li>
            </ul>
        </li>-->
       

    </ul><!-- /.nav-list -->

    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
        <i class="ace-icon fa fa-angle-double-left" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
    </div>

    <script type="text/javascript">
        try {
            ace.settings.check('sidebar', 'collapsed')
        } catch (e) {
        }
    </script>
</div>