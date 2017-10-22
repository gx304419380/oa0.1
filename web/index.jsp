<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>OA系统1.0</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
    <!-- Morris chart -->
    <link rel="stylesheet" href="bower_components/morris.js/morris.css">
    <!-- jvectormap -->
    <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
    <!-- Date Picker -->
    <link rel="stylesheet" href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
    <!-- Daterange picker -->
    <link rel="stylesheet" href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
    <!-- bootstrap wysihtml5 - text editor -->
    <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <!--<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>-->
    <!--<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>-->
    <![endif]-->
    <!-- Google Font -->
    <%--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">--%>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

    <%-- 页眉 --%>
    <%@ include file="header.jsp"%>
    <!-- 左菜单栏 -->
    <%@ include file="sidebar.jsp"%>
    <!-- 主内容 -->
    <div id="main-content" class="content-wrapper">
        <div class="nav-tabs-custom">
            <ul class="nav nav-tabs" id="tabs-head">

            </ul>
            <div class="tab-content" id="tabs-content">

            </div>
            <!-- /.tab-content -->
        </div>
    </div>
    <!-- 页脚 -->
    <%@ include file="footer.jsp"%>
    <%--页面控制组件，不需要添加--%>
    <%--<%@ include file="control_sidebar.jsp"%>--%>
</div>
<!-- ./wrapper -->

<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="bower_components/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button);
</script>
<!-- Bootstrap 3.3.7 -->
<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- Morris.js charts -->
<script src="bower_components/raphael/raphael.min.js"></script>
<script src="bower_components/morris.js/morris.min.js"></script>
<!-- Sparkline -->
<script src="bower_components/jquery-sparkline/dist/jquery.sparkline.min.js"></script>
<!-- jvectormap -->
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<!-- jQuery Knob Chart -->
<script src="bower_components/jquery-knob/dist/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="bower_components/moment/min/moment.min.js"></script>
<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
<!-- datepicker -->
<script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<!-- Slimscroll -->
<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="bower_components/fastclick/lib/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="dist/js/demo.js"></script>
<!-- DataTables -->
<script src="${pageContext.request.contextPath}/bower_components/datatables.net/js/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/bower_components/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>

<script type="text/javascript">
    function closeTab(tabId) {
        $("#tabs-head .active").removeClass("active");
        $("#tabs-content .active").removeClass("active");
//        $("a[href='#"+tabId+"']").parent().prev().addClass("active");
        $("#tab"+tabId).prev().addClass("active");
        $("#"+tabId).prev().addClass("active");

        $("#tab"+tabId).remove();
        $("#"+tabId).remove();
    }
    function changeContent(url, tabId) {
        $.get(url,
            function (data) {
                $("#tabs-head .active").removeClass("active");
                $("#tabs-content .active").removeClass("active");
                if ($("#"+tabId).length > 0) {
                    $("a[href='#"+tabId+"']").parent().addClass("active");
                    $("#"+tabId).addClass("active");
                } else {
                    $("#tabs-head").append("<li class=\"active\" id=\"tab"+tabId+"\" ondblclick=\"closeTab('"+tabId+"')\"><a href=\"#"+tabId+"\" data-toggle=\"tab\">"+tabId+"</a></li>");
                    $("#tabs-content").append("<div class=\"active tab-pane\" id=\""+tabId+"\"></div>");
                }
                $("#"+tabId).html(data);
            });
//        $("#main-content").load(url, params);
    }
    $(function() {
        changeContent("${pageContext.request.contextPath}/content_dashboard.jsp","总览");
    });
</script>
</body>
</html>
