<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>删除新闻成功-Delete News Successful</title>
</head>
	<!-- <link href="css/modify_by_admin.css" rel="stylesheet" type="text/css" media="all" /> -->
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
	/*background-color: #1e90ff;*/
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
	<!-- <div class="modifybox">
		<b>删除新闻成功！马上点击“返回”返回管理新闻界面继续管理新闻</b><br><p align="center">
		<a href="../management_news.jsp" class="button">返回</a>
	</div> -->
	<div class="modifybox">
		<p align="center"><b>您已经成功删除一条新闻！</b><br><p align="center">
		<a href="../management_news.jsp" class="button">返回管理新闻</a>
		<a href="../main.jsp" class="button">返回首页</a>
		<div class="footer"><p align="center">新闻发布系统 by 朱洪根</div>
	</div>
</body>
</html>