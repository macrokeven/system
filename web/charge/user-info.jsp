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
<%@ page import="com.letoy.module.User" %>
<%
    String position_id = request.getParameter("id");
    String name = request.getParameter("name");
    User newUser = null;
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>部门管理</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <%=getCss(1)%>
    <style>
        table{
            border-collapse: collapse;
        }
        .table-head{padding-right:17px;background-color:#f2f2f2;color:#000;}
        .table-body{width:100%; height:350px;overflow-y:scroll;}

        .table-body table{width:100%;border-collapse: collapse;}
        .table-body table tr:nth-child(2n+1){background-color:#f2f2f2;}
    </style>
    <script>
        var status="ok";
        function edit(a){
            if(status==="ok"){
                var oldname = document.getElementById("name"+a).innerText;
                var oldpeople = document.getElementById("people"+a).innerText;
                var oldlevel = document.getElementById("level"+a).innerText;
                document.getElementById("name"+a).innerHTML="<input type='text' id='name' value='"+oldname+"' style='text-align: center'>";
                document.getElementById("people"+a).innerHTML="<input type='text' id='people' value='"+oldpeople+"' style='text-align: center'>";
                document.getElementById("level"+a).innerHTML="<input type='text' id='level' value='"+oldlevel+"' style='text-align: center'>";
                document.getElementById("edit"+a).innerHTML="<button class='btn tip-left' onclick='submit("+a+")'>提交</button>";
                document.getElementById("delete"+a).innerHTML="<button class='btn tip-left' onclick='refresh()'>取消</button>";
                status = "no";
            }

        }
        function refresh(){
            location.href="department-charge.jsp"
        }
        function submit(id){
            var name = document.getElementById("name").value;
            var level = document.getElementById("level").value;
            var people = document.getElementById("people").value;
            var path = "../Edit?action=department&id="+id+"&name="+name+"&level="+level+"&people="+people;
            location.href=path;
        }
    </script>
</head>
<body><%@ include file="../bar.jsp"%>

<div id="search">
    <input type="text" placeholder="请输入搜索内容..."/>
    <button type="submit" class="tip-bottom" title="Search"><i class="icon-search icon-white"></i></button>
</div>

<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> 控制台</a>
    <ul>
        <li><a href="../main.jsp"><i class="icon icon-home"></i> <span>首页</span></a> </li>
        <li class="submenu open" > <a href="#"><i class="icon icon-th-list"></i> <span>人事管理</span> </a>
            <ul>
                <li><a href="<%=bmgl%>">部门管理</a></li>
                <li><a href="<%=zwgl%>">职务管理</a></li>
                <li><a href="<%=zcgl%>">职称管理</a></li>
                <li class="active"><a href="<%=jsxx%>">员工信息管理</a></li>
            </ul>
        </li>
        <li class="submenu"> <a href="#"><i class="icon icon-th-list"></i> <span>项目管理</span> </a>
            <ul>
                <li><a href="<%=xmsp%>">项目审批</a></li>

            </ul>
        </li>
        <li> <a href="../lwtj.jsp"><i class="icon icon-signal"></i> <span>项目统计</span></a> </li>

    </ul>
</div>

<div id="content">
    <div id="content-header">
        <div id="breadcrumb"><a href="../index.jsp" class="tip-bottom"><em class="icon-home"></em>首页</a> <a href="#" class="tip-bottom">人事管理</a> <a href="<%=jsxx%>" class="tip-bottom">员工信息管理</a><a href="#" class="current">查看个人信息</a></div>
        <h1>员工： <%=name%></h1>
    </div>
    <div class="container-fluid">
        <hr>
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>查看 <%=name%> 个人信息</h5>
                    </div>

                    <div class="widget-content nopadding">

                                        <%
                                try{
                                    List Career_list = Factory.getUserInstance().showDetailUser(position_id,"one");
                                    Iterator iter = Career_list.iterator();
                                    while(iter.hasNext()){
                                        newUser = (User) iter.next();
                                        String id =newUser.getId();
                                        out.println("<table border='1' width='100%'>\n" +
                                                "                                <tr>\n" +
                                                "                                    <td><h2 style='color:black'>员工姓名："+newUser.getName()+"</h2></td>\n" +
                                                "                                    <td rowspan='4'><h5>个人简介：</h5><br><h5>"+newUser.getInformation()+"</h5></td>\n" +
                                                "                                </tr>\n" +
                                                "                                <tr>\n" +
                                                "                                    <td><h3 >所在部门：<a href='department-info.jsp?id="+newUser.getDepartment_id()+"&name="+newUser.getDepartment()+"'>"+newUser.getDepartment()+"</a></h3></td>\n" +
                                                "                                </tr>\n" +
                                                "\n" +
                                                "                                <tr>\n" +
                                                "                                    <td><h3 >工作职务：<a href='career-info.jsp?id="+newUser.getCareer_id()+"&name="+newUser.getCareer()+"'>"+newUser.getCareer()+"</a></h3></td>\n" +
                                                "                                </tr>\n" +
                                                "                                <tr>\n" +
                                                "                                    <td><h3>工作职称：<a href='positional-info.jsp?id="+newUser.getPosition_id()+"&name="+newUser.getPosition()+"'>"+newUser.getPosition()+"</a></h3>\n" +
                                                "                                        <h3>工作级别："+newUser.getLevel()+" 级</h3></td>\n" +
                                                "                                </tr>\n" +
                                                "                            </table>");
                                        
                                    }
                                }catch (Exception e){
                                    e.printStackTrace();
                                }
                            %>

                    </div>
                </div>
            </div>
        </div>
        <div class="row-fluid">
        </div>
    </div></div>
<!--Footer-part-->
<div class="row-fluid">
    <div id="footer" class="span12">Copyright &copy; 2019.China Letoy All rights reserved.<a target="_blank" href="http://macro.ink">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></div>
</div>
<!--end-Footer-part-->
<%=getJs(1)%>
<script>
    $('.textarea_editor').wysihtml5();
</script>
</body>
</html>

