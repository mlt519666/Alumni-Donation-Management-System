<%--
  Created by IntelliJ IDEA.
  User: mm
  Date: 2024/11/25
  Time: 00:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>edit!</title>
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
    String userID =request.getParameter("userID");
    if (userID == null || !userID.matches("\\d+")) {
        throw new IllegalArgumentException("userID为空！");
    }
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    String connectionUrl = "jdbc:sqlserver://localhost:1433;databaseName=校友捐赠管理系统;characterEncoding=UTF-8;encrypt=false;username = 输入自己的;password=输入自己的";
    Connection conn = DriverManager.getConnection(connectionUrl);
    Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    String sql="select * from User_";
    ResultSet rs=stmt.executeQuery(sql);
    rs.next();
%>
<form id="form1" name="form1" method="post" action="update.jsp?userID=<%=userID%>">
    <label>
        userID:
        <input name="userID" type="text" id="userID" value="<%=rs.getString("userID")%>" size="25" />
    </label>
    <p>
        userName:
        <input name="userName" type="text" id="userName" value="<%=rs.getString("userName")%>" size="25" />
    </p>
    <p>
        role:
        <input name="role" type="text" id="role" value="<%=rs.getString("role")%>" size="25" />
    </p>
    <p>
        userPassword:
        <input name="userPassword" type="text" id="userPassword" value="<%=rs.getString("userPassword")%>" size="25" />
    </p>
    <p>
        <label>
            <input type="submit" name="Submit" value="更新" />
        </label>
    </p>
</form>

<%
    rs.close();
    stmt.close();
    conn.close();

%>
    </div>
</div>
</body>
</html>