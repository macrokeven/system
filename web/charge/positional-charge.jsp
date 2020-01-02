<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/13
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../path.jsp" %>
<%@ page import="static com.letoy.path.pathConf.getCss" %>
<%@ page import="static com.letoy.path.pathConf.getJs" %>
<%@ page import="java.util.List" %>
<%@ page import="com.letoy.action.Factory" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="com.letoy.module.Project" %>
<%@ page import="com.letoy.module.Position" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>通用表单页面</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <%=getCss(1)%>
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
            location.href="positional-charge.jsp"
        }
        function submit(id){
            var name = document.getElementById("name").value;
            var level = document.getElementById("level").value;
            var people = document.getElementById("people").value;
            var path = "../Edit?action=position&id="+id+"&name="+name+"&level="+level+"&people="+people;
            location.href=path;
        }
    </script>
</head>
<%@ include file="../bar.jsp"%>

<!--start-top-serch-->
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
                <li  class="active"><a href="<%=zcgl%>">职称管理</a></li>
                <li><a href="<%=jsxx%>">员工信息管理</a></li>
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
        <div id="breadcrumb"><a href="../index.jsp" class="tip-bottom"><em class="icon-home"></em> 首页</a> <a href="#" class="tip-bottom">管理</a> <a href="#" class="current">职务管理</a></div>
        <h1>部门管理</h1>
    </div>
    <div class="container-fluid">
        <hr>
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>查看职务信息</h5>
                    </div>

                    <div class="widget-content nopadding">
                        <div class="table-head">
                            <table class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th width="30%">职务名称</th>
                                    <th width="30%">职务人数</th>
                                    <th width="30%">职务等级</th>
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
                                    List Position_list = Factory.getPositionInstance().showPosition();
                                    Iterator iter = Position_list.iterator();
                                    while(iter.hasNext()){
                                        Position newPosition = (Position) iter.next();
                                        String id =newPosition.getId();
                                        out.print("<tr><td  style='text-align: center'  width='30%'><div id='name"+id+"'><a href='positional-info.jsp?id="+id+"&name="+newPosition.getName()+"'>"+ newPosition.getName()+"</a></div></td>");
                                        out.print("<td  style='text-align: center' width='30%'><div id='people"+id+"'>"+ newPosition.getPeople_number()+"</td>");
                                        out.print("<td  style='text-align: center' width='30%'><div id='level"+id+"'>"+ newPosition.getLevel()+"</td>");
                                        out.print("<td  width='5%'><div id='edit"+id+"'><a class='tip' onclick='edit("+id+")' >" +
                                                "<i class='icon-pencil'></i>编辑</a></div></td>" +
                                                "<td  width='5%'><div id='delete"+id+"'><a class='tip' href='../delete?action=Position&id="+id+" >" +
                                                "<i class='icon-remove'></i>删除</a></div></td></tr>");
                                    }
                                }catch (Exception e){
                                    e.printStackTrace();
                                }
                            %>
                            </table>
                        </div>
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

