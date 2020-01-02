<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>首页</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="static/css/bootstrap.min.css" />
    <link rel="stylesheet" href="static/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="static/css/fullcalendar.css" />
    <link rel="stylesheet" href="static/css/matrix-style.css" />
    <link rel="stylesheet" href="static/css/matrix-media.css" />
    <link href="static/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link rel="stylesheet" href="static/css/jquery.gritter.css" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>


<%@ include file="bar2.jsp"%>


<div id="search">
    <input type="text" placeholder="输入搜索内容..."/>
    <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>

<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> 控制台</a>
    <ul>
        <li class="active"><a href="index.jsp"><i class="icon icon-home"></i> <span>首页</span></a> </li>
        <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>人事管理</span> </a>
            <ul>
                <li><a href="charge/department-charge.jsp">部门管理</a></li>
                <li><a href="charge/career-charge.jsp">职务管理</a></li>
                <li><a href="charge/positional-charge.jsp">职称管理</a></li>
                <li><a href="charge/user-charge.jsp">员工信息管理</a></li>
            </ul>
        </li>
        <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>项目管理</span> </a>
            <ul>
                <li><a href="xm/xmsb.jsp">项目申报</a></li>


            </ul>
        </li>
        <li> <a href="lwtj.jsp"><i class="icon icon-signal"></i> <span>项目统计</span></a> </li>
    </ul>
</div>
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
    <!--breadcrumbs-->
    <div id="content-header">
        <div id="breadcrumb"> <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> 首页</a></div>
    </div>
    <!--End-breadcrumbs-->

    <!--Action boxes-->
    <div class="container-fluid">
        <div class="quick-actions_homepage">
            <ul class="quick-actions">
                <li class="bg_lg span3"> <a href="lwtj.jsp"> <i class="icon-signal"></i> 系统统计</a> </li>
                <li class="bg_ly"> <a href="charge/user-charge.jsp"> <i class="icon-inbox"></i><span class="label label-success">101</span> 人事信息 </a> </li>
                <li class="bg_lo"> <a href="charge/positional-charge.jsp"> <i class="icon-th"></i> 职务信息</a> </li>
                <li class="bg_ls"> <a href="charge/department-charge.jsp"> <i class="icon-fullscreen"></i> 部门信息</a> </li>
            </ul>
        </div>

    </div>
</div>

<!--end-main-container-part-->

<!--Footer-part-->

<div class="row-fluid">
    <div id="footer" class="span12">Copyright &copy; 2019.China Letoy All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a> </div>
</div>

<!--end-Footer-part-->

<script src="static/js/excanvas.min.js"></script>
<script src="static/js/jquery.min.js"></script>
<script src="static/js/jquery.ui.custom.js"></script>
<script src="static/js/bootstrap.min.js"></script>
<script src="static/js/jquery.flot.min.js"></script>
<script src="static/js/jquery.flot.resize.min.js"></script>
<script src="static/js/jquery.peity.min.js"></script>
<script src="static/js/fullcalendar.min.js"></script>
<script src="static/js/matrix.js"></script>
<script src="static/js/matrix.dashboard.js"></script>
<script src="static/js/jquery.gritter.min.js"></script>
<script src="static/js/matrix.interface.js"></script>
<script src="static/js/matrix.chat.js"></script>
<script src="static/js/jquery.validate.js"></script>
<script src="static/js/matrix.form_validation.js"></script>
<script src="static/js/jquery.wizard.js"></script>
<script src="static/js/jquery.uniform.js"></script>
<script src="static/js/select2.min.js"></script>
<script src="static/js/matrix.popover.js"></script>
<script src="static/js/jquery.dataTables.min.js"></script>
<script src="static/js/matrix.tables.js"></script>

<script type="text/javascript">
    // This function is called from the pop-up menus to transfer to
    // a different page. Ignore if the value returned is a null string:
    function goPage (newURL) {

        // if url is empty, skip the menu dividers and reset the menu selection to default
        if (newURL != "") {

            // if url is "-", it is this page -- reset the menu:
            if (newURL == "-" ) {
                resetMenu();
            }
            // else, send page to designated URL
            else {
                document.location.href = newURL;
            }
        }
    }

    // resets the menu selection upon entry to this page:
    function resetMenu() {
        document.gomenu.selector.selectedIndex = 2;
    }
</script>
</body>
</html>

