<%--
  Created by IntelliJ IDEA.
  User: mm
  Date: 2024/11/25
  Time: 00:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" import="com.xxxx.entity.User_" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>search页面</title>
</head>
<style type = "text/css">
    body {
        background:url("images/OIP-C.jpg");
        background-size: 100%;
    }
</style>
<body>
<a href="read.jsp">点击查看全部信息</a>
<table border="1" cellspacing="1" cellpadding="0">
    <tr>
        <th scope="col">userID</th>
        <th scope="col">role</th>
        <th scope="col">userName</th>
    </tr>
    <%
        request.setCharacterEncoding("utf-8");
        String userID = request.getParameter("userID");
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String connectionUrl = "jdbc:sqlserver://localhost:1433;databaseName=校友捐赠管理系统;characterEncoding=UTF-8;encrypt=false;username = 输入自己的;password=输入自己的";
        try(Connection conn = DriverManager.getConnection(connectionUrl);
            PreparedStatement preparedStatement = conn.prepareStatement("SELECT * FROM User_ WHERE userID = ?"))
        {
            preparedStatement.setString(1,userID);

            try (ResultSet rs = preparedStatement.executeQuery()) {
                while (rs.next()) {
    %>
    <tr>
        <td><%=rs.getString("userID")%></td>
        <td><%=rs.getString("role")%></td>
        <td><%=rs.getString("userName")%></td>
    </tr>
    <%      }
        }
    }
        catch (SQLException e) {
        e.printStackTrace();
    }
    %>

</table>
</body>
</html>