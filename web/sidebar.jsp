<%--
  Created by IntelliJ IDEA.
  User: 别点我我怕疼
  Date: 2017/10/13
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- Sidebar user panel -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>潘继伟</p>
                <a href="#"><i class="fa fa-circle text-success"></i> 在线</a>
            </div>
        </div>
        <!-- search form -->
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="keywords" class="form-control" placeholder="搜索...">
                <span class="input-group-btn">
                    <button type="submit" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
        </form>
        <!-- /.search form -->
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu" data-widget="tree">
            <li class="header" style="color: #BBB;">主菜单</li>
            <%--总览--%>
            <li class="active">
                <a href="javascript:void(0);" onclick="changeContent('content_dashboard.jsp','总览')">
                    <i class="fa fa-dashboard"></i>
                    <span>总览</span>
                </a>
            </li>
            <%--个人办公--%>
            <li class="treeview">
                <a href="javascript:void(0);">
                    <i class="fa fa-briefcase"></i>
                    <span>个人办公</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="javascript:void(0);"><i class="fa fa-circle-o"></i> 项目列表1</a></li>
                    <li><a href="javascript:void(0);"><i class="fa fa-circle-o"></i> 项目列表2</a></li>
                </ul>
            </li>
            <%--审批流程--%>
            <li class="treeview">
                <a href="javascript:void(0);">
                    <i class="fa fa-exchange"></i>
                    <span>审批流程</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="javascript:void(0);"><i class="fa fa-circle-o"></i> 项目列表1</a></li>
                    <li><a href="javascript:void(0);"><i class="fa fa-circle-o"></i> 项目列表2</a></li>
                </ul>
            </li>
            <%--系统管理--%>
            <li class="treeview">
                <a href="javascript:void(0);">
                    <i class="fa fa-gear"></i>
                    <span>系统管理</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="javascript:void(0);"
                           onclick="changeContent('${pageContext.request.contextPath}/departmentAction_showAllDepartment','部门管理')">
                        <i class="fa fa-circle-o"></i> 部门管理</a>
                    </li>
                    <li><a href="javascript:void(0);"><i class="fa fa-circle-o"></i> 岗位管理</a></li>
                    <li><a href="javascript:void(0);"><i class="fa fa-circle-o"></i> 用户管理</a></li>
                </ul>
            </li>
            <%--个人设置--%>
            <li class="treeview">
                <a href="javascript:void(0);">
                    <i class="fa fa-user"></i>
                    <span>个人资料</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="javascript:void(0);"><i class="fa fa-circle-o"></i> 项目列表1</a></li>
                    <li><a href="javascript:void(0);"><i class="fa fa-circle-o"></i> 项目列表2</a></li>
                </ul>
            </li>
            <%--表格系统--%>
            <li class="treeview">
                <a href="javascript:void(0);">
                    <i class="fa fa-table"></i> <span>表格</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="javascript:void(0);" onclick="changeContent('content_table_simple.jsp','简单表格')"><i class="fa fa-circle-o"></i> 简单表格</a></li>
                    <li><a href="javascript:void(0);" onclick="changeContent('content_table_data.jsp','数据表格')"><i class="fa fa-circle-o"></i> 数据表格</a></li>
                </ul>
            </li>
            <%--报表系统--%>
            <li class="treeview">
                <a href="javascript:void(0);">
                    <i class="fa fa-pie-chart"></i>
                    <span>报表</span>
                    <span class="pull-right-container">
                        <i class="fa fa-angle-left pull-right"></i>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="javascript:void(0);" onclick="changeContent('content_charts_chartjs.jsp','ChartJS')"><i class="fa fa-circle-o"></i> ChartJS</a></li>
                    <li><a href="javascript:void(0);" onclick="changeContent('content_charts_morris.jsp','Morris')"><i class="fa fa-circle-o"></i> Morris</a></li>
                    <li><a href="javascript:void(0);" onclick="changeContent('content_charts_flot.jsp','Flot')"><i class="fa fa-circle-o"></i> Flot</a></li>
                    <li><a href="javascript:void(0);" onclick="changeContent('content_charts_inline.jsp','InlineCharts')"><i class="fa fa-circle-o"></i> Inline charts</a></li>
                </ul>
            </li>
            <%--表单系统--%>
            <li class="treeview">
                <a href="javascript:void(0);">
                    <i class="fa fa-edit"></i> <span>表单</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="pages/forms/general.html"><i class="fa fa-circle-o"></i> 普通表单</a></li>
                    <li><a href="pages/forms/advanced.html"><i class="fa fa-circle-o"></i> 高级表单</a></li>
                    <li><a href="pages/forms/editors.html"><i class="fa fa-circle-o"></i> 文本编辑器</a></li>
                </ul>
            </li>
            <%--邮箱系统--%>
            <li>
                <a href="javascript:void(0);" onclick="changeContent('content_mail.jsp','邮箱')">
                    <i class="fa fa-envelope"></i> <span>邮箱</span>
                    <span class="pull-right-container">
              <small class="label pull-right bg-yellow">12</small>
              <small class="label pull-right bg-green">16</small>
              <small class="label pull-right bg-red">5</small>
            </span>
                </a>
            </li>
            <%--布局--%>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-files-o"></i>
                    <span>布局选项</span>
                    <span class="pull-right-container">
                        <span class="label label-primary pull-right">4</span>
                    </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="pages/layout/top-nav.html"><i class="fa fa-circle-o"></i> 顶部导航栏</a></li>
                    <li><a href="pages/layout/boxed.html"><i class="fa fa-circle-o"></i> 盒子模式</a></li>
                    <li><a href="pages/layout/fixed.html"><i class="fa fa-circle-o"></i> 固定模式</a></li>
                    <li><a href="pages/layout/collapsed-sidebar.html"><i class="fa fa-circle-o"></i> 折叠边栏</a></li>
                </ul>
            </li>
            <%--控件--%>
            <li>
                <a href="pages/widgets.html">
                    <i class="fa fa-th"></i> <span>控件</span>
                    <span class="pull-right-container">
              <small class="label pull-right bg-green">new</small>
            </span>
                </a>
            </li>
            <%--UI元素--%>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-laptop"></i>
                    <span>UI元素</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="pages/UI/general.html"><i class="fa fa-circle-o"></i> General</a></li>
                    <li><a href="pages/UI/icons.html"><i class="fa fa-circle-o"></i> Icons</a></li>
                    <li><a href="pages/UI/buttons.html"><i class="fa fa-circle-o"></i> Buttons</a></li>
                    <li><a href="pages/UI/sliders.html"><i class="fa fa-circle-o"></i> Sliders</a></li>
                    <li><a href="pages/UI/timeline.html"><i class="fa fa-circle-o"></i> Timeline</a></li>
                    <li><a href="pages/UI/modals.html"><i class="fa fa-circle-o"></i> Modals</a></li>
                </ul>
            </li>
            <%--日历系统--%>
            <li>
                <a href="javascript:void(0);" onclick="changeContent('content_calendar.jsp','日历')">
                    <i class="fa fa-calendar"></i> <span>日历</span>
                    <span class="pull-right-container">
              <small class="label pull-right bg-red">3</small>
              <small class="label pull-right bg-blue">17</small>
            </span>
                </a>
            </li>
            <%--案例--%>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-folder"></i> <span>案例</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="pages/examples/invoice.html"><i class="fa fa-circle-o"></i> Invoice</a></li>
                    <li><a href="pages/examples/profile.html"><i class="fa fa-circle-o"></i> Profile</a></li>
                    <li><a href="pages/examples/login.html"><i class="fa fa-circle-o"></i> Login</a></li>
                    <li><a href="pages/examples/register.html"><i class="fa fa-circle-o"></i> Register</a></li>
                    <li><a href="pages/examples/lockscreen.html"><i class="fa fa-circle-o"></i> Lockscreen</a></li>
                    <li><a href="pages/examples/404.html"><i class="fa fa-circle-o"></i> 404 Error</a></li>
                    <li><a href="pages/examples/500.html"><i class="fa fa-circle-o"></i> 500 Error</a></li>
                    <li><a href="pages/examples/blank.html"><i class="fa fa-circle-o"></i> Blank Page</a></li>
                    <li><a href="pages/examples/pace.html"><i class="fa fa-circle-o"></i> Pace Page</a></li>
                </ul>
            </li>
            <%--层次树结构--%>
            <li class="treeview">
                <a href="#">
                    <i class="fa fa-share"></i> <span>层次树</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
                    <li class="treeview">
                        <a href="#"><i class="fa fa-circle-o"></i> Level One
                            <span class="pull-right-container">
                  <i class="fa fa-angle-left pull-right"></i>
                </span>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="#"><i class="fa fa-circle-o"></i> Level Two</a></li>
                            <li class="treeview">
                                <a href="#"><i class="fa fa-circle-o"></i> Level Two
                                    <span class="pull-right-container">
                      <i class="fa fa-angle-left pull-right"></i>
                    </span>
                                </a>
                                <ul class="treeview-menu">
                                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                    <li><a href="#"><i class="fa fa-circle-o"></i> Level Three</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="fa fa-circle-o"></i> Level One</a></li>
                </ul>
            </li>
            <%--文档--%>
            <li><a href="https://adminlte.io/docs"><i class="fa fa-book"></i> <span>文档</span></a></li>
            <li class="header">标签</li>
            <li><a href="#"><i class="fa fa-circle-o text-red"></i> <span>重要</span></a></li>
            <li><a href="#"><i class="fa fa-circle-o text-yellow"></i> <span>警告</span></a></li>
            <li><a href="#"><i class="fa fa-circle-o text-aqua"></i> <span>信息</span></a></li>
        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
