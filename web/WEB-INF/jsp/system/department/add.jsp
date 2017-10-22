<%--
  Created by IntelliJ IDEA.
  User: 别点我我怕疼
  Date: 2017/10/19
  Time: 20:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Content Header (Page header) -->
<section class="content-header">
    <h1>
        添加部门
        <small>test</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> 主页</a></li>
        <li><a href="#">系统管理</a></li>
        <li><a href="#">部门管理</a></li>
        <li class="active">添加部门</li>
    </ol>
</section>

<!-- Main content -->
<section class="content">
    <div class="row">
        <!-- general form elements disabled -->
        <div class="box box-warning">
            <div class="box-header with-border">
                <h3 class="box-title">部门信息</h3>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
                <form id="form" role="form" method="post" onsubmit="return submitForm(this)">
                    <!-- text input -->
                    <div class="form-group">
                        <label>部门名称</label>
                        <input type="text" class="form-control" name="name" placeholder="名称">
                    </div>

                    <!-- textarea -->
                    <div class="form-group">
                        <label>部门描述</label>
                        <textarea class="form-control" rows="3" name="description" placeholder="描述"></textarea>
                    </div>

                    <div class="box-footer">
                        <button type="button" class="btn btn-danger">清空</button>
                        <button type="submit" class="btn btn-info pull-right">提交</button>
                    </div>
                </form>
            </div>
            <!-- /.box -->
        </div>
    </div>
    <!-- /.row -->
</section>
<!-- /.content -->
<script type="text/javascript">
    function submitForm(obj) {
        if (obj.name.value == "") {
            alert("请输入部门名称！");
            return false;
        }
        if (obj.description.value == "") {
            alert("请输入部门描述！");
            return false;
        }
        $.post(
            "${pageContext.request.contextPath}/departmentAction_addDepartment",
            {"name":obj.name.value, "description":obj.description.value},
            function (data) {
                if (data == "success") {
                    var tabId = "添加部门";
                    $("#tabs-head .active").removeClass("active");
                    $("#tabs-content .active").removeClass("active");
                    $("#tab"+tabId).prev().addClass("active");
                    $("#"+tabId).prev().addClass("active");

                    $("#tab"+tabId).remove();
                    $("#"+tabId).remove();

                    changeContent("${pageContext.request.contextPath}/departmentAction_showAllDepartment",'部门管理');
                }
            }
        )
        return false;
    }
</script>
