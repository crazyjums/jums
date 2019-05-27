<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="newsDao_rec" class="Dao.NewsDao" scope="page" />
<%@ page language="java" import="java.util.*" %>
<%@ page language="java" import="entity.News" %>
<div class='leftboxtitle'><b>最新推荐</b></div>
<hr width="250px" color='#cccccc' style="margin-left:10px">			
<%
	ArrayList<News> news_rec = new ArrayList<News>();
	news_rec = newsDao_rec.getAll();
	
%>
			<ul>
			<%
				for(int i=1;i<=4;i++){

			%>
					<li><a href="displaynews.jsp?id=<%=news_rec.get(i).getId()%>"><%=news_rec.get(i).getTitle()%></a></li>
			<%
				}

			%>
								
		</ul>
