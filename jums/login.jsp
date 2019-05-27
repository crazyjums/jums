<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
  <meta charset="UTF-8">
<TITLE> 新闻发布系统1.0 --登陆界面</TITLE>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<META NAME="Generator" CONTENT="sublime">
<META NAME="Author" CONTENT=""><font face="Comic Sans MS, cursive"></font>
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>
<link href="css/search.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<script type="text/javascript">
function set_search_input() {
	if (kw.value=='') {
		kw.value='请输入搜索内容';

		kw.style.color='#cccccc';
	}
}


function clearinput(){
	kw.value='';
	kw.style.color="#000000";
}

function checkun(){
  uname = document.getElementById("username");
  mydiv = document.getElementById("loginError");
  if ( uname.value  == "" ){
		//alert("用户名不能为空！");
		mydiv.innerHTML  = "<font color='red'>用户名不能为空！</font>"
		uname.focus();		
		return false;
  }
  return true;
 }

</script>

<BODY class="login_back">	
		<div class="bigbox_login">
			<div class="login">
				<%
					String userid = "";
					String password = "";
					Cookie[] cookies = request.getCookies();
					if(cookies!=null && cookies.length>0){
						for(Cookie c: cookies){
							if(c.getName().equals("userid")){
								userid = c.getValue();
							}
							if(c.getName().equals("password")){
								password = c.getValue();
							}
						}
					}
				%>
				<form action="doLogin.jsp" onsubmit="return checkun()">
					<table>
						<tr>
							<td><font color="#1e90ff"><b>登录</b></font></td>
						</tr>
						<tr>
							<td>
								<input  type="text" name="userid"  value="<%=userid%>"  id="username" placeholder="用户名/手机/邮箱" style="margin-top: 10px;width: 350px;height: 40px;font-size:15px;color:#1e90ff;">
							</td>
							<td><div class="loginError"></div></td>
						</tr>
					
						<tr>
							
							<td>
								<input type="password" name="password" value="<%=password%>" placeholder="密码" style="margin-top: 10px;width: 350px;height: 40px;font-size:15px;color:#1e90ff;" >
							</td>

						</tr>
						<tr>
							<td colspan="2">
								<input type="checkbox" name="isUserCookie" checked="checked"><font style="font-size: 10px;color:#1e90ff">十天内自动登录</font>
							</td>
						</tr>
					
						<tr>
							<td>
								<input type="submit" value="登陆" style="margin-top: 20px;width: 350px;height: 40px;background:#1e90ff;color:#ffffff;" >
							</td>
						</tr>
						<tr>
							<td>
								<input type="reset" value="清空" style="margin-top: 20px;width: 350px;height: 40px;background:#1e90ff;color:#ffffff;">
							</td>
						</tr>
						<tr>
							<td>
								<a href="main.jsp" style="text-decoration:none;color:#1e90ff;">返回首页</a>
								<a href="register.jsp" style="text-decoration:none;color:#1e90ff;">注册账号</a>
							</td>
							<td>
								
							</td>
						</tr>
					</table>
					


				</form>
				
			</div>
			
		</div>		
<div class="footer_login">
				<%@include file="inc/footer.inc"%>
			</div>
</BODY>
</HTML>
