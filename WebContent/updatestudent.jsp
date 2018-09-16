<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="student.servlet.UpdateServlet"%>
<%@ page import="student.entity.Student"%>
<%@ page import="student.dao.StudentImpl"%>
<%@ page import="student.dao.StudentDao"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>学生管理系统</title>
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
	width: 300px;
	margin-left: auto;
	margin-right: auto;
}
</style>

<%
	String i = request.getParameter("id");
	int id = Integer.valueOf(i);
	StudentImpl Student = new StudentImpl();
	Student S = (Student) Student.getStudent(id);
%>

<body>
	<h1 class="center">修改学生信息</h1>
	<form action="UpdateStudent" method="post" class="center">
		<table >
			<tr>
				<td>学号</td>
				<td><input type="text" name="id" value="<%=S.getId() %>" readonly></td>
			</tr>
			<tr>
				<td>姓名</td>
				<td><input type="text" name="name" value="<%=S.getName() %>" ></td>
			</tr>
			<tr>
				<td>性别</td>
				<td><input type="text" name="sex" value="<%=S.getSex() %>"></td>
			</tr>
			<tr>
				<td>年龄</td>
				<td><input type="text" name="age" value="<%=S.getAge() %>"></td>
			</tr>
			<tr>
				<td>学校</td>
				<td><input type="text" name="school" value="<%=S.getSchool() %>"></td>
			</tr>
			<tr>
				<td>信息</td>
				<td><input type="text" name="info" value="<%=S.getInfo() %>"></td>
			</tr>		
		</table>
		<button type="submit">更新</button>
		<button type="reset">重置</button>
	</form>
</body>
</html>