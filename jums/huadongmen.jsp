<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<meta charset="utf-8">
<html>
<head>
<%@ page language="java" import="java.util.*" contentType="text/html;charset=UTF-8"%>
<meta name="viewport" content="width=device-width, initial-scale=1">
<META NAME="Generator" CONTENT="sublime">
<META NAME="Author" CONTENT=""><font face="Comic Sans MS, cursive"></font>
<META NAME="Keywords" CONTENT="">
<META NAME="Description" CONTENT="">
<title>滑动门</title>
<style type="text/css">
*{
	margin:0;
	padding:0;
	font-size:13px;
	line-height:1.5;
}
body{
	padding:20px;
}
.cur{
	color:#f60;
	border-bottom:1px solid #fff;
	font-weight:bold;
	background:#fff;
	cursor:default;
}
#tab_,dl{
	position:relative;
	float:left;
	height:100px;
	width:300px;
}
h4,dt{
	float:left;
	height:20px;
	margin:0 0 0 8px;
	display:inline;
	line-height:20px;
	width:60px;
	border:1px solid #ccc;
	position:relative;
	z-index:11;text-align:center;
	font-weight:normal;
	cursor:pointer;
	background:#eee;
}
.c,dd{
	position:absolute;
	top:21px;
	border:1px solid #ccc;
	left:0;
	width:250px;
	padding:20px;
	overflow:hidden;
	display:block;
}
#tab_{
	clear:left;
}
h1{
	clear:left;
	padding:10px 0;
}
#tab_1.cur{
	color:#f60
}
#tab_2.cur{
	color:blue
}
#tab_3.cur{
	color:green
}
	</style>
	<script type="text/javascript">
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
</head>
<body>
<h1>mouseover</h1>
<dl id="tab">
	<dt>汽车</dt>
	<dd>汽车新闻</dd>
	<dt>科技</dt>
	<dd>科技新闻</dd>
	<dt>手机</dt>
	<dd>手机新闻</dd>
</dl>
<h1>click</h1>
<div id="tab_">
	<h4>orange</h4>
	<div class="c">桔红</div>
	<h4>blue</h4>
	<div class="c">蓝色</div>
	<h4>green</h4>
	<div class="c">绿色</div>
</div>
</body>
</html>