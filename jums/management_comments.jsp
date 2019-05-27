<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
  <meta charset="UTF-8">
<TITLE> 新闻发布系统1.0 --管理评论 </TITLE>
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

		


		<!-- <div class="leftbox">
			<div class="leftsearchbox">
				<div class='leftboxtitle'><b>站内搜索</b></div>
				<hr width="250px" color='#cccccc' style="margin-left:10px">
				<form action="#" onsubmit="return checkun()">
					<%@include file="inc/search.inc"%>
				</form>			
			</div>	
			<!-- <div class="leftcontentbox">
				
				<%@include file="inc/hotnews.inc"%>
			</div>
			<div class="leftcontentbox">
				
				<%@include file="inc/recommand.inc"%>
			</div>
			<div class="leftcontentbox">
				
				<%@include file="inc/viewhistory.inc"%>
			</div> -->	
		</div> 


		<div class="rightbox">
			<div class="managerbox">
				<!--font color="#1e90ff"><b>管理新闻</b></font>&nbsp&nbsp&nbsp&nbsp-->
			<!-- 	<form action="" method="post">
					<input type="submit" name="submit" value="管理评论" style="background-color: #1e90ff;color: ffffff;width: 90px;height: 30px" >
					
				</form> -->
				<font color="#1e90ff"><b>管理评论</b></font>
				<hr width="760px" color='#cccccc' style="margin-left:0px">
				<%@include file="inc/display_table_comments.inc"%>
			</div>
		
		</div>
	</div>
	<div class="footer">
		<%@include file="inc/footer.inc"%>
	</div>
	
	
</div>




</BODY>
</HTML>
