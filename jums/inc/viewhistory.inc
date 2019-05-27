<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<div class='leftboxtitle'><b>阅读历史</b></div>
<hr width="250px" color='#cccccc' style="margin-left:10px">	
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="entity.News" %>
<jsp:useBean id="newsDao_history" class="Dao.NewsDao" scope="page" />

<%
	ArrayList<News> news_history = new ArrayList<News>();
	news_history = newsDao_history.getAll();
	
%>		
		<ul>
			<%
				for(int i=3;i>=0;i--){

			%>
					<li><a href="displaynews.jsp?id=<%=newsList.get(i).getId()%>"><%=newsList.get(i).getTitle()%></a></li>
			<%
				}

			%>
								
		</ul>