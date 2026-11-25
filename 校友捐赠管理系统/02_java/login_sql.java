import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class login_sql {
        private static Connection dbConn = null;

        public static void main(String[] args) {
            String dbURL = "jdbc:sqlserver://localhost:1433;DatabaseName=校友捐赠管理系统;encrypt=false";;//输入数据库名称
            try {
                //1.加载驱动
                Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
                System.out.println("加载驱动成功！");
                //2.连接
                dbConn = DriverManager.getConnection(dbURL, "填写用户名", "填写密码");//用户名和密码
                System.out.println("连接数据库成功！");
                String sql="select 校友编号 from 捐赠表";
                //表的查询语句
                PreparedStatement statement=null;
                statement=dbConn.prepareStatement(sql);
                ResultSet res=null;
                res=statement.executeQuery();
                while(res.next()){
                    String title=res.getString("校友编号");
                    System.out.println(title);
                }
            }catch(Exception e) {
                e.printStackTrace();
                System.out.println("连接数据库失败！");
            }
        }
    }
