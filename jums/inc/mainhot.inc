<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="java.util.Iterator" %>
<%@ page language="java" import="entity.News" %>
<jsp:useBean id="newsDao" class="Dao.NewsDao" scope="page" />

<div class="righttitle"><b>热点新闻</b></div>
<hr width="825px" color='#1e90ff' >
<%
	ArrayList<News> news = new ArrayList<News>();
    news = newsDao.getAll();
	
%>

<div class="news_box">
	<ul>
				<% 
					
					for(int i=0;i<=news.size()-1;i++)
					//Iterator it1 = list.iterator();  
					//while (it1.hasNext())  
					{
						//int id = news.get(i).getId();
						int no=i;
						//System.out.println(maxline); 
				%>

				
					<li><a href="displaynews.jsp?id=<%=news.get(i).getId()%>" target="_blank"><%=news.get(i).getTitle()%></a></li>
				
								
				<% 
					} 

				%>
	</ul>
</div>

