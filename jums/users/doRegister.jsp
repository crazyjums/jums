<%@ page contentType="text/html;charset=utf-8" %>

<%@ page language="java" import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
    String userid=request.getParameter("userid");
    String pwd=request.getParameter("password");
    String confirm_password=request.getParameter("confirm_password");
    String nickname=request.getParameter("nickname");

    out.println("uname:"+userid+"<br>pwd:"+pwd+"<br>nickname:"+nickname);

    // if (!confirm_password.equals(pwd)) {
    // 	response.sendRedirect("error_register_password.jsp");
    // }
    Connection conn = null;
	//PreparedStatement ps = null;
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
		
				String sql="insert into user(userid,password,nickname) value('"+userid+"','"+pwd+"','"+nickname+"')";
				out.println(sql);
				/*ps=conn.prepareStatement(sql);
				ps.setString(1);
				ps.setString(2);
				ps.setString(3); */
				int result=stmt.executeUpdate(sql);
		


	
	//6 处理结果
	if (result==1){
		//session.setAttribute("username",uname);	
		
		response.sendRedirect("../login.jsp");
	}else{
		response.sendRedirect("../errors/error_register.jsp");	
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
























