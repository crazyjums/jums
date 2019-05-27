<%@ page contentType="text/html;charset=utf-8" %>
<!--1 导入JDBC API -->
<%@ page language="java" import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
    String submit=request.getParameter("submit");
    

 
    if (submit != null && submit.equals("修改")) {
    	
	    int id = Integer.parseInt(request.getParameter("id"));
  	 	String userid=request.getParameter("userid");
   		String nickname=request.getParameter("nickname");
   		String pwd=request.getParameter("mima");
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

				//5 执行sql语句
				String sql="update user set userid='"+userid+"',nickname='"+nickname+"',password='"+pwd+"' where id='"+id+"'";
				out.println(sql);
				int n = stmt.executeUpdate(sql);	

		//6 处理结果
		if (n ==1 ){
			//String nick = rs.getString("nickname");
			//session.setAttribute("nickname",nick);
			response.sendRedirect("../management_comments.jsp");
		}else{
			response.sendRedirect("../errors/error_modify.jsp");	
		}
		
		
		}
	   catch(SQLException e1) { 
	   	out.println(e1);}	 
	    finally
	    {
			//7 关闭链接
	       conn.close();
	    }
	}
	if(submit != null && submit.equals("返回")){
		response.sendRedirect("../management_comments.jsp");
	}
%>
