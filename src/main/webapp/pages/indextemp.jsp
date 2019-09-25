<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="<%=basePath%>/css/style.css">
</head>
<body background="<%=basePath%>/images/back.gif">
    <center>
        <table border="0" width="920" height="auto" cellspacing="0" cellpadding="0" bgcolor="white">
            <tr><td colspan="2">
			<!-- 页眉 -->
			<iframe src="<%=basePath%>/pages/top.jsp" frameBorder="0" width="920" scrolling="no" height="200" ></iframe>
			</td></tr>
            <tr>
                <td width="230" valign="top" align="center">
				<!-- 左侧 -->
				<iframe src="<%=basePath%>/pages/left.jsp" frameBorder="0" width="225" scrolling="no" height="400" ></iframe>
				</td>
                <td width="690" height="400" align="center" valign="top" bgcolor="#FFFFFF">

				<html>
				<head><title>首页</title></head>
				<body>				
					<center>
						<iframe name="showInfo" src="<%=basePath%>/pages/show/indexMiddle.jsp"
						frameBorder="0" width="650" scrolling="no" height="600" ></iframe>														
						<br>
					</center>
				</body>
				</html>
			</td>
		</tr>
       </table>
		<!-- 页脚 -->
		<iframe src="<%=basePath%>/pages/end.jsp" frameBorder="0" width="920" scrolling="no" height="70" style="margin-top:0"></iframe>	   
    </center>
</body>
</html>