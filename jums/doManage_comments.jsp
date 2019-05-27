<%@include file="check.jsp"%>	
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<!--1 导入JDBC API -->
<%@ page language="java" import="java.sql.*" %>
<%
				request.setCharacterEncoding("utf-8");
				String submit = request.getParameter("submit");
				out.println(submit);
				if (submit!=null && submit.equals("管理评论")) {
					Connection conn = null;
					PreparedStatement ps = null;
					ResultSet rs = null;

					String sDBDriver = "com.mysql.jdbc.Driver";
					String sConnStr = "jdbc:mysql://localhost:3306/test";
					String username = "root";
					String password = "mysql";
					//2 装载驱动程序
					try {
							 Class.forName(sDBDriver); 
						} catch(ClassNotFoundException ex) { 
							System.err.println(ex.getMessage());
						}

				    try { 
				  		    //3 建立数据库连接
							conn = DriverManager.getConnection(sConnStr,username,password); 
							
							//4 创建Statement对象
							//stmt = conn.createStatement();

							//5 执行sql语句
							String sql="select * from user ";
							out.println(sql);
							ps = conn.prepareStatement(sql);
							rs  = ps.executeQuery();
							int count = 0;		
						%>
					<div class="table">
						<table class="table" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series"> 
							<tr> 
							<th class="spec">序号</th> 
							<th>昵称</th> 
							<th>账号</th> 
							<th>是否删除</th>
							<th>密码</th> 
							</tr>
							<% while(rs.next()){ count++;%>
								<tr> 
									<td class="spec"><%=count%></td> 
									<td><%=rs.getString("nickname")%></td> 
									<td class="alt"><%=rs.getString("userid")%></td> 
									<td><input type="button" name="del" value="删除" onclick="alertMsg()" style="background:#1e90ff;color:#ffffff;"/></td>
									<td><%=rs.getString("password")%></td>
								</tr> 
							<% } %>
					</table>
						<% }catch(Exception e){
							e.printStackTrace();
						}finally{
							try{
								rs.close();
								ps.close();
								conn.close();
							}catch(SQLException e){
								e.printStackTrace();
							}

						}
					}	
					%>
