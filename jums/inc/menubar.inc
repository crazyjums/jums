
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%  String nickname = (String)session.getAttribute("nickname") ;
		if (nickname != null) {
			//登录成功
		%>			
			<div class='username_style'>							
					<b style="color: #fff"><%=nickname%></b>|<a href="logout.jsp" style="color: #ccffff;  text-decoration:none;"><b>退出</b></a>	

			</div>
			<%
			if("administrator".equals(nickname)){//如果是管理员就显示--管理
			%>
			<div class="loginright">
				<ul>
	   				<li><a href="management_comments.jsp">管理评论</a></li>
	   				<li><a href="management_news.jsp">管理新闻</a></li>
					
                    <li><a href="management_users.jsp">管理用户</a></li>
                    <li><a href="main.jsp">首页</a></li>
					
				</ul>
    		</div>

			<%}else{
				%>
			<div class="loginright">
				<ul>
					<li><a href="comments.jsp">评论</a></li>
                    <li><a href="main.jsp">首页</a></li>
				</ul>
    		</div>
		<%}%>
	<% } else{  //没有登录是只显示 --首页
	%>
			<div class="loginleft">
				<ul>
					<li><a href="login.jsp">登录</a></li>
					<li><a href="register.jsp">注册</a></li>
				</ul>
			</div>
			<div class="loginright">
				<ul>
	    			<li><a href="comments.jsp">评论</a></li>
                    <li><a href="main.jsp">首页</a></li>
	   
				</ul>
    		</div>
	<% } %>	