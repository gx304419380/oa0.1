<%--
  Created by IntelliJ IDEA.
  User: 别点我我怕疼
  Date: 2017/10/13
  Time: 11:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        部门列表
        <small>高级表单</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
        <li><a href="#">表单</a></li>
        <li class="active">数据表单</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <div class="col-xs-12">
            <div class="box">
                <div class="box-header">
                    <div class="col-xs-6">
                        <h3 class="box-title">数据表（全特性）</h3>
                    </div>
                    <div class="col-xs-6 text-right">
                        <button class="btn btn-default"
                                onclick="changeContent('${pageContext.request.contextPath}/departmentAction_addDepartmentUI','添加部门')">
                            <i class="fa fa-plus"></i>
                            添加部门
                        </button>
                    </div>

                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <table id="example1" class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th class="text-center">部门编号</th>
                            <th class="text-center">部门名称</th>
                            <th class="text-center">部门描述</th>
                            <th class="text-center">操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="dept" items="${departments}">
                            <tr>
                                <td>${dept.did}</td>
                                <td>${dept.name}</td>
                                <td>${dept.description}</td>
                                <td class="text-center">
                                    <a href="javascript:void(0);" class="btn btn-danger" onclick="deleteDepartment('${dept.did}')">删除</a>
                                    <a href="javascript:scrollTo(0, 0);" class="btn btn-info" onclick="updateDepartment('${dept.did}')">修改</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                        <tfoot>
                        <tr>
                            <th class="text-center">部门编号</th>
                            <th class="text-center">部门名称</th>
                            <th class="text-center">部门描述</th>
                            <th class="text-center">操作</th>
                        </tr>
                        </tfoot>
                    </table>
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->
        </div>
        <!-- /.col -->
    </div>
    <!-- /.row -->
</section>
<!-- /.content -->
<script>
    function deleteDepartment(did) {
        if (confirm("确认要删除吗？")) {
            changeContent("${pageContext.request.contextPath}/departmentAction_deleteDepartment?did="+did,"部门管理");
        }
    }
    function updateDepartment(did) {
        changeContent("${pageContext.request.contextPath}/departmentAction_updateDepartmentUI?did="+did,'修改部门信息');
    }
    $(function () {
//        alert("ajax loaded js!");
        $('#example1').DataTable({
            "oLanguage": {
                "sLengthMenu": "每页显示 _MENU_ 条记录",
                "sZeroRecords": "抱歉， 没有找到",
                "sInfo": "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
                "sInfoEmpty": "没有数据",
                "sInfoFiltered": "(从 _MAX_ 条数据中检索)",
                "oPaginate": {
                    "sFirst": "首页",
                    "sPrevious": "前一页",
                    "sNext": "后一页",
                    "sLast": "尾页"
                }
            }
        })
//        $('#example2').DataTable({
//            'paging'      : true,
//            'lengthChange': false,
//            'searching'   : false,
//            'ordering'    : true,
//            'info'        : true,
//            'autoWidth'   : false,
//            "oLanguage": {
//                "sLengthMenu": "每页显示 _MENU_ 条记录",
//                "sZeroRecords": "抱歉， 没有找到",
//                "sInfo": "从 _START_ 到 _END_ /共 _TOTAL_ 条数据",
//                "sInfoEmpty": "没有数据",
//                "sInfoFiltered": "(从 _MAX_ 条数据中检索)",
//                "oPaginate": {
//                    "sFirst": "首页",
//                    "sPrevious": "前一页",
//                    "sNext": "后一页",
//                    "sLast": "尾页"
//                }
//            }
//        })
    })
</script>