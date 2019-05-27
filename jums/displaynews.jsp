<!doctype html>
<html lang="en">
 <meta charset="UTF-8">
 <head>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>	
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="entity.News" %>
<%@ page language="java" import="java.text.SimpleDateFormat" %>
<%@ page language="java" import=" java.sql.Date" %>
<jsp:useBean id="newsDao" class="Dao.NewsDao" scope="page" />
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>新闻信息</title>
</head>
 <link href="css/news.css" rel="stylesheet" type="text/css" media="all" />
<body>
<div class="bigbox">
	
<%
	request.setCharacterEncoding("utf-8");
	int id = Integer.parseInt(request.getParameter("id")); 
    ArrayList<News> news = new ArrayList<News>();
    news = newsDao.getNewsById(id);

	String title = news.get(0).getTitle();
	String type = news.get(0).getType();
	String author = news.get(0).getAuthor();
	String contents = news.get(0).getContents();
	//SimpleDateFormat sdf=new SimpleDateFormat("yyyy年MM月dd日");
	Date public_time=news.get(0).getPublic_time();  
	//String public_time = sdf.format(date);
	%>
	<div class="menubar">
		<ul>
			
		<%  String nickname = (String)session.getAttribute("nickname") ;
			if (nickname != null ) {
				//if(nickname=='administrator')
				//登录成功
		%>	
		<li><a href="#"><%=nickname%></a></li>
		<li><a href="main.jsp">首  页</a></li>
			<li><a href="comments.jsp">评  论</a></li>
		<%}else{%>
			<li><a href="main.jsp">首  页</a></li>
			<li><a href="login.jsp">登  录</a></li>
			<li><a href="register.jsp">注  册</a></li>
		<%}%>
		</ul>	
    </div>


	<div class="header">
		<div class="title">
			<h1  color='#1e90ff'><%=title%></h1>
		</div>
	</div>
	<div class="authors">
		<div class="author">
			<h3><%=author%>&nbsp&nbsp&nbsp&nbsp&nbsp 发布时间：<%=public_time%>&nbsp&nbsp&nbsp&nbsp&nbsp    类型：<%=type%>
			</h3>
		</div>
	</div>
	<div class="comments">
		<div class="comment">
			<p><%=contents%></p>
		</div>
	</div>

	<div class="footer">
		<%@include file="inc/footer.inc"%>
	</div>
</div>
 </body>
</html>
