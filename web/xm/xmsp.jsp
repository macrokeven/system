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
<html lang="en">
<head>
    <title>首页</title>
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
<!--close-top-Header-menu-->
<!--start-top-serch-->
<div id="search">
    <input type="text" placeholder="输入搜索内容..."/>
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
<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
    <!--breadcrumbs-->
    <div id="content-header">
        <div id="breadcrumb"> <a href="../index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> 首页</a></div>
    </div>
    <!--End-breadcrumbs-->

    <!--Action boxes-->
    <div class="container-fluid">
        <div class="quick-actions_homepage">
            <ul class="quick-actions">
                <li class="bg_lb"> <a href="../index.jsp"> <i class="icon-dashboard"></i> <span class="label label-important">20</span> 我的控制台</a> </li>
                <li class="bg_lg span3"> <a href="../charts.jsp"> <i class="icon-signal"></i> 图表统计</a> </li>
                <li class="bg_ly"> <a href="../widgets.jsp"> <i class="icon-inbox"></i><span class="label label-success">101</span> 插件 </a> </li>
                <li class="bg_lo"> <a href="../tables.jsp"> <i class="icon-th"></i> 表格</a> </li>
                <li class="bg_ls"> <a href="../grid.jsp"> <i class="icon-fullscreen"></i> 网格布局</a> </li>
                <li class="bg_lo span3"> <a href="../form-common.jsp"> <i class="icon-th-list"></i> 表单</a> </li>
                <li class="bg_ls"> <a href="../buttons.jsp"> <i class="icon-tint"></i> 按钮</a> </li>
                <li class="bg_lb"> <a href="../interface.jsp"> <i class="icon-pencil"></i>组件</a> </li>
                <li class="bg_lg"> <a href="../calendar.jsp"> <i class="icon-calendar"></i> 日历</a> </li>
                <li class="bg_lr"> <a href="../error/error404.jsp"> <i class="icon-info-sign"></i> 错误</a> </li>

            </ul>
        </div>
        <!--End-Action boxes-->

        <!--Chart-box-->
        <div class="row-fluid">
            <div class="widget-box">
                <div class="widget-title bg_lg"><span class="icon"><i class="icon-signal"></i></span>
                    <h5>网站统计</h5>
                </div>
                <div class="widget-content" >
                    <div class="row-fluid">
                        <div class="span9">
                            <div class="chart"></div>
                        </div>
                        <div class="span3">
                            <ul class="site-stats">
                                <li class="bg_lh"><i class="icon-user"></i> <strong>2540</strong> <small>Total Users</small></li>
                                <li class="bg_lh"><i class="icon-plus"></i> <strong>120</strong> <small>New Users </small></li>
                                <li class="bg_lh"><i class="icon-shopping-cart"></i> <strong>656</strong> <small>Total Shop</small></li>
                                <li class="bg_lh"><i class="icon-tag"></i> <strong>9540</strong> <small>Total Orders</small></li>
                                <li class="bg_lh"><i class="icon-repeat"></i> <strong>10</strong> <small>Pending Orders</small></li>
                                <li class="bg_lh"><i class="icon-globe"></i> <strong>8540</strong> <small>Online Orders</small></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End-Chart-box-->
        <hr/>
        <div class="row-fluid">
            <div class="span6">
                <div class="widget-box">
                    <div class="widget-title bg_ly" data-toggle="collapse" href="#collapseG2"><span class="icon"><i class="icon-chevron-down"></i></span>
                        <h5>最新文章</h5>
                    </div>
                    <div class="widget-content nopadding collapse in" id="collapseG2">
                        <ul class="recent-posts">
                            <li>
                                <div class="user-thumb"> <img width="40" height="40" alt="User" src="img/demo/av1.jpg"> </div>
                                <div class="article-post"> <span class="user-info"> By: john Deo / Date: 2 Aug 2012 / Time:09:27 AM </span>
                                    <p><a href="#">This is a much longer one that will go on for a few lines.It has multiple paragraphs and is full of waffle to pad out the comment.</a> </p>
                                </div>
                            </li>
                            <li>
                                <div class="user-thumb"> <img width="40" height="40" alt="User" src="img/demo/av2.jpg"> </div>
                                <div class="article-post"> <span class="user-info"> By: john Deo / Date: 2 Aug 2012 / Time:09:27 AM </span>
                                    <p><a href="#">This is a much longer one that will go on for a few lines.It has multiple paragraphs and is full of waffle to pad out the comment.</a> </p>
                                </div>
                            </li>
                            <li>
                                <div class="user-thumb"> <img width="40" height="40" alt="User" src="img/demo/av4.jpg"> </div>
                                <div class="article-post"> <span class="user-info"> By: john Deo / Date: 2 Aug 2012 / Time:09:27 AM </span>
                                    <p><a href="#">This is a much longer one that will go on for a few lines.Itaffle to pad out the comment.</a> </p>
                                </div>
                            <li>
                                <button class="btn btn-warning btn-mini">View All</button>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"><i class="icon-ok"></i></span>
                        <h5>To Do list</h5>
                    </div>
                    <div class="widget-content">
                        <div class="todo">
                            <ul>
                                <li class="clearfix">
                                    <div class="txt"> Luanch This theme on Themeforest <span class="by label">Alex</span></div>
                                    <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                                </li>
                                <li class="clearfix">
                                    <div class="txt"> Manage Pending Orders <span class="date badge badge-warning">Today</span> </div>
                                    <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                                </li>
                                <li class="clearfix">
                                    <div class="txt"> MAke your desk clean <span class="by label">Admin</span></div>
                                    <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                                </li>
                                <li class="clearfix">
                                    <div class="txt"> Today we celebrate the theme <span class="date badge badge-info">08.03.2013</span> </div>
                                    <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                                </li>
                                <li class="clearfix">
                                    <div class="txt"> Manage all the orders <span class="date badge badge-important">12.03.2013</span> </div>
                                    <div class="pull-right"> <a class="tip" href="#" title="Edit Task"><i class="icon-pencil"></i></a> <a class="tip" href="#" title="Delete"><i class="icon-remove"></i></a> </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"><i class="icon-ok"></i></span>
                        <h5>进度条</h5>
                    </div>
                    <div class="widget-content">
                        <ul class="unstyled">
                            <li> <span class="icon24 icomoon-icon-arrow-up-2 green"></span> 81% Clicks <span class="pull-right strong">567</span>
                                <div class="progress progress-striped ">
                                    <div style="width: 81%;" class="bar"></div>
                                </div>
                            </li>
                            <li> <span class="icon24 icomoon-icon-arrow-up-2 green"></span> 72% Uniquie Clicks <span class="pull-right strong">507</span>
                                <div class="progress progress-success progress-striped ">
                                    <div style="width: 72%;" class="bar"></div>
                                </div>
                            </li>
                            <li> <span class="icon24 icomoon-icon-arrow-down-2 red"></span> 53% Impressions <span class="pull-right strong">457</span>
                                <div class="progress progress-warning progress-striped ">
                                    <div style="width: 53%;" class="bar"></div>
                                </div>
                            </li>
                            <li> <span class="icon24 icomoon-icon-arrow-up-2 green"></span> 3% Online Users <span class="pull-right strong">8</span>
                                <div class="progress progress-danger progress-striped ">
                                    <div style="width: 3%;" class="bar"></div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="widget-box">
                    <div class="widget-title bg_lo"  data-toggle="collapse" href="#collapseG3" > <span class="icon"> <i class="icon-chevron-down"></i> </span>
                        <h5>最新发布</h5>
                    </div>
                    <div class="widget-content nopadding updates collapse in" id="collapseG3">
                        <div class="new-update clearfix"><i class="icon-ok-sign"></i>
                            <div class="update-done"><a title="" href="#"><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></a> <span>dolor sit amet, consectetur adipiscing eli</span> </div>
                            <div class="update-date"><span class="update-day">20</span>jan</div>
                        </div>
                        <div class="new-update clearfix"> <i class="icon-gift"></i> <span class="update-notice"> <a title="" href="#"><strong>Congratulation Maruti, Happy Birthday </strong></a> <span>many many happy returns of the day</span> </span> <span class="update-date"><span class="update-day">11</span>jan</span> </div>
                        <div class="new-update clearfix"> <i class="icon-move"></i> <span class="update-alert"> <a title="" href="#"><strong>Maruti is a Responsive Admin theme</strong></a> <span>But already everything was solved. It will ...</span> </span> <span class="update-date"><span class="update-day">07</span>Jan</span> </div>
                        <div class="new-update clearfix"> <i class="icon-leaf"></i> <span class="update-done"> <a title="" href="#"><strong>Envato approved Maruti Admin template</strong></a> <span>i am very happy to approved by TF</span> </span> <span class="update-date"><span class="update-day">05</span>jan</span> </div>
                        <div class="new-update clearfix"> <i class="icon-question-sign"></i> <span class="update-notice"> <a title="" href="#"><strong>I am alwayse here if you have any question</strong></a> <span>we glad that you choose our template</span> </span> <span class="update-date"><span class="update-day">01</span>jan</span> </div>
                    </div>
                </div>

            </div>
            <div class="span6">
                <div class="widget-box widget-chat">
                    <div class="widget-title bg_lb"> <span class="icon"> <i class="icon-comment"></i> </span>
                        <h5>聊天框</h5>
                    </div>
                    <div class="widget-content nopadding collapse in" id="collapseG4">
                        <div class="chat-users panel-right2">
                            <div class="panel-title">
                                <h5>Online Users</h5>
                            </div>
                            <div class="panel-content nopadding">
                                <ul class="contact-list">
                                    <li id="user-Alex" class="online"><a href="#"><img alt="" src="img/demo/av1.jpg" /> <span>Alex</span></a></li>
                                    <li id="user-Linda"><a href="#"><img alt="" src="img/demo/av2.jpg" /> <span>Linda</span></a></li>
                                    <li id="user-John" class="online new"><a href="#"><img alt="" src="img/demo/av3.jpg" /> <span>John</span></a><span class="msg-count badge badge-info">3</span></li>
                                    <li id="user-Mark" class="online"><a href="#"><img alt="" src="img/demo/av4.jpg" /> <span>Mark</span></a></li>
                                    <li id="user-Maxi" class="online"><a href="#"><img alt="" src="img/demo/av5.jpg" /> <span>Maxi</span></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="chat-content panel-left2">
                            <div class="chat-messages" id="chat-messages">
                                <div id="chat-messages-inner"></div>
                            </div>
                            <div class="chat-message well">
                                <button class="btn btn-success">Send</button>
                                <span class="input-box">
                <input type="text" name="msg-box" id="msg-box" />
                </span> </div>
                        </div>
                    </div>
                </div>
                <div class="widget-box">
                    <div class="widget-title"><span class="icon"><i class="icon-user"></i></span>
                        <h5>Our Partner (Box with Fix height)</h5>
                    </div>
                    <div class="widget-content nopadding fix_hgt">
                        <ul class="recent-posts">
                            <li>
                                <div class="user-thumb"> <img width="40" height="40" alt="User" src="img/demo/av1.jpg"> </div>
                                <div class="article-post"> <span class="user-info">John Deo</span>
                                    <p>Web Desginer &amp; creative Front end developer</p>
                                </div>
                            </li>
                            <li>
                                <div class="user-thumb"> <img width="40" height="40" alt="User" src="img/demo/av2.jpg"> </div>
                                <div class="article-post"> <span class="user-info">John Deo</span>
                                    <p>Web Desginer &amp; creative Front end developer</p>
                                </div>
                            </li>
                            <li>
                                <div class="user-thumb"> <img width="40" height="40" alt="User" src="img/demo/av4.jpg"> </div>
                                <div class="article-post"> <span class="user-info">John Deo</span>
                                    <p>Web Desginer &amp; creative Front end developer</p>
                                </div>
                        </ul>
                    </div>
                </div>
                <div class="accordion" id="collapse-group">
                    <div class="accordion-group widget-box">
                        <div class="accordion-heading">
                            <div class="widget-title"> <a data-parent="#collapse-group" href="#collapseGOne" data-toggle="collapse"> <span class="icon"><i class="icon-magnet"></i></span>
                                <h5>Accordion Example 1</h5>
                            </a> </div>
                        </div>
                        <div class="collapse in accordion-body" id="collapseGOne">
                            <div class="widget-content"> It has multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end. </div>
                        </div>
                    </div>
                    <div class="accordion-group widget-box">
                        <div class="accordion-heading">
                            <div class="widget-title"> <a data-parent="#collapse-group" href="#collapseGTwo" data-toggle="collapse"> <span class="icon"><i class="icon-magnet"></i></span>
                                <h5>Accordion Example 2</h5>
                            </a> </div>
                        </div>
                        <div class="collapse accordion-body" id="collapseGTwo">
                            <div class="widget-content">And is full of waffle to It has multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end.</div>
                        </div>
                    </div>
                    <div class="accordion-group widget-box">
                        <div class="accordion-heading">
                            <div class="widget-title"> <a data-parent="#collapse-group" href="#collapseGThree" data-toggle="collapse"> <span class="icon"><i class="icon-magnet"></i></span>
                                <h5>Accordion Example 3</h5>
                            </a> </div>
                        </div>
                        <div class="collapse accordion-body" id="collapseGThree">
                            <div class="widget-content"> Waffle to It has multiple paragraphs and is full of waffle to pad out the comment. Usually, you just </div>
                        </div>
                    </div>
                </div>
                <div class="widget-box collapsible">
                    <div class="widget-title"> <a data-toggle="collapse" href="#collapseOne"> <span class="icon"><i class="icon-arrow-right"></i></span>
                        <h5>Toggle, Open by default, </h5>
                    </a> </div>
                    <div id="collapseOne" class="collapse in">
                        <div class="widget-content"> This box is opened by default, paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end. </div>
                    </div>
                    <div class="widget-title"> <a data-toggle="collapse" href="#collapseTwo"> <span class="icon"><i class="icon-remove"></i></span>
                        <h5>Toggle, closed by default</h5>
                    </a> </div>
                    <div id="collapseTwo" class="collapse">
                        <div class="widget-content"> This box is now open </div>
                    </div>
                    <div class="widget-title"> <a data-toggle="collapse" href="#collapseThree"> <span class="icon"><i class="icon-remove"></i></span>
                        <h5>Toggle, closed by default</h5>
                    </a> </div>
                    <div id="collapseThree" class="collapse">
                        <div class="widget-content"> This box is now open </div>
                    </div>
                </div>
                <div class="widget-box">
                    <div class="widget-title">
                        <ul class="nav nav-tabs">
                            <li class="active"><a data-toggle="tab" href="#tab1">Tab选项1</a></li>
                            <li><a data-toggle="tab" href="#tab2">Tab选项2</a></li>
                            <li><a data-toggle="tab" href="#tab3">Tab选项3</a></li>
                        </ul>
                    </div>
                    <div class="widget-content tab-content">
                        <div id="tab1" class="tab-pane active">
                            <p>And is full of waffle to It has multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end.multiple paragraphs and is full of waffle to pad out the comment.</p>
                            <img src="img/demo/demo-image1.jpg" alt="demo-image"/></div>
                        <div id="tab2" class="tab-pane"> <img src="img/demo/demo-image2.jpg" alt="demo-image"/>
                            <p>And is full of waffle to It has multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end.multiple paragraphs and is full of waffle to pad out the comment.</p>
                        </div>
                        <div id="tab3" class="tab-pane">
                            <p>And is full of waffle to It has multiple paragraphs and is full of waffle to pad out the comment. Usually, you just wish these sorts of comments would come to an end.multiple paragraphs and is full of waffle to pad out the comment. </p>
                            <img src="img/demo/demo-image3.jpg" alt="demo-image"/></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!--end-main-container-part-->

<!--Footer-part-->

<div class="row-fluid">
    <div id="footer" class="span12">Copyright &copy; 2018.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a> </div>
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

