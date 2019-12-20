<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/13
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="static com.letoy.path.pathConf.getCss" %>
<%@ page import="static com.letoy.path.pathConf.getJs" %>
<html lang="en">
<head>
    <title>通用表单页面</title>
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
        <li class="active"><a href="../index.jsp"><i class="icon icon-home"></i> <span>首页</span></a> </li>
        <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>管理</span> </a>
            <ul>
                <li><a href="department-charge.jsp">部门管理</a></li>
                <li><a href="career-charge.jsp">职务管理</a></li>
                <li><a href="positional-charge.jsp">职称管理</a></li>
                <li><a href="teacher-charge.jsp">教师信息管理</a></li>
            </ul>
        </li>
        <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>项目管理</span> </a>
            <ul>
                <li><a href="../xm/xmsb.jsp">项目申报</a></li>
                <li><a href="../xm/xmsp.jsp">项目审批</a></li>
                <li><a href="../xm/xmys.jsp">项目验收</a></li>
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
        <div id="breadcrumb"> <a href="../index.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="tip-bottom">Form elements</a> <a href="#" class="current">Common elements</a> </div>
        <h1>Common Form Elements</h1>
    </div>
    <div class="container-fluid">
        <hr>
        <div class="row-fluid">
            <div class="span6">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>Personal-info</h5>
                    </div>
                    <div class="widget-content nopadding">
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
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>Form Elements</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form action="#" method="get" class="form-horizontal">
                            <div class="control-group">
                                <label class="control-label">Select input</label>
                                <div class="controls">
                                    <select >
                                        <option>First option</option>
                                        <option>Second option</option>
                                        <option>Third option</option>
                                        <option>Fourth option</option>
                                        <option>Fifth option</option>
                                        <option>Sixth option</option>
                                        <option>Seventh option</option>
                                        <option>Eighth option</option>
                                    </select>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Multiple Select input</label>
                                <div class="controls">
                                    <select multiple >
                                        <option>First option</option>
                                        <option selected>Second option</option>
                                        <option>Third option</option>
                                        <option>Fourth option</option>
                                        <option>Fifth option</option>
                                        <option>Sixth option</option>
                                        <option>Seventh option</option>
                                        <option>Eighth option</option>
                                    </select>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Radio inputs</label>
                                <div class="controls">
                                    <label>
                                        <input type="radio" name="radios" />
                                        First One</label>
                                    <label>
                                        <input type="radio" name="radios" />
                                        Second One</label>
                                    <label>
                                        <input type="radio" name="radios" />
                                        Third One</label>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Checkboxes</label>
                                <div class="controls">
                                    <label>
                                        <input type="checkbox" name="radios" />
                                        First One</label>
                                    <label>
                                        <input type="checkbox" name="radios" />
                                        Second One</label>
                                    <label>
                                        <input type="checkbox" name="radios" />
                                        Third One</label>
                                </div>
                            </div>
                            <div class="control-group">
                                <label for="checkboxes" class="control-label">Data Toggle checkbox</label>
                                <div class="controls">
                                    <div data-toggle="buttons-checkbox" class="btn-group">
                                        <button class="btn btn-primary" type="button">Left</button>
                                        <button class="btn btn-primary" type="button">Middle</button>
                                        <button class="btn btn-primary" type="button">Right</button>
                                    </div>
                                </div>
                            </div>
                            <div class="control-group">
                                <label for="checkboxes" class="control-label">Data Radio button</label>
                                <div class="controls">
                                    <div data-toggle="buttons-radio" class="btn-group">
                                        <button class="btn btn-primary" type="button">Left</button>
                                        <button class="btn btn-primary" type="button">Middle</button>
                                        <button class="btn btn-primary" type="button">Right</button>
                                    </div>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">File upload input</label>
                                <div class="controls">
                                    <input type="file" />
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Disabled Input</label>
                                <div class="controls">
                                    <input type="text" placeholder="You can't type anything…" disabled="" class="span11">
                                </div>
                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-success">Save</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>Form Elements</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form class="form-horizontal">
                            <div class="control-group">
                                <label class="control-label">Color picker (hex)</label>
                                <div class="controls">
                                    <input type="text" data-color="#ffffff" value="#ffffff" class="colorpicker input-big span11">
                                    <span class="help-block">Color picker with Formate of  (hex)</span> </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Color picker (rgba)</label>
                                <div class="controls">
                                    <input type="text" data-color="rgba(344,232,53,0.5)" value="rgba(344,232,53,0.5)" data-color-format="rgba" class="colorpicker span11">
                                    <span class="help-block">Color picker with Formate of  (rgba)</span> </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Date picker (dd-mm)</label>
                                <div class="controls">
                                    <input type="text" data-date="01-02-2013" data-date-format="dd-mm-yyyy" value="01-02-2013" class="datepicker span11">
                                    <span class="help-block">Date with Formate of  (dd-mm-yy)</span> </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Date Picker (mm-dd)</label>
                                <div class="controls">
                                    <div  data-date="12-02-2012" class="input-append date datepicker">
                                        <input type="text" value="12-02-2012"  data-date-format="mm-dd-yyyy" class="span11" >
                                        <span class="add-on"><i class="icon-th"></i></span> </div>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Color Picker (rgb)</label>
                                <div class="controls">
                                    <div data-color-format="rgb" data-color="rgb(155, 142, 180)" class="input-append color colorpicker colorpicker-rgb">
                                        <input type="text" value="rgb(155, 142, 180)" class="span11">
                                        <span class="add-on"><i style="background-color: rgb(155, 142, 180)"></i></span> </div>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Color Picker (hex)</label>
                                <div class="controls">
                                    <div data-color-format="hex" data-color="#000000"  class="input-append color colorpicker">
                                        <input type="text" value="#000000" class="span11">
                                        <span class="add-on"><i style="background-color: #000000"></i></span> </div>
                                </div>
                            </div>
                            <div class="form-actions">
                                <button type="submit" class="btn btn-success">Save</button>
                                <button type="submit" class="btn btn-primary">Reset</button>
                                <button type="submit" class="btn btn-info">Edit</button>
                                <button type="submit" class="btn btn-danger">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="span6">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>Form Elements</h5>
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
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>Form Elements</h5>
                    </div>
                    <div class="widget-content nopadding">
                        <form class="form-horizontal">
                            <div class="control-group">
                                <label class="control-label">Tooltip Input</label>
                                <div class="controls">
                                    <input type="text" placeholder="Hover for tooltip…" data-title="A tooltip for the input" class="span11 tip" data-original-title="">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Type ahead Input</label>
                                <div class="controls">
                                    <input type="text" placeholder="Type here for auto complete…" style="margin: 0 auto;" data-provide="typeahead" data-items="4" data-source="[&quot;Alabama&quot;,&quot;Alaska&quot;,&quot;Arizona&quot;,&quot;Arkansas&quot;,&quot;California&quot;,&quot;Colorado&quot;,&quot;Ahmedabad&quot;,&quot;India&quot;,&quot;Florida&quot;,&quot;Georgia&quot;,&quot;Hawaii&quot;,&quot;Idaho&quot;,&quot;Illinois&quot;,&quot;Indiana&quot;,&quot;Iowa&quot;,&quot;Kansas&quot;,&quot;Kentucky&quot;,&quot;Louisiana&quot;,&quot;Maine&quot;,&quot;Maryland&quot;,&quot;Massachusetts&quot;,&quot;Michigan&quot;,&quot;Minnesota&quot;,&quot;Mississippi&quot;,&quot;Missouri&quot;,&quot;Montana&quot;,&quot;Nebraska&quot;,&quot;Nevada&quot;,&quot;New Hampshire&quot;,&quot;New Jersey&quot;,&quot;New Mexico&quot;,&quot;New York&quot;,&quot;North Dakota&quot;,&quot;North Carolina&quot;,&quot;Ohio&quot;,&quot;Oklahoma&quot;,&quot;Oregon&quot;,&quot;Pennsylvania&quot;,&quot;Rhode Island&quot;,&quot;South Carolina&quot;,&quot;South Dakota&quot;,&quot;Tennessee&quot;,&quot;Texas&quot;,&quot;Utah&quot;,&quot;Vermont&quot;,&quot;Virginia&quot;,&quot;Washington&quot;,&quot;West Virginia&quot;,&quot;Wisconsin&quot;,&quot;Wyoming&quot;]" class="span11">
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Prepended Input</label>
                                <div class="controls">
                                    <div class="input-prepend"> <span class="add-on">#</span>
                                        <input type="text" placeholder="prepend" class="span11">
                                    </div>
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Appended Input</label>
                                <div class="controls">
                                    <div class="input-append">
                                        <input type="text" placeholder="5.000" class="span11">
                                        <span class="add-on">$</span> </div>
                                </div>
                            </div>
                            <div class="control-group warning">
                                <label class="control-label" for="inputWarning">Input with warning</label>
                                <div class="controls">
                                    <input type="text" id="inputWarning" class="span11">
                                    <span class="help-inline">Something may have gone wrong</span> </div>
                            </div>
                            <div class="control-group error">
                                <label class="control-label" for="inputError">Input with error</label>
                                <div class="controls">
                                    <input type="text" id="inputError" class="span11">
                                    <span class="help-inline">Please correct the error</span> </div>
                            </div>
                            <div class="control-group info">
                                <label class="control-label" for="inputInfo">Input with info</label>
                                <div class="controls">
                                    <input type="text" id="inputInfo" class="span11">
                                    <span class="help-inline">Username is already taken</span> </div>
                            </div>
                            <div class="control-group success">
                                <label class="control-label" for="inputSuccess">Input with success</label>
                                <div class="controls">
                                    <input type="text" id="inputSuccess" class="span11">
                                    <span class="help-inline">Woohoo!</span> </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>Form Layout</h5>
                    </div>
                    <div class="widget-content">
                        <div class="controls">
                            <input type="text" placeholder=".span12" class="span12 m-wrap">
                        </div>
                        <div class="controls controls-row">
                            <input type="text" placeholder=".span11" class="span11 m-wrap">
                            <input type="text" placeholder=".span1" class="span1 m-wrap">
                        </div>
                        <div class="controls controls-row">
                            <input type="text" placeholder=".span10" class="span10 m-wrap">
                            <input type="text" placeholder=".span2" class="span2 m-wrap">
                        </div>
                        <div class="controls controls-row">
                            <input type="text" placeholder=".span9" class="span9 m-wrap">
                            <input type="text" placeholder=".span3" class="span3 m-wrap">
                        </div>
                        <div class="controls controls-row">
                            <input type="text" placeholder=".span8" class="span8 m-wrap">
                            <input type="text" placeholder=".span4" class="span4 m-wrap">
                        </div>
                        <div class="controls controls-row">
                            <input type="text" placeholder=".span7" class="span7 m-wrap">
                            <input type="text" placeholder=".span5" class="span5 m-wrap">
                        </div>
                        <div class="controls controls-row">
                            <input type="text" placeholder=".span6" class="span6 m-wrap">
                            <input type="text" placeholder=".span6" class="span6 m-wrap">
                        </div>
                        <div class="controls controls-row">
                            <input type="text" placeholder=".span5" class="span5 m-wrap">
                            <input type="text" placeholder=".span7" class="span7 m-wrap">
                        </div>

                        <div class="controls controls-row">
                            <input type="text" placeholder=".span2" class="span2 m-wrap">
                            <input type="text" placeholder=".span3" class="span3 m-wrap">
                            <input type="text" placeholder=".span4" class="span4 m-wrap">
                            <input type="text" placeholder=".span1" class="span2 m-wrap">
                            <input type="text" placeholder=".span1" class="span1 m-wrap">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row-fluid">
            <div class="widget-box">
                <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                    <h5>wysihtml5</h5>
                </div>
                <div class="widget-content">
                    <div class="control-group">
                        <form>
                            <div class="controls">
                                <textarea class="textarea_editor span12" rows="6" placeholder="Enter text ..."></textarea>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
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

