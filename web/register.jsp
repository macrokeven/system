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
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>JavaEE作业</title>
    <link href="static/css/bootstrap.min.css" rel="stylesheet">

    <style>
        tr{
            border:0px#ccc;
        }
        td{
            overflow: hidden;
            height: 5px;
        }
        h6{
            font-size: 10px;
            color:#F40004;
        }
    </style>
    <script>
        var rg_status = false;
        function back(){
            location.href="index.jsp"
        }
        function checkAll(){
            var str = document.getElementById('name').value;
            showResult(str);
            checkPwd();
            checkPassword();
//            checkEmail();

        }

        function showResult(str){
            if(str != ""){
                document.getElementById('icheck1').innerHTML="";
                var check = new Array();
                check ="" ;
                var rst = check.indexOf(str);
                if (rst > -1){
                    document.getElementById('icheck1').innerHTML="用户名重复！";
                    rg_status=false;

                }else{
                    document.getElementById('icheck1').innerHTML="";
                    rg_status=true;
                }
            }else{
                document.getElementById('icheck1').innerHTML="不能为空!";
                rg_status=false;
            }

        }

        function checkPwd(){
            var newPwd = document.getElementById('newPwd').value;
            var oldPwd = document.getElementById('oldPwd').value;
            if (newPwd !== ""){
                if (oldPwd !== newPwd){
                    document.getElementById('icheck3').innerHTML="两次密码不一致";
                    rg_status=false;
                }
                if (oldPwd === newPwd){
                    document.getElementById('icheck3').innerHTML="";
                    rg_status=true;
                }
            }else{
                document.getElementById('icheck3').innerHTML="不能为空!";
                rg_status=false;

            }


        }

        function checkPassword(){
            var check2 = document.getElementById('check2');
            var password=document.getElementById('oldPwd').value;
            var reg=/^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[a-zA-Z0-9]{8,15}$/;
            var f = reg.test(password);
            if(password !== ""){
                if(f===false){
                    document.getElementById('icheck2').innerHTML="密码必须拥有大小写字符并且为8位！";
                    rg_status=false;
                }else{
                    check2.style.display="block";
                    document.getElementById('icheck2').innerHTML="";
                    rg_status=true;
                }
            }else{
                document.getElementById('icheck2').innerHTML="不能为空!";
                rg_status=false;
            }
        }

        //        function checkEmail(){
        //            var check4 = document.getElementById('check4');
        //            var emailVal=document.getElementById('emailVal').value;
        //            var reg=/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
        //            var f = reg.test(emailVal);
        //            if(emailVal != ""){
        //                if(f==false){
        //                    check4.src="static/img/wrong.png";
        //                    check4.style.display="block";
        //                    document.getElementById('icheck4').innerHTML="请输入合法的邮箱地址!";
        //                    rg_status=false;
        //                }else{
        //                    check4.style.display="block";
        //                    check4.src="static/img/correct.png";
        //                    document.getElementById('icheck4').innerHTML="";
        //                    rg_status=true;
        //                }
        //            }else{
        //                check4.src="static/img/wrong.png";
        //                check4.style.display="block";
        //                document.getElementById('icheck4').innerHTML="不能为空!";
        //                rg_status=false;
        //            }
        //        }


        function doSubmitForm(){
            var form = document.getElementById('login_form');
            checkAll();
            if(rg_status === true){
                form.submit();
            }else{
                alert('信息有误请重新填写！');
            }
        }
    </script>

</head>

<body style="background:#E9ECEF">

<div class="jumbotron jumbotron-fluid text-center">
    <img src="static/img/correct.png" style="display: none"/>
    <img src="static/img/wrong.png" style="display: none"/>
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/zh_CN/sdk.js#xfbml=1&version=v4.0"></script>
    <div class="jumbotron jumbotron-fluid text-center" style="height: 100%">
        <div class="container">
            <div class="row">
                <h2 class="tm-question-header" align="center">请注册一个用户</h2>
                <div class="col-12 text-center tm-submit-container col-xl-12">
                    <form method="post" action="../Register" id="login_form" >
                        <table height="242" border="0" width="400" style="left: 350px;position: relative;top: 20px">
                            <tr>
                                <td>
                                    <input type="text" class="form-control" placeholder="账号..." aria-describedby="basic-addon1" name="userId" id="id" onkeyup="">
                                </td>
                                <td>
                                    <h6 style="color: #2E363F">*如无系统内账号则不填写</h6>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="text" class="form-control" placeholder="用户名..." aria-describedby="basic-addon1" name="userName" id="name" onkeyup="showResult(this.value)">
                                </td>
                                <td>
                                    <h6 id="icheck1"></h6>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 50%">
                                    <input type="password" class="form-control" placeholder="密码..." aria-describedby="basic-addon1" name="userPwd" id="oldPwd" onkeyup="checkPassword()">
                                </td>
                                <td style="width: 50%">
                                    <h6 id="icheck2"></h6>
                                </td>

                            </tr>
                            <tr>
                                <td>
                                    <input type="password" class="form-control" placeholder="确认密码..." aria-describedby="basic-addon1" id="newPwd" onkeyup="checkPwd()">
                                </td>
                                <td>
                                    <h6 id="icheck3"></h6>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                <br>
                <div class="row">
                    <div class="col-12 text-center tm-submit-container col-xl-12">
                        <button type="button" class="btn btn-primary tm-btn-submit" onClick="doSubmitForm()">提交</button>
                        <button type="button" class="btn btn-primary tm-btn-submit" onClick="back()">返回</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

</html>

