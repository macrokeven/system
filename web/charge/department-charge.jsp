<%--
  Created by IntelliJ IDEA.
  User: k.macro
  Date: 2019/12/11
  Time: 上午9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../path.jsp"%>
<%@ page import="static com.letoy.path.pathConf.getCss" %>
<%@ page import="static com.letoy.path.pathConf.getJs" %>
<%@ page import="java.util.List" %>
<%@ page import="com.letoy.action.Factory" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.letoy.module.Department" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <title>部门管理</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <%=getCss(1)%>
</head>
<body>

<!--Header-part-->
<div id="header">
    <h1><a href="dashboard.jsp">MatAdmin</a></h1>
</div>
<!--close-Header-part-->

<!--top-Header-menu-->
<div id="user-nav" class="navbar navbar-inverse">
    <ul class="nav">
        <li  class="dropdown" id="profile-messages" ><a title="" href="#" data-toggle="dropdown" data-target="#profile-messages" class="dropdown-toggle"><i class="icon icon-user"></i>  <span class="text">欢迎Admin</span><b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a href="#"><i class="icon-user"></i> 我的资料</a></li>
                <li class="divider"></li>
                <li><a href="#"><i class="icon-check"></i> 我的任务</a></li>
                <li class="divider"></li>
                <li><a href="../login.jsp"><i class="icon-key"></i> 退出</a></li>
            </ul>
        </li>
        <li class="dropdown" id="menu-messages"><a href="#" data-toggle="dropdown" data-target="#menu-messages" class="dropdown-toggle"><i class="icon icon-envelope"></i> <span class="text">消息</span> <span class="label label-important">5</span> <b class="caret"></b></a>
            <ul class="dropdown-menu">
                <li><a class="sAdd" title="" href="#"><i class="icon-plus"></i> 新消息</a></li>
                <li class="divider"></li>
                <li><a class="sInbox" title="" href="#"><i class="icon-envelope"></i> 收件箱</a></li>
                <li class="divider"></li>
                <li><a class="sOutbox" title="" href="#"><i class="icon-arrow-up"></i> 发件箱</a></li>
                <li class="divider"></li>
                <li><a class="sTrash" title="" href="#"><i class="icon-trash"></i> 发送</a></li>
            </ul>
        </li>
        <li class=""><a title="" href="#"><i class="icon icon-cog"></i> <span class="text">设置</span></a></li>
        <li class=""><a title="" href="../login.jsp"><i class="icon icon-share-alt"></i> <span class="text">退出</span></a></li>
    </ul>
</div>

<!--start-top-serch-->
<div id="search">
    <input type="text" placeholder="请输入搜索内容..."/>
    <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>
<!--close-top-serch-->

<!--sidebar-menu-->

<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> 控制台</a>
    <ul>
        <li><a href="../index.jsp"><i class="icon icon-home"></i> <span>首页</span></a> </li>
        <li class="submenu" > <a href="#"><i class="icon icon-th-list"></i> <span>管理</span> </a>
            <ul>
                <li  class="active"><a href="<%=bmgl%>">部门管理</a></li>
                <li><a href="<%=zwgl%>">职务管理</a></li>
                <li><a href="<%=zcgl%>">职称管理</a></li>
                <li><a href="<%=jsxx%>">教师信息管理</a></li>
            </ul>
        </li>
        <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>项目管理</span> </a>
            <ul>
                <li><a href="<%=xmsb%>">项目申报</a></li>
                <li><a href="<%=xmsp%>">项目审批</a></li>
                <li><a href="<%=xmys%>">项目验收</a></li>
            </ul>
        </li>
        <li> <a href="../lwtj.jsp"><i class="icon icon-signal"></i> <span>论文统计</span></a> </li>
        <li> <a href="../xm/xshd.jsp"><i class="icon icon-inbox"></i> <span>学术活动</span></a> </li>
        <li><a href="../tables.jsp"><i class="icon icon-th"></i> <span>数据表格</span></a></li>
        <li><a href="../grid.jsp"><i class="icon icon-fullscreen"></i> <span>网格布局</span></a></li>
        <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>表单</span> </a>
            <ul>
                <li><a href="../form-common.jsp">基本表单</a></li>
                <li><a href="../form-validation.jsp">带验证的表单</a></li>
                <li><a href="../form-wizard.jsp">带提示的表单</a></li>
            </ul>
        </li>
        <li><a href="../buttons.jsp"><i class="icon icon-tint"></i> <span>按钮 &amp; 图标</span></a></li>
        <li><a href="../interface.jsp"><i class="icon icon-pencil"></i> <span>组件</span></a></li>
        <li class="submenu"> <a href="#"><i class="icon icon-file"></i> <span>其他</span> </a>
            <ul>
                <li><a href="../index2.jsp">首页</a></li>
                <li><a href="../gallery.jsp">相册</a></li>
                <li><a href="../calendar.jsp">日历</a></li>
                <li><a href="../invoice.jsp">清单</a></li>
                <li><a href="../chat.jsp">聊天</a></li>
            </ul>
        </li>
        <li class="submenu"> <a href="#"><i class="icon icon-info-sign"></i> <span>错误页面</span> </a>
            <ul>
                <li><a href="../error/error403.jsp">403错误页面</a></li>
                <li><a href="../error/error404.jsp">404错误页面</a></li>
                <li><a href="../error/error405.jsp">05错误页面</a></li>
                <li><a href="../error/error500.jsp">500错误页面</a></li>
            </ul>
        </li>
        <li class="content"> <span>每个月带宽</span>
            <div class="progress progress-mini progress-danger active progress-striped">
                <div style="width: 50%;" class="bar"></div>
            </div>
            <span class="percent">50%</span>
            <div class="stat">21419.94 / 14000 MB</div>
        </li>
        <li class="content"> <span>Disk Space Usage</span>
            <div class="progress progress-mini active progress-striped">
                <div style="width: 87%;" class="bar"></div>
            </div>
            <span class="percent">87%</span>
            <div class="stat">604.44 / 4000 MB</div>
        </li>
    </ul>
</div>

<!--close-left-menu-stats-sidebar-->

<div id="content">
    <div id="content-header">
        <div id="breadcrumb"><a href="../index.jsp" class="tip-bottom"><em class="icon-home"></em> 首页</a> <a href="#" class="tip-bottom">管理</a> <a href="#" class="current">部门管理</a></div>
        <h1>部门管理</h1>
    </div>
    <div class="container-fluid">
        <hr>
        <div class="row-fluid">
            <div class="span6">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>查看部门信息</h5>
                    </div>

                    <div class="widget-content nopadding">
                        <table>
                    <%
                        try{
                            List Department_list = Factory.getDepartmentInstance().showDepartment();
                            Iterator iter = Department_list.iterator();
                            while(iter.hasNext()){
                                Department newDepartment = (Department) iter.next();
                                out.print("<tr><td  style='text-align: center'>"+ newDepartment.getName()+"</td>");
                                out.print("<td  style='text-align: center'>"+ newDepartment.getPeople_number()+"</td>");
                                out.print("<td  style='text-align: center'>"+ newDepartment.getLevel()+"</td>");
                                out.print("<td ><a class='tip' href='editLession.jsp?id="+newDepartment.getId()+"' title='编辑'>" +
                                        "<i class='icon-pencil'></i>编辑</a>" +
                                        "<a class='tip' href='../delete?action=Lession&id="+"' title='删除'>" +
                                        "<i class='icon-remove'></i>删除</a></td></tr>");

                            }
                        }catch (Exception e){
                            e.printStackTrace();
                        }
                    %>
                    </table>
                    <form action="#" method="get" class="form-horizontal">
                            <div class="control-group">
                                <label class="control-label">First Name :</label>
                                <div class="controls">
                                    <input type="text" class="span11" placeholder="First name" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Last Name :</label>
                                <div class="controls">
                                    <input type="text" class="span11" placeholder="Last name" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Password input</label>
                                <div class="controls">
                                    <input type="password"  class="span11" placeholder="Enter Password"  />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Company info :</label>
                                <div class="controls">
                                    <input type="text" class="span11" placeholder="Company name" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Description field:</label>
                                <div class="controls">
                                    <input type="text" class="span11" />
                                    <span class="help-block">Description field</span> </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Message</label>
                                <div class="controls">
                                    <textarea class="span11" ></textarea>
                                </div>
                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-success">Save</button>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
            <div class="span6">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>编辑部门信息</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form action="#" class="form-horizontal">
                            <div class="control-group">
                                <label for="normal" class="control-label">Phone field</label>
                                <div class="controls">
                                    <input type="text" id="mask-phone" class="span8 mask text">
                                    <span class="help-block blue span8">(999) 999-9999</span> </div>
                            </div>
                            <div class="control-group">
                                <label for="normal" class="control-label">Phone field + ext.</label>
                                <div class="controls">
                                    <input type="text" id="mask-phoneExt" class="span8 mask text">
                                    <span class="help-block blue span8">(999) 999-9999? x99999</span> </div>
                            </div>
                            <div class="control-group">
                                <label for="normal" class="control-label">Phone field + ext.</label>
                                <div class="controls">
                                    <input type="text" id="mask-phoneInt" class="span8 mask text">
                                    <span class="help-block blue span8">+40 999 999 999</span> </div>
                            </div>
                            <div class="control-group">
                                <label for="normal" class="control-label">Date field</label>
                                <div class="controls">
                                    <input type="text" id="mask-date" class="span8 mask text">
                                    <span class="help-block blue span8">99/99/9999</span> </div>
                            </div>
                            <div class="control-group">
                                <label for="normal" class="control-label">SSN field</label>
                                <div class="controls">
                                    <input type="text" id="mask-ssn" class="span8 mask text">
                                    <span class="help-block blue span8">999-99-9999</span> </div>
                            </div>
                            <div class="control-group">
                                <label for="normal" class="control-label">SSN field</label>
                                <div class="controls">
                                    <input type="text" id="mask-ssn" class="span8 mask text">
                                    <span class="help-block blue span8">999-99-9999</span> </div>
                            </div>
                            <div class="control-group">
                                <label for="normal" class="control-label">Product Key</label>
                                <div class="controls">
                                    <input type="text" id="mask-productKey" class="span8 mask text">
                                    <span class="help-block blue span8">a*-999-a999</span> </div>
                            </div>
                            <div class="control-group">
                                <label for="normal" class="control-label">Eye Script</label>
                                <div class="controls">
                                    <input type="text" id="mask-eyeScript" class="span8 mask text">
                                    <span class="help-block blue span8">~9.99 ~9.99 999</span> </div>
                            </div>
                            <div class="control-group">
                                <label for="normal" class="control-label">Percent</label>
                                <div class="controls">
                                    <input type="text" id="mask-percent" class="span8 mask text">
                                    <span class="help-block blue span8">99%</span> </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="row-fluid">
        </div>
    </div></div>
<!--Footer-part-->
<div class="row-fluid">
    <div id="footer" class="span12">Copyright &copy; 2018.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></div>
</div>
<!--end-Footer-part-->
<%=getJs(1)%>
<script>
    $('.textarea_editor').wysihtml5();
</script>
</body>
</html>

