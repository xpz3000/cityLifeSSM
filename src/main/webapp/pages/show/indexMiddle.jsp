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
</head>
<body>
<table border="0" width="670" cellspacing="0" cellpadding="5">
	<tr height="35"><td style="text-indent:5" valign="bottom"><font color="#004790"><b>■推荐信息</b>『缴费专区』</font></td></tr>
	<tr bgcolor="#FAFCF5">
		<td style="border:1 solid">
			<table border="0" width="100%" cellspacing="0" cellpadding="0">
				 <tr height="23">
					<td width="50%">『<b>求职信息</b>』
						<a href="<%=basePath%>pages/show/singleshow.jsp">求职信息标题</a>
					</td>
					<td width="50%">『<b>招聘信息</b>』
						<a href="<%=basePath%>advertises">招聘信息标题</a>
					</td>
				 </tr>
			
				 <tr height="23">
					<td width="50%">『<b>培训信息</b>』
						<a href="<%=basePath%>/pages/show/singleshow.jsp">培训信息标题</a></td>
					<td width="50%">『<b>求购信息</b>』
						<a href="<%=basePath%>/pages/pages/show/singleshow.jsp">求购信息标题</a></td>
				 </tr>
				 
				 <tr height="23">
					<td width="50%">『<b>求职信息</b>』
						<a href="<%=basePath%>/pages/show/singleshow.jsp">求职信息标题</a>
					</td>
					<td width="50%">『<b>招聘信息</b>』
						<a href="<%=basePath%>/pages/show/singleshow.jsp">招聘信息标题</a>
					</td>
				 </tr>
			
				 <tr height="23">
					<td width="50%">『<b>培训信息</b>』
						<a href="<%=basePath%>/pages/show/singleshow.jsp">培训信息标题</a></td>
					<td width="50%">『<b>求购信息</b>』
						<a href="<%=basePath%>/pages/show/singleshow.jsp">求购信息标题</a></td>
				 </tr>
				                
			</table>
		</td>
	</tr>
</table>
<!-- 广告 -->
<table border="0" width="670"cellspacing="0" cellpadding="0" style="margin-top:1">
	<tr><td align="center"><img src="<%=basePath%>/images/pcard2.jpg"></td></tr>
</table>        
<!-- 免费专区 -->

<table border="0" width="670" cellspacing="2" cellpadding="0">
	<tr height="35"><td colspan="2" style="text-indent:5" valign="bottom"><font color="#004790"><b>■最新信息</b>『免费专区』</font></td></tr>            
	 
	<tr>
		<td align="center">
			<table border="1" cellspacing="0" cellpadding="0" width="332" height="160" rules="none" bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">
			
			</table>
		</td>
	

 
	</tr>

	<tr>
		<td align="center">
			<table border="1" cellspacing="0" cellpadding="0" width="332" height="160" rules="none" bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">
			<tr bgcolor="#00B48F" height="30">
				<td style="text-indent:10"><b><font color="white">培训信息</font></b></td> </tr>
			<tr bgcolor="#FAFCF5"><td style="text-indent:3">★ <a href="<%=basePath%>/pages/show/singleshow.jsp">发布培训信息标题</a></td></tr>
			<tr height="20" bgcolor="#FAFCF5"><td align="right"><a href="<%=basePath%>/pages/show/listshow.jsp">更多...</a>&nbsp;&nbsp;</td></tr>	
			
			</table>
		</td>

		<td align="center">
			<table border="1" cellspacing="0" cellpadding="0" width="332" height="160" rules="none" bordercolor="lightgrey" bordercolorlight="lightgrey" bordercolordark="white">
				
				 <tr bgcolor="#00B48F" height="30">
					<td style="text-indent:10"><b><font color="white">求职信息</font></b></td>                                      
				 </tr>
			
				<tr bgcolor="#FAFCF5">
					<td style="text-indent:3">★ <a href="<%=basePath%>/pages/show/singleshow.jsp">发布求职信息标题</a></td>
				</tr>
				<tr height="20" bgcolor="#FAFCF5">
					<td align="right"><a href="<%=basePath%>/pages/show/listshow.jsp">更多...</a>&nbsp;&nbsp;</td>
				</tr>                                    
			 
			</table>
		</td>
	</tr>

</table>

</body>
</html>