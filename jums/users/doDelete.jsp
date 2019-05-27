 <%@ page language="java"  contentType="text/html;charset=utf-8" %>
<jsp:useBean id="usersDao" class="javabean.Dao.UsersDao" scope="page" />
<jsp:useBean id="users" class="javabean.entity.Users" scope="page" />
<jsp:setProperty name="users" property="*"/>

<%
 if(usersDao.delete(users)){
 		response.sendRedirect("../remander/delete_success.jsp");
	
 }else{
 	    response.sendRedirect("../errors/error_login.jsp");	
 }
%>
