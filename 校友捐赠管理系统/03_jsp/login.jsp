<%@ page import="java.nio.charset.StandardCharsets" %>
<%--
  Created by IntelliJ IDEA.
  User: mm
  Date: 2024/11/19
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>用户登录界面</title>
  <style type="text/css">
    .center{
      text-align:center;
      margin-top: 100px;
    }

    body{
      background: url("images/white and blue.png");
      background-size: 100% 100%;
    }

    input {
      background-color: transparent;
      outline: none;
      color: black;
    }
  </style>
<head>
<body>
<div style = "text-align: center">
  <div class = "center">
    <h1 style = "font-size:100px;color:steelblue;margin-top:100px;margin-bottom:2px"> 校友捐赠管理系统</h1><br>
  <h2 style = "font-size:60px;color:lightblue">欢迎访问此系统！</h2><br>
  <form action = "login" method = "post" id = "loginForm">
    登录用户：<input type = "text" name = "uname" id = "uname" value = "${messageModel.object.userName}"> <br>
    登录密码：<input type = "password" name = "upa" id = "upa" value = "${messageModel.object.userPassword}"> <br>
    <span id = "mlt" style = "font-size:14px; color:blue">${messageModel.msg}</span> <br>
    <select name="type">
      <option value="1">校友</option>
      <option value="2">捐赠理事</option>
    </select>
    <button type = "button" id = "loginBtn">请登录</button>
    <button type = "button">请注册</button>
  </form>
  </div>
</div>

<%--引入jQuery --%>
<script type = "text/javascript" src = "js/jquery-3.4.1.js"></script>
<script type = "text/javascript">

  $("#loginBtn").click(function() {
  //获取用户姓名及密码
    var uname = $("#uname").val();
    var upa = $("#upa").val();

  //判断姓名是否为空
  if(isEmpty(uname)) {
    $("#mlt").html("用户姓名不能取空，请输入");
    return;
    }

  //判断密码是否为空
  if(isEmpty(upa)) {
    $("#mlt").html("用户密码不能取空，请输入");
    return;
    }

  //姓名和密码都不为空
  $("#loginForm").submit();
});

  function isEmpty(str) {
    return str == null || str.trim() === "";

  }
</script>
</html>