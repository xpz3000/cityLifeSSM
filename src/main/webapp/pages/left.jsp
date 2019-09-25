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
<link type="text/css" rel="stylesheet" href="../css/style.css">
	<script language="javascript" type="text/javascript" src="../js/My97DatePicker/WdatePicker.js"></script>
	

</head>
<body>

	<table border="0" width="225" height="100%" cellspacing="0" cellpadding="0">
		<tr height="30"><td style="text-indent:5" valign="bottom"><font color="#004790"><b>■日历</b></font></td></tr>            
		<tr height="1"><td></td></tr>
		<!-- 日历 -->
		<tr height="180">
			<td valign="top"  align="center">
				<div id="div1" style="width:210px"></div>
			</td>
		</tr>
	
		<tr height="1"><td></td></tr>
		<tr height="30"><td style="text-indent:5" valign="bottom"><font color="#004790"><b>■信息快速搜索</b></font></td></tr>
		<tr height="1"><td></td></tr>
		<tr height="103">
		  <td align="center" valign="top" background="../images/leftS.jpg">
		  <form target="showInfo" action="<%=basePath%>selectInfo"  > 
		   <table border="0" width="99%" height="100%" cellspacing="0" style="font-size:13px">
			                       
			<tr height="10"><td colspan="3"></td></tr>
			<tr> 
				<td align="right" width="70">关键字：</td>
				<td colspan="2" width="200"><input type="text" name="valuekey" size="12" value="" id="info_SearchShow_action_searchInfo_sqlvalue"/></td>
			</tr>
			<tr>
				<td align="right">条&nbsp;&nbsp;件：</td>
				<td colspan="2">
					<select name="valuetype" id="info_SearchShow_action_searchInfo_subsql" >
						<option value=""></option>
						<option value="info_content">信息内容</option>
						<option value="info_phone">联系电话</option>
						<option value="info_email">E-mail地址</option>
						<option value="id">ID值</option>
						<option value="info_title">信息标题</option>
						<option value="info_linkman">联系人</option>
					</select>

				</td>
				
			</tr>
			<tr>
				<td align="right">搜索类型：</td>
				<td width="80px">
					<input type="radio" name="checktype" id="info_SearchShow_action_searchInfo_typeall" value="all"/>
					<label for="info_SearchShow_action_searchInfo_typeall">全字匹配</label>
					<br>
					<input type="radio" name="checktype" id="info_SearchShow_action_searchInfo_typelike" checked="checked" value="like"/>
					<label for="info_SearchShow_action_searchInfo_typelike">模糊搜索</label>
					
				</td>
				<td align="center" >
					<input type="submit" id="info_SearchShow_action_0" value="搜索"/>
				</td>
			</tr>
			<tr height="10"><td colspan="3"></td></tr>
		
		</table>
		</form>
	</td>
</tr>
<tr><td></td></tr>
</table>                
</body>
	<script>
		WdatePicker({eCont:'div1'})
	</script>
</html>