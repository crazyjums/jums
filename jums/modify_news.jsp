<!doctype html>
<html lang="en">
 <head>
 <%@ page language="java" contentType="text/html;charset=utf-8"%>	
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="entity.News" %>
<%@ page language="java" import="java.text.SimpleDateFormat" %>
<%@ page language="java" import=" java.sql.Date" %>
<jsp:useBean id="newsDao_modify" class="Dao.NewsDao" scope="page" />
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus?">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>发布新闻 1.0</title>
 </head>
<style> 
.box{
	border:1px solid #00000;
	width:182px;
	height:19px;
	clip:rect(0px,181px,18px,0px);
	overflow:hidden;
} 
.box2{
	border:1px solid #00000;
	width:180px;height:17px;
	clip:rect(0px,179px,16px,0px);
	overflow:hidden;
}
select{
	position:relative;
	left:-2px;
	top:-2px;
	font-size:12px;
	width:200px;
	line-height:14px;
	border:1px;color:#000000;
} 
textarea{
	resize:none;
	width: 500px;
	height: 300px;
}
</style> 
 <script language="JavaScript" src="js/date.js"></script>

 <link href="css/news.css" rel="stylesheet" type="text/css" media="all" />
 <body style="background-color:#ffefe5">

<div class="menubar">
		<ul>
			
		<%  String nickname = (String)session.getAttribute("nickname") ;
			if (nickname != null ) {
				//登录成功
		%>	
		<li><a href="#">用户名：<br><%=nickname%></a></li>
		<li><a href="main.jsp">首页</a></li>
		
		<%}else{%>
			<li><a href="login.jsp">登录</a></li>
			<li><a href="register.jsp">注册</a></li>
		<%}%>
		</ul>	
</div>
<%
	ArrayList<News> news_modify = new ArrayList<News>();
	int id = Integer.parseInt(request.getParameter("id")); 
	news_modify = newsDao_modify.getNewsById(id);
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	String title = news_modify.get(0).getTitle();
	String type = news_modify.get(0).getType();
	String public_time = sdf.format(news_modify.get(0).getPublic_time());
	String contents = news_modify.get(0).getContents();
	String author = news_modify.get(0).getAuthor();
%>

<div class="contents">
	<form action="doPublic_modify.jsp" method="post">
		<table>
			<tr>
				<td>新闻类型：</td>
				<td>
					<select name="type" style="width:200px;" >
						<option value="<%=type%>"><%=type%></option>
						<option value="校园">校园</option>
						<option value="国内">国内</option>
						<option value="娱乐">娱乐</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>新闻作者：</td>
				<td><input type="text" name="author" style="width:200px;" value="<%=author%>"></td>
			</tr>
			<tr>
				<td>发布时间：</td>
				<td><input type="text" name="public_time" style="width:200px" onfocus="HS_setDate(this)" value="<%=public_time%>"></td>
			</tr>
			<tr>
				<td>新闻标题：</td>
				<td><input type="text" name="title" style="width:200px;" value="<%=title%>"></td>
			</tr>
			<tr>
				<td>新闻内容：</td>
				<td><textarea row=50 col=40 name="contents" ><%=contents%></textarea></td>
			</tr>
			<tr>
				<td><input type="submit"  value="修改" style="margin-top: 20px;margin-left: 80px;width: 60px;height: 30px; background:#1e90ff;color:#ffffff;"></td>
				<td><input type="reset"  value="清空" style="margin-top: 20px;margin-left: 80px;width: 60px;height: 30px; background:#1e90ff;color:#ffffff;"></td>
			</tr>
			
		</table>

	</form>
</div>
  
 </body>
</html>
