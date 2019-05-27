<%@ page import="Dao.UsersDao" contentType="text/html;charset=utf-8" %>
<jsp:useBean id="usersDao" class="Dao.UsersDao" scope="page" />
<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="entity.Users" %>
<%
	request.setCharacterEncoding("utf-8");
	int id = Integer.parseInt(request.getParameter("id"));
	String userid = request.getParameter("userid");
	String nickname = request.getParameter("nickname");
	String password = request.getParameter("password");
	Users users = new Users();
	users.setId(id);
	users.setNickname(nickname);
	users.setUserid(userid);
	users.setPassword(password);
	if (usersDao.update(users)==true) {
		response.sendRedirect("remander/modify_success.jsp");
		
	}else{
		 response.sendRedirect("errors/error_modify.jsp");	
	}
	String submit = request.getParameter("submit");
	if(submit != null && submit.equals("返回")){
		response.sendRedirect("management_users.jsp");
	}
%>
