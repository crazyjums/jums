
<%@include file="check.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
  <meta charset="UTF-8">
<TITLE> 新闻发布系统1.0 --管理新闻 </TITLE>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<META NAME="Generator" CONTENT="sublime">
<META NAME="Author" CONTENT=""><font face="Comic Sans MS, cursive"></font>
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/table.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/search.css" rel="stylesheet" type="text/css" media="all" />
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
function alertMsg(){
	alert("该用户已经从系统中删除了！！");
}
function del() {
var msg = "您真的确定要删除吗？\n\n请确认！";
	if (confirm(msg)==true){
		return true;
	}else{
		return false;
	}
}
</script>

<BODY class="back">
	
<div class="bigbox">
	<div class="buttonbox">
		<div class="menubar">												
			<%@include file="inc/menubar.inc"%>				
		</div>
	</div>

	<div class="header">
	</div>
	<div class="functionbox">


		<div class="adminbox">
			<div class="managerbox">
				
				<font color="#1e90ff"><b>管理新闻</b></font>|
				<a href="public_news.jsp"><font color="#1e90ff"><b>发布新闻</b></font></a>
				<hr width="1100px" color='#cccccc' style="margin-left:0px">
				<%@include file="inc/display_table_news.inc"%>

			</div>
		
		</div>
		
		
	</div>
	<div class="footer">
		
		<%@include file="inc/footer.inc"%>

	</div>
	
	
</div>
</BODY>
</HTML>
