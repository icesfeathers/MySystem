<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="student.servlet.AddServlet"%>
<%@ page import="student.entity.Student"%>
<%@ page import="student.dao.StudentImpl"%>
<%@ page import="student.dao.StudentDao"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>学生管理系统--增加</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<style type="text/css">
body {
	background-image: url(image/bg.jpg);
	background-size: cover;
}

.center {
	width: 960px;
	margin-left: auto;
	margin-right: auto;
}


</style>

<body>
	<h1 class="center">添加学生信息</h1>
	<form action="AddStudent" method="post">
	 	学生姓名：<input type="text" name="name"><br><br>
	 	学生性别：<select name="sex"><option value="男">男</option><option value="女">女</option></select><br><br>
	 	学生年龄：<input type="text" name="age"><br><br>
	 	就读学校：<input type="text" name="school"><br><br>
	 	其他信息：<input type="text" name="info"><br><br>
	 <button type="submit">添加</button>	 <button type="reset">重置</button>
	</form>
</body>
</html>