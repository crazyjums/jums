<!doctype html>
<html>
<meta charset="UTF-8">
 <head>
  <%@ page language="java" contentType="text/html;charset=UTF-8"%>
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>Document</title>
<style>

/* 效果CSS开始 */
#brand {
	width:330px;
	height:400px;
	border:1px solid #dddddd;
	box-shadow:0px 0px 5px #dddddd;
	margin:30px auto;
	overflow:hidden;
	}
#brand .title {
	width:100%;
	height:35px;
	line-height:35px;
	font-size:16px;
	margin-top:4px;
	border-bottom:2px solid #33261c;
	text-align:center;
	color:#33261c;
	}
#brand .bd-box {
	width:284px;
	height:358px;
	overflow:hidden;
	padding:0px 24px;
	}
#brand .bd-box li {
	float:left;
	width:115px;
	height:77px;
	overflow:hidden;
	position:relative;
	margin:10px 10px 0px 10px;
	_margin:10px 10px 0px 5px;
	}
#brand .bd-box li img {
	width:115px;	
	height:75px;
	border:1px solid #e9e8e8;
	position:absolute;
	left:0px;
	top:0px;
	z-index:2;
	overflow:hidden;
	}
#brand .bd-box li span {
	width:120px;
	height:0px;
	border:1px solid #e9e8e8;
	position:absolute;	
	left:0px;
	top:38px;
	z-index:1;	
	text-align:center;
	line-height:75px;
	font-size:14px;
	color:#FFF;
	background:#1e90ff;
	font-weight:bold;
	overflow:hidden;
	display:none;
	}
#brand .bd-box li a {
	width:120px;
	height:75px;
	position:absolute;
	left:0px;
	top:0px;
	z-index:3;
	}
/* 效果CSS结束 */
</style>
<script src="js/jquery.js"></script>
<script src="js/round.js"></script>
 </head>
 <body>
<div id="brand">
  <div class='title'> 热门品牌推荐 </div>
	  <ul class='bd-box'>
		<li> <a href="main.jsp"></a><img src="images/1.jpg" /><span >说明1</span></li>
		<li> <a href="main.jsp"></a><img src="images/2.jpg" /><span>说明2</span></li>
		<li> <a href="main.jsp"></a><img src="images/3.jpg" /><span>说明3</span></li>
		<li> <a href="main.jsp"></a><img src="images/4.jpg" /><span>说明4</span></li>
		<li> <a href="main.jsp"></a><img src="images/5.jpg" /><span>说明5</span></li>
		<li> <a href="main.jsp"></a><img src="images/6.jpg" /><span>说明6</span></li>
		<li> <a href="main.jsp"></a><img src="images/7.jpg" /><span>说明7</span></li>
		<li> <a href="main.jsp"></a><img src="images/8.jpg" /><span>说明8</span></li>
	  </ul>
</div>

 </body>
</html>
