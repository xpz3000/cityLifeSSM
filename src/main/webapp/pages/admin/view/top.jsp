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
<link type="text/css" rel="stylesheet" href="../../../css/style.css">
</head>
<body>
    <center>
    
        <table border="0" width="100%" height="93" cellspacing="0" cellpadding="0" background="../../../images/admin_top.jpg">
            <tr>
                <td width="100%" height="100%" align="right" valign="bottom">
               
				<a href="" onclick="window.parent.location.href='<%=basePath%>/pages/indextemp.jsp'">
					<img src="../../../images/admin_index.gif" border="0"></a>
				</a>
				<a href="" onclick="window.parent.location.href='<%=basePath%>/pages/index.jsp'">
					<img src="../../../images/admin_exit.gif" border="0">
				</a>
                </td>
            </tr>            
        </table>
    </center>
</body>
</html>