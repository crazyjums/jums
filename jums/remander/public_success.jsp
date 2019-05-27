<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>注册成功-Register Successful</title>
</head>
<style type="text/css">
	.modifybox{
	width: auto;
	height: auto;
	margin-top: 40px;
	margin-right: 40px;
	margin-left: 40px;
	margin-bottom: 40px;

	background-color: #ccffff;
	border: 2px solid #1e90ff;
	color: #1e90ff;
	font-size: 30px;
	margin:0 auto;
	margin-top: 40px;
	opacity:0.6 !important;
}
.button{
	width:200px;
	height: 100px;
/*	background-color: #1e90ff;*/
	color: #1e90ff; 
	font-size: 25px;
	margin:0 auto;
}
body{
	background-image: url(../image/success.jpg);
}
.footer{
	margin: 0 auto;
	margin-top: 300px;
	width: 1200px;
	height: 80px;
	color: #1e90ff;
	font-size: 20px;

	/*opacity: 0.6 !important;*/
}
</style>

<body>
	<div class="modifybox">
		<p align="center"><b>您已成功发布一条新闻！</b><br><p align="center">
		<a href="../public_news.jsp" class="button">返回发布新闻</a>	
		<a href="../management_news.jsp" class="button">返回管理新闻</a>
		<a href="../main.jsp" class="button">返回首页</a>
		<div class="footer"><p align="center">新闻发布系统 by 朱洪根</div>
	</div>
</body>
</html>>