<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/17
  Time: 10:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>登录页面</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="static/css/bootstrap.min.css" />
    <link rel="stylesheet" href="static/css/bootstrap-responsive.min.css" />
    <link rel="stylesheet" href="static/css/matrix-login.css" />
    <link href="static/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
    <script>
        function submit() {
            document.getElementById("form").submit();
        }
    </script>
</head>
<body>
<div id="loginbox">
    <form id="form" class="form-vertical" action="Register" method="post">
        <div class="control-group normal_text"> <h3>用户注册</h3></div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_lb"><i class="icon-asterisk"></i></span><input type="text" name="idf_id" placeholder="系统用户ID，若无则不填写..." />
                </div>
            </div>
        </div>
        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_lg"><i class="icon-user"></i></span><input type="text" name="user_id" placeholder="用户名..." />
                </div>
            </div>
        </div>

        <div class="control-group">
            <div class="controls">
                <div class="main_input_box">
                    <span class="add-on bg_ly"><i class="icon-lock"></i></span><input type="password" name="user_pwd" placeholder="密码..." />
                </div>
            </div>
        </div>

        <div class="form-actions">
            <span class="pull-left"><a href="#" class="flip-link btn btn-info" id="to-recover">返回</a></span>
            <span class="pull-right"><a type="submit" href="#" class="btn btn-success" onclick="submit()" > 注册</a></span>
        </div>
    </form>
</div>

<script src="static/js/jquery.min.js"></script>
<script src="static/js/matrix.login.js"></script>
</body>

</html>

