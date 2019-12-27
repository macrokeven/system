<%--
  Created by IntelliJ IDEA.
  User: k.macro
  Date: 2019/12/11
  Time: 上午9:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>登录页面</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel='stylesheet' href='static/css/bootstrap.min.css'/>
    <link rel='stylesheet' href='static/css/bootstrap-responsive.min.css' />
    <link rel='stylesheet' href='static/css/matrix-login.css' />
    <link rel='stylesheet' href='static/css/bootstrap-wysihtml5.css' />
    <link href='static/font-awesome/css/font-awesome.css' rel='stylesheet' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    <script>
        function tijiao() {
            var form = document.getElementById("form1");
            form.submit();
        }
    </script>

</head>
<body>
<div id="loginbox">
    <form  class="form-vertical" action="Login" method="post" id="form1">
        <div class="control-group normal_text"> <h3><img src="static/img/logo.png" alt="Logo" /></h3></div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_lg"><i class="icon-user"></i></span><input type="text" placeholder="用户名" name="id" />
                </div>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_ly"><i class="icon-lock"></i></span><input type="password" placeholder="密码" name="pwd" />
                </div>
            </div>
        </div>
        <div class="form-actions">
            <span class="pull-left"><a href="register.jsp" class="flip-link btn btn-info" id="to-recover">没有账号？</a></span>
            <span class="pull-right"><a type="submit" class="btn btn-success" onclick="tijiao()" > 登录</a></span>
        </div>
    </form>
    <form id="recoverform" action="#" class="form-vertical">
        <p class="normal_text">请输入正确的用户名密码.</p>

        <div class="controls">
            <div class="main_input_box">
                <span class="add-on bg_lo"><i class="icon-envelope"></i></span><input type="text" placeholder="E-mail address" />
            </div>
        </div>
    </form>
</div>

<script src="static/js/jquery.min.js"></script>
</body>

</html>



