<%@ page contentType="text/html;charset=utf-8" %>
<!--1 导入JDBC API -->
<%@ page language="java" import="java.sql.*" %>
<%	
	request.setCharacterEncoding("utf-8");
    int id = Integer.parseInt(request.getParameter("id"));
    //String up=request.getParameter("password");

   

    
    Connection conn = null;
	//ResultSet rs = null;
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
			if(id == 3 ){
				response.sendRedirect("../errors/error_delete.jsp");
				return;
			}

			//5 执行sql语句
			String sql="delete from user where id ='"+id+"'";
			out.println(sql);
			int n  = stmt.executeUpdate(sql);	
			

	/*if ( "123".equals(up) && 
		(
		   "sa".equals(un) || "admin".equals(un)
		)
		)
	*/
	//6 处理结果
	if (n == 1){
		//String nick = rs.getString("nickname");
		//session.setAttribute("nickname",nick);
		response.sendRedirect("../management_comments.jsp");
	}else{
		response.sendRedirect("../errors//error_delete.jsp");	
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
