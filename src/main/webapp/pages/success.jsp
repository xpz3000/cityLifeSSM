<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
    <title>管理员主页面</title>
    <link rel="stylesheet" href="<%=basePath%>/css/bootstrap.min.css"/>
    <script src="<%=basePath%>/js/jquery-3.3.1.min.js"></script>
    <script src="<%=basePath%>/js/bootstrap.min.js"></script>
</head>
<body>
	<div style="margin-top:90px;margin-left:390px;">
		<font size="820" face="arial" color="blue">
			<i class="glyphicon glyphicon-thumbs-up"></i>
			<i class="glyphicon glyphicon-ok"></i>
		</font>
	</div>
</body>
</html>