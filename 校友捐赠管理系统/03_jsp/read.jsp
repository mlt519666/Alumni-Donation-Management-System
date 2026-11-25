<%--
  Created by IntelliJ IDEA.
  User: mm
  Date: 2024/11/25
  Time: 00:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>read页面</title>
</head>
<style type = "text/css">
    body {
        background:url("images/OIP-C.jpg");
        background-size: 100% 100%;
    }
</style>
<body>
<a href="add.jsp">点击添加</a>
<form method='post' action="search.jsp">
    <label for="userID">搜索ID查询:</label>
    <input type="text" id = "userID" name="userID"/>
    <button type="submit">点击提交</button>
</form>
<table border="1" cellspacing="0" cellpadding="0">
    <tr>
        <td>userID</td>
        <td>role</td>
        <td>userName</td>
        <td>userPassword</td>
        <td>删除</td>
        <td>编辑</td>
    </tr>

    <%
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String connectionUrl = "jdbc:sqlserver://localhost:1433;databaseName=校友捐赠管理系统;characterEncoding=UTF-8;encrypt=false;username = 输入自己的;password=输入自己的";
        Connection conn = DriverManager.getConnection(connectionUrl);
        Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
        String sql="select * from User_";
        ResultSet rs=stmt.executeQuery(sql);
        while(rs.next()) {
    %>
    <tr>
        <td><%=rs.getString(1)%> </td>
        <td><%=rs.getString(2)%></td>
        <td><%=rs.getString(3)%></td>
        <td><%=rs.getString(4)%></td>
        <td><a href="del.jsp?userID=<%=rs.getString("userID")%>">删除</a></td>
        <td><a href="edit.jsp?userID=<%=rs.getString("userID")%>">编辑</a></td>
    </tr>
        <%}
        rs.close();
        stmt.close();
        conn.close();
    %>

</table>
</body>
</html>