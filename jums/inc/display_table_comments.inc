<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<link href="css/table.css" rel="stylesheet" type="text/css" media="all" />
<%@ page language="java" import="java.sql.*" %>
<%
				request.setCharacterEncoding("utf-8");
				String submit = request.getParameter("submit");
				//out.println(submit);
				
					Connection conn = null;
					PreparedStatement ps = null;
					ResultSet rs = null;

					String sDBDriver = "com.mysql.jdbc.Driver";
					String sConnStr = "jdbc:mysql://localhost:3306/test";
					String username = "root";
					String password = "root";
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
							String sql="select * from comments ";
							//out.println(sql);
							ps = conn.prepareStatement(sql);
							rs  = ps.executeQuery(); 
							

							int count = 0;	
							if(rs != null){	
						%>
					<div class="table">
						<table class="table" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series"> 
							<tr> 
							<th class="spec">序号</th> 
							<th>昵称</th> 
							<th>账号</th>
							<th>评论</th>  
							<th>删除</th>
							<th>修改</th>
							</tr>
							<% 
							while(rs.next()){ 
								count++;
								int id = rs.getInt("id");%>
								<tr> 
									<td class="spec"><%=count%></td> 
									<td><%=rs.getString("nickname")%></td> 
									<td class="alt"><%=rs.getString("userid")%></td> 
									<td><%=rs.getString("contents")%></td>
										<td>
										<a href="../users/doDelete.jsp?id=<%=id%>">删除</a>
									</td>
									<td>
										<a href="../users/modify.jsp?id=<%=id%>">修改</a>
									</td>
									
								</tr> 
							<% } %>
					</table>
					
						<% } }catch(Exception e){
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
						
					%>
				</div>
