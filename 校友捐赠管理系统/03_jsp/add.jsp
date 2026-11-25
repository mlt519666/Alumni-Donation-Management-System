<%--
  Created by IntelliJ IDEA.
  User: mm
  Date: 2024/11/25
  Time: 00:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>啦啦啦~这里是add页面</title>
</head>
<style type = "text/css">
    body {
        background:url("images/OIP-C.jpg");
        background-size: 100%;
    }
</style>
<body>
<div style="text-align: center">
  <div class="center">
<form id="form1" name="form1" method="post" action="save.jsp">
  <label>
    userID:
    <input name="userID" type="text" id="userID" value="请输入ID" size="25" />
  </label>
  <p>
    role:
    <input name="role" type ="text" id="role" value="请输入（测试/校友/捐赠理事）" size="25" />
  </p>
  <p>
    userName:
    <input name="userName" type="text" id="userName" value="请输入用户名" size="25" />
  </p>
  <p>
    userPassword:
    <input name="userPassword" type="password" id="userPassword" value="请输入密码" size="25" />
  </p>
  <p>
    <label>
      <input type="submit" name="Submit" value="提交" />
    </label>
  </p>
</form>
  </div>
</div>
</body>
</html>