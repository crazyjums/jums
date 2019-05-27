<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
  <meta charset="UTF-8">
<TITLE> 新闻发布系统1.0 --修改用户 </TITLE>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<META NAME="Generator" CONTENT="sublime">
<META NAME="Author" CONTENT=""><font face="Comic Sans MS, cursive"></font>
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<link href="css/search.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript">
function set_search_input() {
	if (kw.value=='') {
		kw.value='请输入搜索内容';
		kw.style.color='#cccccc';

	}
}


function clearinput(){
	kw.value='';
	kw.style.color="#000000";
}

function checkun(){
  uname = document.getElementById("un");
  mydiv = document.getElementById("loginError");
  if ( uname.value  == "" ){
		//alert("用户名不能为空！");
		mydiv.innerHTML  = "<font color='red'>用户名不能为空！</font>"
		uname.focus();		
		return false;
  }
  return true;
 }
function alertMsg(){
	alert("该用户已经从系统中删除了！！");
}
</script>

<BODY class="back">
<div class="bigbox">
	<div class="header">
	</div>
	<div class="functionbox">

		<div class="buttonbox">
			<div class="menubar">												
				<%@include file="inc/menubar.inc"%>				
			</div>
		</div>


		<div class="leftbox">
			<div class="leftsearchbox">
				<div class='leftboxtitle'><b>站内搜索</b></div>
				<hr width="250px" color='#cccccc' style="margin-left:10px">
				<form action="#" onsubmit="return checkun()">
					<%@include file="inc/search.inc"%>

				</form>
			
				
			</div>	


			<div class="leftcontentbox">
				<div class='leftboxtitle'><b>热门新闻</b></div>
				<%@include file="inc/hotnews.inc"%>
			</div>
			<div class="leftcontentbox">
				<div class='leftboxtitle'><b>相关推荐</b></div>
				<%@include file="inc/recommand.inc"%>
			</div>
			<div class="leftcontentbox">
				<div class='leftboxtitle'><b>热门评论</b></div>
				<%@include file="inc/viewhistory.inc"%>
			</div>
			


			
		</div>
		<div class="rightbox">
			<div class="managerbox">
				<div class="xiugai">
				<%@ page language="java" contentType="text/html;charset=UTF-8"%>
				<%@ page language="java" import="java.sql.*" %>
<%
					request.setCharacterEncoding("utf-8");
					int ids = Integer.parseInt(request.getParameter("id"));
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
							String sql="select * from user where id='"+ids+"'";
							//out.println(sql);
							ps = conn.prepareStatement(sql);
							rs  = ps.executeQuery(); 
							rs.next();
							String zhanghao = rs.getString("userid");
							String nicheng = rs.getString("nickname");
							String mima = rs.getString("password");
							int id = rs.getInt("id");
%>
					<form action="doModify.jsp"  >
					
					<table>
						<tr>
							<td><font color="#1e90ff">帐&nbsp&nbsp号：</font></td>
							<td><input type="idnum" name="userid" value="<%=zhanghao%>" style="width: 160px;height: 25px;"></td>
							<input type="hidden" name="id" value="<%=id%>" style="width: 160px;height: 25px;"></input>
						</tr>
						<tr>
							<td><font color="#1e90ff">密&nbsp&nbsp码：</font></td>
							<td><input type="password" name="password" value="<%=mima%>" style="margin-top: 10px;width: 160px;height: 25px;"></td>
						</tr>
						<tr>
							<td><font color="#1e90ff">确认密码：</font></td>
							<td><input type="password" name="confirm_password" value="<%=mima%>" style="margin-top: 10px;width: 160px;height: 25px;"></td>
						</tr>	
						<tr>
						    <td><font color="#1e90ff">昵&nbsp&nbsp称：</font></td>
							<td><input type="text" name="nickname" value="<%=nicheng%>" style="margin-top: 10px;width: 160px;height: 25px;"></td>
						</tr>
						<tr>
							<td><input type="submit" name="submit" value="修改" style="margin-top: 20px;margin-left: 80px;width: 60px;height: 30px; background:#1e90ff;color:#ffffff;"></td>
							<td><input type="submit" name="submit" value="返回" style="margin-top: 20px;margin-left: 20px;width: 60px;height: 30px;background:#1e90ff;color:#ffffff;"></td>

						</tr>						
					</table>
					</form>
					<%}catch(SQLException e1) { 
					   	out.println(e1);
					   }finally
					    {
							//7 关闭链接
					       conn.close();
					    }%>
				</div>
				
					

			</div>
		
		</div>
		
		<div class="footer">
		
			<%@include file="inc/footer.inc"%>

		</div>


	</div>
	
	
</div>
</BODY>
</HTML>
