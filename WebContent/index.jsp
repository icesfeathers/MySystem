<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="student.servlet.*"%>
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

<script type="text/javascript">
	$(function() {
		var PATH = '<%=path%>';
		$('#test1').on('click', function(){
			layer.open({
			      type: 2,
			      title: '添加学生信息',
			      shadeClose: true,
			      shade: false,
			      maxmin: true, //开启最大化最小化按钮
			      area: ['893px', '600px'],
			      content: PATH + "/addstudent.jsp"
			    });
		  });
	});
</script>

<body>

	<h1 class="center">学生信息</h1>
	<h2>你好<%=request.getSession().getAttribute("name")%></h2>
	<a href="exit.jsp">退出登录</a>
	<h3>
		<a href="addstudent.jsp" >添加学生</a>
	</h3>
	<button id="test1" >add</button>
	<table border="1" class="center">
		<thead>
			<tr>
				<th>ID</th>
				<th>姓名</th>
				<th>性别</th>
				<th>年龄</th>
				<th>学校</th>
				<th>信息</th>
				<th>操作</th>
			</tr>
		</thead>

		<%
			StudentImpl Student = new StudentImpl();
			List<Student> St = Student.getStudentAll();
			for (int i = 0; i < St.size(); i++) {
				Student S = (Student) St.get(i);
		%>
		<tbody>
			<tr>
				<td><%=S.getId()%></td>
				<td><%=S.getName()%></td>
				<td><%=S.getSex()%></td>
				<td><%=S.getAge()%></td>
				<td><%=S.getSchool()%></td>
				<td><%=S.getInfo()%></td>
				<td><a class="btn btn-info"
					href="updatestudent.jsp?id=<%=S.getId()%>"> <i
						class="glyphicon glyphicon-edit icon-white"></i> 修改
				</a> <a class="btn btn-danger" href="DeleteStudent?id=<%=S.getId()%>">
						<i class="glyphicon glyphicon-trash icon-white"></i> 删除
				</a></td>
			</tr>
		</tbody>
		<%
			}
		%>

	</table>

</body>

</html>