<%--
  Created by IntelliJ IDEA.
  User: mm
  Date: 2024/11/25
  Time: 00:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>save页面</title>
</head>
<style type = "text/css">
    body {
        background:url("images/OIP-C.jpg");
        background-size: 100% 100%;
    }
</style>
<body>
<div style="text-align: center">
    <div class="center">
<%
    request.setCharacterEncoding("utf-8");
    String userID =request.getParameter("userID");
    String role =request.getParameter("role");
    String userName = request.getParameter("userName");
    String userPassword = request.getParameter("userPassword");

    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String connectionUrl = "jdbc:sqlserver://localhost:1433;databaseName=校友捐赠管理系统;characterEncoding=UTF-8;encrypt=false;username = 输入自己的;password=输入自己的";
    Connection conn = DriverManager.getConnection(connectionUrl);
    if (userID == null || userID.trim().isEmpty() ||
            userName == null || userName.trim().isEmpty() ||
            userPassword == null || userPassword.trim().isEmpty()) {
        throw new ServletException("参数为空，找不到嗷");
    }
    String sql = "INSERT INTO User_(userID, userName,userPassword,role) VALUES (?,?,?,?)";
    PreparedStatement preparedStatement = conn.prepareStatement(sql);
        preparedStatement.setString(1, userID);
        preparedStatement.setString(2, userName);
        preparedStatement.setString(3, userPassword);
        preparedStatement.setString(4,role);
        preparedStatement.executeUpdate();
        response.sendRedirect("read.jsp");
%>
    </div>
</div>
</body>
</html>