 <%@ page language="java" import="Dao.UsersDao" contentType="text/html;charset=utf-8" %>
<jsp:useBean id="usersDao" class="Dao.UsersDao" scope="page" />
<jsp:useBean id="users" class="entity.Users" scope="page" />
<jsp:setProperty name="users" property="*"/>
<%
	String[] isUserCookie = request.getParameterValues("isUserCookie"); 
	if(isUserCookie != null && isUserCookie.length>0)
	{
		String userid = request.getParameter("userid");
		String password = request.getParameter("password");
		Cookie useridCookie = new Cookie ("userid",userid);
		Cookie passwordCookie = new Cookie("password",password);
		useridCookie.setMaxAge(864000);
		passwordCookie.setMaxAge(864000);
		response.addCookie(useridCookie);
		response.addCookie(passwordCookie);
	}else{
		Cookie[] cookies = request.getCookies();
		if(cookies != null && cookies.length>0){
			for (Cookie c:cookies){
				if(c.getName().equals("userid") || c.getName().equals("password")){
					c.setMaxAge(0);
					response.addCookie(c);
				}
			}
		} 
	}
%>
<%
 if(usersDao.queryByNamePwd(users)){
 		String nick = usersDao.getNickname(users);
		//ArrayList<Users> user = UsersDao.getAll();
		//String nick = user.getNickname();
 		session.setAttribute("nickname",nick);
 		response.sendRedirect("main.jsp");
	
 }else{
 	    response.sendRedirect("errors/error_login.jsp");	
 }
%>
