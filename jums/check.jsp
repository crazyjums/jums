<%@ page language="java" contentType="text/html;charset=UTF-8"%>

<%
String uname = (String)session.getAttribute("nickname");

if (uname == null){	
		response.sendRedirect("login.jsp");	
}
%>