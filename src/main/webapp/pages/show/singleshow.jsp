<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()
    		+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="<%=basePath%>/css/style.css">
  <script language="javascript" type="text/javascript" src="../../js/My97DatePicker/WdatePicker.js"></script>
</head>
<body background="../../pages/back.gif">
	<div align="center">
		<!-- 页眉 -->
		<iframe src="../../pages/top.jsp" frameBorder="0" width="920" scrolling="no" height="200" ></iframe>
		 
		<table border="0" width="920" cellspacing="0" cellpadding="0" bgcolor="white" style="text-align:center;">
			
			<tr>
				<!-- 左侧 -->
				<td width="230" valign="top" align="center">
					<iframe src="../../pages/left.jsp" frameBorder="0" width="225" scrolling="no" height="400" ></iframe>
				</td>
				
				<td width="690" height="400" align="center" valign="top" bgcolor="#FFFFFF">   

					<table width="670" border="0" cellspacing="0" cellpadding="0" style="margin-top:5">
					
						<tr height="30">
							<td style="text-indent:5" valign="bottom"><font color="#004790"><b>■查看详细信息</b></font></td>
						</tr>            
						<tr height="1">
							<td></td>
						</tr>
						<tr bgcolor="#FAFCF5">
							<td style="border:1 solid">
								<table border="0" width="100%" cellspacing="0" cellpadding="2" style="font-size:14px;">
									<tr height="30">
										<td width="20%" style="text-indent:20">信息类别：</td>
										<td>车辆信息</td>
									</tr>
									<tr height="30">
										<td style="text-indent:20">发布时间：</td>
										<td>2014-10-26 11:54:05</td>
									</tr>
									<tr height="30">
										<td style="text-indent:20">信息标题：</td>
										<td>车辆信息标题</td>
									</tr>
									<tr height="30">
										<td colspan="2" style="text-indent:20">信息内容：</td>
									</tr>
									<tr>
										<td colspan="2" style="text-indent:20">车辆信息内容：</td>
									</tr>
									<tr height="40">
										<td colspan="2" align="left">
											<table border="0" width="630" cellspacing="0" cellpadding="0"  style="word-break:break-all;font-size:14px;" >
												<tr height="20" align="center">
													<td>联系电话：13255******</td>
													<td>联系人：芳芳</td>
													<td>E-mial：888@89*.com</td>
												</tr>
											</table>                      
										</td>
									</tr>
									<tr height="40">
										<td align="center" colspan="2" ><a href="javascript:window.history.back(-1)">返回</a></td>
									</tr>                              
								
								</table>
							</td>
						</tr>
					</table>
					<br>
					 
				</td>
				
			</tr>      
		</table>
		 
		<!-- 页脚 -->
		<iframe src="../../pages/end.jsp" frameBorder="0" width="920" scrolling="no" height="70" style="margin-top:0"></iframe>        
	</div>
</body>

</html>