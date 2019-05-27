<%@include file="check.jsp"%>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<jsp:useBean id="newsDao" class="Dao.NewsDao" scope="page" />
<jsp:useBean id="news" class="entity.News" scope="page" />
<%@ page language="java" import="entity.News" %>
<%@ page language="java" import="java.text.SimpleDateFormat" %>

<%  
	request.setCharacterEncoding("utf-8");
	SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd");
	String type = request.getParameter("type");
	String author = request.getParameter("author");
	String title = request.getParameter("title");
	String contents = request.getParameter("contents");
	java.util.Date utilDate = sdf.parse(request.getParameter("public_time"));
	java.sql.Date public_time = new java.sql.Date(utilDate.getTime());
	news.setAuthor(author);
	news.setTitle(title);
	news.setPublic_time(public_time);
	news.setContents(contents);
	news.setType(type);
	if(newsDao.insert(news)){
		response.sendRedirect("remander/public_success.jsp");
	}else{
		response.sendRedirect("errors/public_success.jsp");
	}
	
%>

<h1><%=news.getAuthor()%> <br><%=news.getTitle()%> <br><%=news.getPublic_time()%> <br><%=news.getContents()%> <br><%=news.getType()%></h1>