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
   <script type="text/javascript">
</script>
</head>
<body>
    <center>
        <table border="0" width="100%" cellspacing="0" cellpadding="0">
            <!-- 顶部菜单 -->
           <tr height="20">
                <td style="text-indent:10" valign="bottom">
                    <a href="" onclick="window.parent.location.href='<%=basePath%>/pages/add/addInfo.jsp'" style="color:gray">[发布信息]</a>
                    <a href="<%=basePath%>pages/admin/view/AdminTemp.jsp" onclick="return method()" target="blank" style="color:gray">[进入后台]</a>
                </td>
                <td align="right" valign="bottom">
                    <a href="#"  style="color:gray" onclick="">设为主页 -</a>
                    <a href="javascript:window.external.AddFavorite('indextemp.jsp','都市供求信息网')" style="color:gray">收藏本页 -</a>
                    <a href="<%=basePath%>pages/download.jsp">用户手册</a>
                    &nbsp;
                </td>
            </tr>
            <!-- 导航菜单 -->
            <tr height="56">
                <td align="center" width="220" background="<%=basePath%>/images/logo.gif"></td>
                <td align="right" background="<%=basePath%>/images/menu.gif">
                    <table border="0" width="600">
						<tr align="center">
							<td width="100">
								<a href="" onclick="window.parent.location.href='indextemp.jsp'" style="color:white">首&nbsp;&nbsp;&nbsp;&nbsp;页</a></font></td>
							
							<td width="100">
								<a href="" onclick="window.parent.location.href='<%=basePath%>/pages/show/listshow.jsp'" style="color:white">暂时没有信息</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='<%=basePath%>/pages/show/listshow.jsp'" style="color:white">招聘信息</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='<%=basePath%>/pages/show/listshow.jsp'" style="color:white">培训信息</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='<%=basePath%>/pages/show/listshow.jsp'" style="color:white">房屋信息</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='<%=basePath%>/pages/show/listshow.jsp'" style="color:white">求购信息</a>
							</td>
						</tr>
								
						<tr align="center">
							<td width="100">
								<a href="" onclick="window.parent.location.href='<%=basePath%>/pages/show/listshow.jsp'" style="color:white">招商引资</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='<%=basePath%>/pages/show/listshow.jsp'" style="color:white">公寓信息</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='<%=basePath%>/pages/show/listshow.jsp'" style="color:white">求职信息</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='<%=basePath%>/pages/show/listshow.jsp'" style="color:white">家教信息</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='<%=basePath%>/pages/show/listshow.jsp'" style="color:white">车辆信息</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='<%=basePath%>/pages/show/listshow.jsp'" style="color:white">出售信息</a>
							</td>
							<td width="100">
								<a href="" onclick="window.parent.location.href='<%=basePath%>/pages/show/listshow.jsp'" style="color:white">寻找启示</a>
							</td>    
						</tr>                      
					</table>
                    
                </td>
            </tr>
        </table>
        <table border="0" width="100%" height="90" cellspacing="0" cellpadding="0" style="margin-top:1">
            <tr><td align="center"><img src="<%=basePath%>/images/pcard1.jpg"></td></tr>
        </table>
    </center>
    
    <script type="text/javascript">
    
    var type=${session}
    
    function     method(){
        if(type == 1){
            return true;
        }else{
            alert("非管理员，无此权限");
            return false;
        }
    }
    
    </script>
</body>
</html>