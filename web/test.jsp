<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/19
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
        function a(a){
            alert(a)
        }
        function b(){
            var a = document.getElementById("1").value;
            var b = document.getElementById("1");
            alert(b.options[b.selectedIndex].innerHTML);
            alert(a);
        }
    </script>
</head>
<body>
    <a href="javascript:void(0)" value="123" onclick="a(123)">123</a>
    <select id="1">
        <option value="10001" title="a">高数老师</option>
        <option value="asd">b</option>
    </select>
    <button onclick="b()">click</button>
</body>
</html>
