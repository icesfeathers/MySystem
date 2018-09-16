<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="admin.servlet.*"%>
<%@ page import="admin.entity.Admin"%>
<%@ page import="admin.dao.AdminDao"%>
<%@ page import="admin.dao.AdminImpl"%>
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

<!-- jQuery -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/jQuery/jquery-3.3.1.js"></script>
<!-- layer -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/layer/layer.js"></script>

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
<h1 class="center">登入失败</h1>
<h3 class="center"><a href="login.jsp" >返回</a></h3>
</body>
</html>