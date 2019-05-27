 <%@ page language="java"  import="Dao.UsersDao" contentType="text/html;charset=utf-8" %>
 <%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="usersDao" class="Dao.UsersDao" scope="page" />
<%
	int id = Integer.parseInt(request.getParameter("id"));
	
	if(usersDao.delete(id)){
	 		response.sendRedirect("remander/delete_success.jsp");
		
	}else{
	 	    response.sendRedirect("errors/error_delete.jsp");	
	}
%>
