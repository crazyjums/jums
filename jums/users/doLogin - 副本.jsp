<%@ page contentType="text/html;charset=utf-8" %>

<%@ page language="java" import="java.sql.*" %>
<%
    String un=request.getParameter("userid");
    String up=request.getParameter("password");

    out.println("uname:"+un+"<br>pwd:"+up);

    
    Connection conn = null;
	ResultSet rs = null;
	Statement stmt =null;

    String sDBDriver = "com.mysql.jdbc.Driver";
	String sConnStr = "jdbc:mysql://localhost:3306/test";
	String username = "root";
	String password = "root";

	//2 装载驱动程序
	try {
			 Class.forName(sDBDriver); 
		} 
		catch(ClassNotFoundException ex) { 
			System.err.println(ex.getMessage());
		}

    try { 
  		    //3 建立数据库连接
			conn = DriverManager.getConnection(sConnStr,username,password); 
			
			//4 创建Statement对象
			stmt = conn.createStatement();

			//5 执行sql语句
			String sql="select * from user where userid = '"+un+"' and password = '"+up+"'";
			out.println(sql);
			rs  = stmt.executeQuery(sql);	
			

	/*if ( "123".equals(up) && 
		(
		   "sa".equals(un) || "admin".equals(un)
		)
		)
	*/
	//6 处理结果
	if (rs != null && rs.next()){
		String nick = rs.getString("nickname");
		session.setAttribute("nickname",nick);
		response.sendRedirect("main.jsp");
	}else{
		response.sendRedirect("../errors/error_login.jsp");	
	}
	
	
	}
   catch(SQLException e1) 
   { out.println(e1);}	 
    finally
    {
		//7 关闭链接
       conn.close();
    }
%> 























