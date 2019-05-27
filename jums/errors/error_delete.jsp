<%@ page contentType="text/html;charset=utf-8" %>
<!DOCTYPE html>
<html>
<head>
	<title>登录错误-login</title>
</head>
<style type="text/css">
.errorbox{
	width: 1000px;
	height: 200px;

	color: red;
	font-size: 30px;
	margin:0 auto;
	margin-top: 40px;
}
.button{
	width:200px;
	height: 100px;
	background-color: #1e90ff;
	color: #ffffff; 
	font-size: 40px;
	margin:0 auto;
}

</style>
<body>
	<div class="errorbox">
		<b>不能删除该用户！点击“返回”返回原界面</b><br><p align="center">
		<a href="../management_comments.jsp" class="button">返回</a>
	</div>
</body>
</html>