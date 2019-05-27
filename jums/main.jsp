<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">

<HTML>
<HEAD>
<meta charset="utf-8">
<TITLE> 新闻发布系统1.0 --主页</TITLE>
<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<META NAME="Generator" CONTENT="sublime">
<META NAME="Author" CONTENT=""><font face="Comic Sans MS, cursive"></font>
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
</HEAD>
<link href="css/main_page.css" rel="stylesheet" type="text/css" media="all" />
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

function id(elem) {return document.getElementById(elem)}
function show(elem) {elem.style.display = "";}
function hide(elem) {elem.style.display = "none";}
function next( elem ) {
    do {
        elem = elem.nextSibling;
    } while ( elem && elem.nodeType != 1 );
    return elem;
}
function tab(a, p) {
	
	var p = (p === undefined) ? {e:"onclick",n:1} : p,
		node = id(a).firstChild,
		x = [];
	p.e = (p.e === undefined) ? "onclick" : p.e;
	p.n = (p.n === undefined) ? 1 : p.n;
	node=(node.nodeType !== 1)?next(node):node;
	for (var i = 1, node; node; i++, node = next(node)) {
		x[i] = node;
	}
	for (var i = 1; x[i]; i++) {
		if(i % 2 == 0){hide(x[i]);x[i-1].id=a+(i/2)}
	    x[p.n*2-1].className = "cur";
		show(x[p.n*2]);
		temp = function (i) {
			if (i % 2 == 1) {
				x[i][p.e] = function () {
					for (var j = 1; x[j]; j++) {
						if (j % 2 == 0) {
							hide(x[j]);
							x[j-1].className = ""
						}
					}
					show(x[i+1]);
					x[i].className = "cur"
				}
			} else {
				return null
			}
		}(i)
	}
}
tab("tab",{e:"onmouseover",n:2});
tab("tab_")

</script>

<BODY class="back">
	<div class="buttonbox">
		<div class="menubar">												
			<%@include file="inc/menubar.inc"%>					
		</div>
	</div>
<div class="bigbox">
	<div class="header">
	</div>
</div>	
	<div class="functionbox">

		
		<div class="leftbox">
			<div class="leftsearchbox">
				<div class='leftboxtitle'><b>站内搜索</b></div>
				<hr width="250px" color='#cccccc' style="margin-left:10px">
				
				<form action="#" onsubmit="return checkun()">
					<%@include file="inc/search.inc"%>
				</form>
				
			</div>	


			<div class="leftcontentbox">
				
				<!-- 重复部分 -->
				<%@include file="inc/hotnews.inc" %>
			</div>
			<div class="leftcontentbox">
				
				<%@include file="inc/recommand.inc"%>
			</div>
			<div class="leftcontentbox">
				
				<%@include file="inc/viewhistory.inc"%>
			</div>			
		</div>
		<div class="rightbox">
			<%@include file="inc/mainhot.inc"%>
		</div>
		<div class="footer">
			<%@include file="inc/footer.inc"%>
		</div>
	</div>	
		
	

</BODY>
</HTML>
