 <%@ page language="java"  import="Dao.NewsDao" contentType="text/html;charset=utf-8" %>
 <%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="newsDao" class="Dao.NewsDao" scope="page" />
<%
	int id = Integer.parseInt(request.getParameter("id"));
	
	if(newsDao.deleteById(id)){
	 		response.sendRedirect("remander/delete_success_news.jsp");
		
	}else{
	 	    response.sendRedirect("errors/error_delete.jsp");	
	}
%>
