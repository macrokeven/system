<%@ page import="java.util.List" %>
<%@ page import="com.letoy.action.Factory" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.letoy.module.Department" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="javax.naming.Name" %>
<%@ page import="com.letoy.module.Career" %>
<%@ page import="com.letoy.module.Project" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/1/2
  Time: 12:43
  To change this template use File | Settings | File Templates.
--%>
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
    <script src="static/js/echarts.js"></script>

</head>
<body>
<%@ include file="bar2.jsp"%>
<div id="search">
    <input type="text" placeholder="输入搜索内容..."/>
    <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>

<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> 控制台</a>
    <ul>
        <li><a href="main.jsp"><i class="icon icon-home"></i> <span>首页</span></a> </li>
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
                <li><a href="xm/xmsp.jsp">项目审批</a></li>
            </ul>
        </li>
        <li class="active"> <a href="lwtj.jsp"><i class="icon icon-signal"></i><span>系统统计</span></a></li>
    </ul>
</div>

<div id="content">

    <div id="content-header">
        <div id="breadcrumb"> <a href="index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> 首页</a></div>
    </div>

    <div class="container-fluid">

        <div class="row-fluid">
            <%
                List CareerPeopleData = new ArrayList();
                List CareerNameData = new ArrayList();
                Iterator CareerIter = null;

                try{
                    List career_list = Factory.getCareerInstance().showCareer();
                    CareerIter = career_list.iterator();
                    while(CareerIter.hasNext()){
                        Career newcareer = (Career) CareerIter.next();
                        CareerNameData.add("'"+newcareer.getName()+"'");
                        CareerPeopleData.add(newcareer.getPeople_number());
                    }
                }catch (Exception e){
                    e.printStackTrace();
                }
            %>
            <div class="widget-box">
                <div class="widget-title bg_lg"><span class="icon"><i class="icon-signal"></i></span>
                    <h5>职务统计</h5>
                </div>
                <div class="widget-content" >
                    <div class="row-fluid">
                        <div class="span9">
                            <div class="chart">
                                <div id="user-table" style="width: 100%;height:100%;"></div>
                                <script type="text/javascript">
                                    // 基于准备好的dom，初始化echarts实例
                                    var myChart = echarts.init(document.getElementById('user-table'));

                                    // 指定图表的配置项和数据
                                    var option = {
                                        title: {
                                            text: 'ECharts 入门示例'
                                        },
                                        tooltip: {},
                                        legend: {
                                            data:['销量']
                                        },
                                        xAxis: {
                                            data: <%=CareerNameData%>
                                        },
                                        yAxis: {},
                                        series: [{
                                            name: '销量',
                                            type: 'bar',
                                            data: <%=CareerPeopleData%>
                                        }]
                                    };

                                    // 使用刚指定的配置项和数据显示图表。
                                    myChart.setOption(option);
                                </script>
                            </div>
                        </div>
                        <div class="span3">
                            <ul class="site-stats">
                                <%
                                    try{
                                        List Career_list = Factory.getCareerInstance().showCareer();
                                        CareerIter = Career_list.iterator();
                                        while(CareerIter.hasNext()){
                                            Career newCareer = (Career) CareerIter.next();
                                            String id =newCareer.getId();
                                            out.println("<li class=\"bg_lh\"><em class=\"icon-user\"></em> <strong>"+newCareer.getPeople_number()+"</strong> <small>"+newCareer.getName()+"</small></li>");
                                        }
                                    }catch (Exception e){
                                        e.printStackTrace();
                                    }
                                %>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            
            <%
                List PeopleData = new ArrayList();
                List NameData = new ArrayList();
                Iterator DepartmentIter = null;

                try{
                    List Department_list = Factory.getDepartmentInstance().showDepartment();
                    DepartmentIter = Department_list.iterator();
                    while(DepartmentIter.hasNext()){
                        Department newDepartment = (Department) DepartmentIter.next();
                        String id =newDepartment.getId();
                        NameData.add("'"+newDepartment.getName()+"'");
                        PeopleData.add(newDepartment.getPeople_number());
                    }
                }catch (Exception e){
                    e.printStackTrace();
                }
            %>
            <div class="widget-box">
                <div class="widget-title bg_lg"><span class="icon"><i class="icon-signal"></i></span>
                    <h5>部门统计</h5>
                </div>
                <div class="widget-content" >
                    <div class="row-fluid">
                        <div class="span9">
                            <div class="chart">
                                <div id="department-table" style="width: 100%;height:100%;"></div>
                                <script type="text/javascript">
                                    // 基于准备好的dom，初始化echarts实例
                                    var myChart = echarts.init(document.getElementById('department-table'));

                                    // 指定图表的配置项和数据
                                    var option = {
                                        title: {
                                            text: 'ECharts 入门示例'
                                        },
                                        tooltip: {},
                                        legend: {
                                            data:['人数']
                                        },
                                        xAxis: {
                                            data: <%=NameData%>
                                        },
                                        yAxis: {},
                                        series: [{
                                            name: '人数',
                                            type: 'bar',
                                            data: <%=PeopleData%>,
                                        }]
                                    };

                                    // 使用刚指定的配置项和数据显示图表。
                                    myChart.setOption(option);
                                </script>
                            </div>
                        </div>
                        <div class="span3">
                            <ul class="site-stats">
                                <%
                                    try{
                                        List Department_list = Factory.getDepartmentInstance().showDepartment();
                                        DepartmentIter = Department_list.iterator();
                                        while(DepartmentIter.hasNext()){
                                            Department newDepartment = (Department) DepartmentIter.next();
                                            String id =newDepartment.getId();
                                            NameData.add("'"+newDepartment.getName()+"'");
                                            PeopleData.add(newDepartment.getPeople_number());
                                            out.println("<li class=\"bg_lh\"><em class=\"icon-user\"></em> <strong>"+newDepartment.getPeople_number()+"</strong> <small>"+newDepartment.getName()+"</small></li>");
                                        }
                                    }catch (Exception e){
                                        e.printStackTrace();
                                    }
                                %>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

        </div>

        <hr/>
    </div>
</div>


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


