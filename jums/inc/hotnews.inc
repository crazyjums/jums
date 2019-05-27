<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="newrsDao_hot" class="Dao.NewsDao" scope="page" />
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="entity.News" %>
<%
	ArrayList<News> newsList = new ArrayList<News>();
	newsList = newrsDao_hot.getAll();
	
%>
<div class='leftboxtitle'><b>热门新闻</b></div>
<hr width="250px" color='#cccccc' style="margin-left:10px">	
		<ul>
			<%
				for(int i=9;i>=0;i--){

			%>
					<li><a href="displaynews.jsp?id=<%=newsList.get(i).getId()%>"><%=newsList.get(i).getTitle()%></a></li>
			<%
				}

			%>
								
		</ul>
