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
<%@ page import="com.letoy.module.*" %>
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
                var oldlevel = document.getElementById("level"+a).innerText;
                var oldsex = document.getElementById("sex"+a).innerText;
                document.getElementById("name"+a).innerHTML="<input type='text' id='name' value='"+oldname+"' style='text-align: center'>";
                document.getElementById("level"+a).innerHTML="<input type='text' id='level' value='"+oldlevel+"' style='text-align: center'>";
                document.getElementById("sex"+a).innerHTML="<input type='text' id='sex' value='"+oldsex+"' style='text-align: center'>";
                document.getElementById("department"+a).innerHTML="<select id='department'><%
                try {
                    List Department_list = Factory.getDepartmentInstance().showDepartment();
                    Iterator Department_iter = Department_list.iterator();
                    while (Department_iter.hasNext()){
                        Department newDepartment = (Department) Department_iter.next();
                        out.print("<option value='"+newDepartment.getId()+"'>"+newDepartment.getName()+"</option>");
                    }
                }catch(Exception e){
                    e.printStackTrace();
                }
                %></select>";
                
                document.getElementById("career"+a).innerHTML="<select id='career'><%
                try {
                    List Career_list = Factory.getCareerInstance().showCareer();
                    Iterator Career_iter = Career_list.iterator();
                    while (Career_iter.hasNext()){
                        Career newCareer = (Career) Career_iter.next();
                        out.print("<option value='"+newCareer.getId()+"'>"+newCareer.getName()+"</option>");
                    }
                }catch(Exception e){
                    e.printStackTrace();
                }
                %></select>";
                
                document.getElementById("position"+a).innerHTML="<select id='position'><%
                try {
                    List Position_list = Factory.getPositionInstance().showDetailPosition();
                    Iterator Position_iter = Position_list.iterator();
                    while (Position_iter.hasNext()){
                        Position newPosition = (Position) Position_iter.next();
                        out.print("<option value='"+newPosition.getId()+"'>"+newPosition.getName()+"</option>");
                    }
                }catch(Exception e){
                    e.printStackTrace();
                }
                %></select>";
                
                document.getElementById("edit"+a).innerHTML="<button class='btn tip-left' onclick='submit("+a+")'>提交</button>";
                document.getElementById("delete"+a).innerHTML="<button class='btn tip-left' onclick='refresh()'>取消</button>";
                status = "no";
            }

        }
        function refresh(){
            location.href="user-charge.jsp"
        }
        function submit(id){
            var name = document.getElementById("name").value;
            var level = document.getElementById("level").value;
            var sex = document.getElementById("sex").value;
            
            var department_id = document.getElementById("department").value;
            var b = document.getElementById("department");
            var department_name = b.options[b.selectedIndex].innerHTML;
            
            var career_id = document.getElementById("career").value;
            var c = document.getElementById("career");
            var career_name = c.options[c.selectedIndex].innerHTML;
            
            var position_id = document.getElementById("position").value;
            var d = document.getElementById("position");
            var position_name = d.options[d.selectedIndex].innerHTML;
            
            
            var path = "../Edit?action=user&id="+id+"&name="+name+"&level="+level+"&sex="+sex+"&department_name="+department_name+"&department_id="+department_id+
                "&position_id="+position_id+"&position_name="+position_name+
                "&career_id="+career_id+"&career_name="+career_name;
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
<!--close-top-serch-->

<!--sidebar-menu-->

<div id="sidebar"><a href="#" class="visible-phone"><i class="icon icon-home"></i> 控制台</a>
    <ul>
        <li><a href="../main.jsp"><i class="icon icon-home"></i> <span>首页</span></a> </li>
        <li class="submenu open" > <a href="#"><i class="icon icon-th-list"></i> <span>人事管理</span> </a>
            <ul>
                <li><a href="<%=bmgl%>">部门管理</a></li>
                <li><a href="<%=zwgl%>">职务管理</a></li>
                <li><a href="<%=zcgl%>">职称管理</a></li>
                <li  class="active"><a href="<%=jsxx%>">员工信息管理</a></li>
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
        <div id="breadcrumb"><a href="../index.jsp" class="tip-bottom"><em class="icon-home"></em> 首页</a> <a href="#" class="tip-bottom">人事管理</a> <a href="#" class="current">员工管理</a></div>
        <h1>员工管理</h1>
    </div>
    <div class="container-fluid">
        <hr>
        <div class="row-fluid">
            <div class="span12">
                <div class="widget-box">
                    <div class="widget-title"> <span class="icon"> <i class="icon-align-justify"></i> </span>
                        <h5>查看员工信息</h5>
                    </div>

                    <div class="widget-content nopadding">
                        <div class="table-head">
                            <table class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th width="15%">员工名称</th>
                                    <th width="15%">员工部门</th>
                                    <th width="15%">员工性别</th>
                                    <th width="15%">员工职务</th>
                                    <th width="15%">员工职称</th>
                                    <th width="15%">员工等级</th>
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
                                    List User_list = Factory.getUserInstance().showDetailUser("teacher","idf");
                                    Iterator iter = User_list.iterator();
                                    while(iter.hasNext()){
                                        User newUser = (User) iter.next();
                                        String id =newUser.getId();
                                        out.print("<tr><td  style='text-align: center'  width='15%'><div id='name"+id+"'><a href='user-info.jsp?id="+newUser.getId()+"&name="+newUser.getName()+"'>"+ newUser.getName()+"</a></div></td>");
                                        out.print("<td  style='text-align: center' width='15%'><div id='department"+id+"'><a href='department-info.jsp?id="+newUser.getDepartment_id()+"&name="+newUser.getDepartment()+"'>"+newUser.getDepartment()+"</a></td>");
                                        out.print("<td  style='text-align: center' width='15%'><div id='sex"+id+"'>"+ newUser.getSex()+"</td>");
                                        out.print("<td  style='text-align: center' width='15%'><div id='career"+id+"'><a href='career-info.jsp?id="+newUser.getCareer_id()+"&name="+newUser.getName()+"'>"+newUser.getName()+"</a></td>");
                                        out.print("<td  style='text-align: center' width='15%'><div id='position"+id+"'><a href='positional-info.jsp?id="+newUser.getPosition_id()+"&name="+newUser.getPosition()+"'>"+newUser.getPosition()+"</a></td>");
                                        out.print("<td  style='text-align: center' width='15%'><div id='level"+id+"'>"+ newUser.getLevel()+"</td>");
                                        out.print("<td  width='5%'><div id='edit"+id+"'><a class='tip' onclick='edit("+id+")' >" +
                                                "<i class='icon-pencil'></i>编辑</a></div></td>" +
                                                "<td  width='5%'><div id='delete"+id+"'><a class='tip' href='../delete?action=User&id="+id+"' >" +
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

