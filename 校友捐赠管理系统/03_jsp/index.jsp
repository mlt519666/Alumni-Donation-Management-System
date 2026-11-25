<%--
  Created by IntelliJ IDEA.
  User: mm
  Date: 2024/11/19
  Time: 14:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录成功</title>
</head>
<style type = "text/css">
    body {
        background:url("images/OIP-C.jpg");
        background-size: 100% 100%;
    }
    .center{
        text-align:center;
        margin-top: 150px;
        }

    input {
        background-color: transparent;
        outline: none;
        color: black;
    }
</style>


<body>
<div style="text-align: center">
    <div class="center">
<h1 style="font-size:90px;color:hotpink;margin-top:30px;margin-botton:30px">您已成功登录校友捐赠管理系统</h1><br>
<h2 style="font-size:60px;color:lightpink;margin-bottom: 20px">用户${user.userName}</h2><br>

<a href="add.jsp" target="mainFrame"> 点击进行添加操作</a>
<a href="read.jsp" target="mainFrame">点击查看更多详情</a>

</div>
    </div>
</body>
</html>
