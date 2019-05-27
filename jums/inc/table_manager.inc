<%@ page language="java" import="java.sql.*" %>
<%@ page contentType="text/html;charset=utf-8" %>
<table class="table" cellspacing="0" summary="The technical specifications of the Apple PowerMac G5 series"> 
				<tr> 
				<th class="spec">序号</th> 
				<th>昵称</th> 
				<th>账号</th> 
				<th>是否删除</th>
				<th>密码</th> 
				</tr> 
				
				<% 
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
						String sql="select * from user";
						out.println(sql);
						rs  = stmt.executeQuery(sql);	
						int count=0;
						while(rs.next()){
							count++; %>
							<tr> 
								<td class="spec">1</td> 
								<td><%=rs.getString("nickname")%></td> 
								<td class="alt"><%=rs.getString("userid")%></td> 
								<td><input type="button" name="del" value="删除" onclick="alertMsg()" style="background:#1e90ff;color:#ffffff;"/></td>
								<td><%=rs.getString("password")%></td>
							</tr> 


							<%
						}
				// //6 处理结果
				// if (rs != null && rs.next()){
				// 	String nick = rs.getString("nickname");
				// 	session.setAttribute("nickname",nick);
				// 	response.sendRedirect("main.jsp");
				// }else{
				// 	response.sendRedirect("error_login.jsp");	
				// }
				
				
				}
			    catch(SQLException e1) 
			    { out.println(e1);}	 
			    finally
			    {
					//7 关闭链接
			       conn.close();
			    }

				%>
				<!-- <tr> 
				<td class="spec">1</td> 
				<td>老王头</td> 
				<td class="alt">1234</td> 
				<td><input type="button" name="del" value="删除" onclick="alertMsg()" style="background:#1e90ff;color:#ffffff;"/></td>
				<td>否</td>
				</tr> 
				
				<td class="spec">2</td> 
				<td>骚伟头</td> 
				<td class="alt">1234</td> 
				<td><input type="button" name="del" value="删除" onclick="alertMsg()" style="background:#1e90ff;color:#ffffff;"/>
				</td>
				<td>否</td>  
				</tr> 
				<tr> 
				<td class="spec">3</td> 
				<td>猪易头</td> 
				<td class="alt">1234</td> 
				<td><input type="button" name="del" value="删除" onclick="alertMsg()" style="background:#1e90ff;color:#ffffff;"/>
				</td> 
				<td>否</td> 
				</tr>  -->
</table> 
