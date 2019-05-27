 <%@ page language="java" contentType="text/html;charset=utf-8" %>
<jsp:useBean id="usersDao" class="Dao.UsersDao" scope="page" />
<jsp:useBean id="users" class="entity.Users" scope="page" />
<jsp:setProperty name="users" property="*"/>
<%@ page language="java" import="java.net.URLEncoder "%>
<%
	request.setCharacterEncoding("utf-8");
	String nickname = request.getParameter("nickname");
	// String uu = users.getNickname();
	// System.out.println(uu);
	session.setAttribute("nickname",users.getNickname());
	session.setAttribute("userid",users.getUserid());
	session.setAttribute("password",users.getPassword());
	// String nickname = URLEncoder.encode(users.getNickname(),"utf-8");
	 if(usersDao.insert(users)){
	 	response.sendRedirect("remander/register_success.jsp");
	 }else{
	 	response.sendRedirect("errors/error_register.jsp");	
	 }
%>
<!-- <h1><%=users.getNickname()%></h1> -->




