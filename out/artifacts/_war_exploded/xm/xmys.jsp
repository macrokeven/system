<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/13
  Time: 17:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../path.jsp"%>
<%@ page import="static com.letoy.path.pathConf.getCss" %>
<%@ page import="static com.letoy.path.pathConf.getJs" %>
<%@ page import="java.util.List" %>
<%@ page import="com.letoy.action.Factory" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.letoy.module.Project" %>
<html lang="en">
<head>
    <title>首页</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <%=getCss(1)%>
    <style>
        table{
            border-collapse: collapse;
        }
        .table-head{padding-right:17px;background-color:#f2f2f2;color:#000;}
        .table-body{width:100%; height:250px;overflow-y:scroll;}

        .table-body table{width:100%;border-collapse: collapse;}
        .table-body table tr:nth-child(2n+1){background-color:#f2f2f2;}
    </style>
</head>
<body>

<%@ include file="../bar.jsp"%>

<div id="search">
    <input type="text" placeholder="输入搜索内容..."/>
    <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>

<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> 控制台</a>
    <ul>
        <li><a href="../main.jsp"><i class="icon icon-home"></i> <span>首页</span></a> </li>
        <li class="submenu" > <a href="#"><i class="icon icon-th-list"></i> <span>人事管理</span> </a>
            <ul>
                <li><a href="<%=bmgl%>">部门管理</a></li>
                <li><a href="<%=zwgl%>">职务管理</a></li>
                <li><a href="<%=zcgl%>">职称管理</a></li>
                <li><a href="<%=jsxx%>">员工信息管理</a></li>
            </ul>
        </li>
        <li class="submenu open"> <a href="#"><i class="icon icon-th-list"></i> <span>项目管理</span> </a>
            <ul>
                <li><a href="<%=xmsp%>">项目审批</a></li>
                <li class="active"><a href="<%=xmys%>">项目验收</a></li>
            </ul>
        </li>
        <li> <a href="../lwtj.jsp"><i class="icon icon-signal"></i> <span>项目统计</span></a> </li>

    </ul>
</div>

<!--main-container-part-->
<div id="content">
    <div id="content-header">
        <div id="breadcrumb"><a href="../index.jsp" class="tip-bottom"><em class="icon-home"></em> 首页</a> <a href="#" class="tip-bottom">项目管理</a> <a href="#" class="current">项目验收</a></div>
        <h1>项目审批</h1>
    </div>
    <div class="container-fluid">
        <hr>
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>查看项目信息</h5>
                    </div>

                    <div class="widget-content nopadding">
                        <div class="table-head">
                            <table class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th width="30%">项目名称</th>
                                    <th width="30%">项目管理者</th>
                                    <th width="30%">项目结果</th>
                                    <th width="10%">操作</th>
                                </tr>
                                </thead>
                            </table>
                        </div>
                        <div class="table-body">
                            <table class="table table-bordered table-striped">
                                <colgroup><col style="width: 80px;" /><col /></colgroup>
                                <div style="border: 1px  #000000; width: 100%; margin: 0 auto;">
                                    <%
                                        try{
                                            List Project_list = Factory.getProjectInstance().showProject("during");
                                            Iterator iter = Project_list.iterator();
                                            while(iter.hasNext()){
                                                Project newProject = (Project) iter.next();
                                                out.print("<tr><td  style='text-align: center'  width='30%'>"+ newProject.getName()+"</td>");
                                                out.print("<td  style='text-align: center' width='30%'>"+ newProject.getCharger_name()+"</td>");
                                                out.print("<td  style='text-align: center' width='30%'>"+ newProject.getStatus()+"</td>");
                                                out.print("<td  width='5%'><a class='tip' href='../Project-info.jsp?id="+newProject.getId()+"' title='查看项目'>" +
                                                        "<em class='icon-ok'></em>查看项目</a></td>" +
                                                        "<td  width='5%'><a class='tip' href='../ProjectAction?action=finish&id="+newProject.getId()+"' title='结束项目'>" +
                                                        "<em class='icon-remove'></em>结束项目</a></td></tr>");

                                            }
                                        }catch (Exception e){
                                            e.printStackTrace();
                                        }
                                    %>
                                </div>
                            </table>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row-fluid">
        </div>
    </div></div>

<div class="row-fluid">
    <div id="footer" class="span12">Copyright &copy; 2019.China Letoy All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a> </div>
</div>

<!--end-Footer-part-->

<%=getJs(1)%>

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

