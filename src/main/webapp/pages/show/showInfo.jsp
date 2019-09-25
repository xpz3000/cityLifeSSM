<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()
    		+":"+request.getServerPort()+path+"/";%>
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
<table  class="table table-hover">
		<tr>
	        <td>编号</td>
	        <td>类型</td>
	        <td>标题</td>
	        <td>发布日期</td>
		</tr>
		<c:forEach items="${list}"  var="c">
			<tr>
				<td>${c.id}</td>
				<td>
					<c:if test="${c.info_type==1}">招聘信息</c:if>
				    <c:if test="${c.info_type==2}">培训信息</c:if>
				    <c:if test="${c.info_type==3}">房屋信息</c:if>
				    <c:if test="${c.info_type==4}">求购信息</c:if>
				    <c:if test="${c.info_type==5}">招商引资</c:if>
				    <c:if test="${c.info_type==6}">公寓信息</c:if>
				    <c:if test="${c.info_type==7}">求职信息</c:if>
				    <c:if test="${c.info_type==8}">家教信息</c:if>
				</td>	
				<td>${c.info_title}</td>
				<td>${c.info_date}</td>			
			</tr>
			</c:forEach>		
	</table>
</body>
</html>