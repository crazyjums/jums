<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
	<meta charset="utf-8">
<TITLE> 新闻发布系统1.0 --注册界面</TITLE>
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
  uname = document.getElementById("un");
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

<BODY>
<div class="bigbox_register">
	<div class="register"> 
		<form action="doRegister.jsp" onsubmit="return checkun()" method="post">
			<table>
				<tr>
					<td><font color="#1e90ff"><b>注册账号</b></font></td>
				</tr>
				<tr>
					<td><input type="text" name="nickname" placeholder="昵称" style="margin-top: 10px;width: 350px;height: 40px;font-size:15px;color:#1e90ff;"></td>
				</tr>
				<tr>
					<td><input type="idnum" name="userid" placeholder="请输入自定义的账号/手机/邮箱" style="margin-top: 10px;width: 350px;height: 40px;font-size:15px;color:#1e90ff;"></td>
				</tr>
				<tr>
					<td><input type="password" name="password" placeholder="新的密码" style="margin-top: 10px;width: 350px;height: 40px;font-size:15px;color:#1e90ff;"></td>
				</tr>
				<tr>
					<td><input type="password" name="confirm_password" placeholder="确认密码" style="margin-top: 10px;width: 350px;height: 40px;font-size:15px;color:#1e90ff;"></td>
				</tr>	
				
				<tr>
					<td><input type="submit" value="注册" style="margin-top: 20px;width: 350px;height: 40px; background:#1e90ff;color:#ffffff;"></td>
				</tr>
				<tr>
					<td><input type="reset" value="清空" style="margin-top: 20px;width: 350px;height: 40px;background:#1e90ff;color:#ffffff;"></td>
				</tr>
				<tr>
					<td><a href="main.jsp" style="text-decoration:none;color:#1e90ff;">返回首页</a>
					<a href="login.jsp" style="text-decoration:none;color:#1e90ff;">直接登录</a>
				</tr>
			</table>
		</form>
</div>	
			
</div>
<div class="footer_register">
	<%@include file="inc/footer.inc"%>
</div>
</BODY>
</HTML>
