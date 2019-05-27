package connect;
//1 导入JDBC API
import java.sql.*;

public class DBGet {
  //成员变量

  /*static String sDBDriver = "com.mysql.jdbc.Driver";
  static String sConnStr = "jdbc:mysql://localhost:3306/news2015";
  static String username = "root";
  static String password = "mysql";*/

	// static String sDBDriver = "sun.jdbc.odbc.JdbcOdbcDriver";
	// static String sConnStr = "jdbc:odbc:test2016";
  static String sDBDriver = "com.mysql.jdbc.Driver";
  static String sConnStr = "jdbc:mysql://localhost:3306/test";
  static String username = "root";
  static String password = "root";
	
  public DBGet() {
  }
  //返回Connection对象
  public static Connection getConnection() {
      Connection conn = null;
      try {
      	//2 装载驱动程序
          Class.forName(sDBDriver);  
          //3 建立数据库连接
			conn = DriverManager.getConnection(sConnStr,username,password); 
          //conn = DriverManager.getConnection(sConnStr);
      } catch (ClassNotFoundException ex) {
          System.out.println(ex.getMessage());
      } catch (SQLException ex) {
          System.out.println(ex.getMessage()+"dbget");
      }
      return conn;
  }

  //关闭Connection对象
  public static void closeConnection(Connection conn) {
      try {
          if (conn != null) {
              conn.close();
          }
      } catch (SQLException ex) {
          System.out.println(ex.getMessage());
      }
  }

  //关闭Statement对象
  public static void closeStatement(Statement stmt) {
      try {
          if (stmt != null) {
              stmt.close();
          }
      } catch (SQLException ex) {
          System.out.println(ex.getMessage());
      }
  }
  
  //  关闭PreparedStatement对象
  public static void closePreparedStatement(PreparedStatement ps) {
      try {
          if (ps != null) {
              ps.close();
          }
      } catch (SQLException ex) {
          System.out.println(ex.getMessage());
      }
  }

  //关闭ResultSet对象
  public static void closeResultSet(ResultSet rs) {
      try {
          if (rs != null) {
              rs.close();
          }
      } catch (SQLException ex) {
          System.out.println(ex.getMessage());
      }
  }

}
