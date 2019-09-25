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
<link type="text/css" rel="stylesheet" href="../../css/style.css">
<script src="<%=basePath%>/js/jquery-3.3.1.min.js"></script>
</head>
<body background="../../images/back.gif">
<center>
     <table border="0" width="920" cellspacing="0" cellpadding="0" bgcolor="white">
         <tr>
<td colspan="2">
<!-- 页眉 -->
<iframe src="../../pages/top.jsp" frameBorder="0" width="920" scrolling="no" height="200" ></iframe>
</td>
</tr>
         <tr>
             <td width="230" valign="top" align="center">
	<!-- 左边 -->
<iframe src="../../pages/left.jsp" frameBorder="0" width="225" scrolling="no" height="400" ></iframe>
</td>
            <td width="690" height="400" align="center" valign="top" bgcolor="#FFFFFF">
<table border="0" cellpadding="0" cellspacing="0" width="688" height="100%">
	<tr height="20"><td><img src="../../images/default_t.jpg"></td></tr>
	<tr>
		<td background="../../images/default_m.jpg" valign="top" align="center">
			<form  >
			<input type="hidden" name="addType" value="add"/>
			<table border="0" width="650" height="300"  cellspacing="0">
				<tr height="30"><td style="text-indent:10"><font color="#004790"><b>■发布信息</b></font></td></tr>
	<tr>
		<td align="center">
			<table border="0" width="650"  cellspacing="8">                    
				<tr>
					<td width="20%" style="text-indent:10">信息类别：</td>
					<td>
					   <select name="info_type" id="info_type">
							<option value=""></option>
							<option value="0">暂时没有信息</option>
							<option value="1">招聘信息</option>
							<option value="2">培训信息</option>
							<option value="3">房屋信息</option>
							<option value="4">求购信息</option>
							<option value="5">招商引资</option>
							<option value="6">公寓信息</option>
							<option value="7">求职信息</option>
							<option value="8">家教信息</option>
							<option value="9">车辆信息</option>
							<option value="10">出售信息</option>
							<option value="11">寻找启示</option>
						</select>			
					</td>
					<td align="right"><font color="#7F7F7F">[信息标题最多不得超过40个字符]&nbsp;&nbsp;</font></td>
				</tr>
				<tr><td colspan="3"></td></tr>
				<tr>
					<td style="text-indent:10">信息标题：</td>
					<td colspan="2"><input type="text" name="info_title" size="80" maxlength="40" value="" id="info_title"/></td>                        
				</tr>
				<tr><td colspan="3"></td></tr>
				<tr>
					<td style="text-indent:10">信息内容：</td> 
					<td align="right"><font color="#7F7F7F">[信息内容最多不得超过500个字符]&nbsp;&nbsp;</font></td>
				</tr>
				<tr><td colspan="3"></td></tr>
				<tr><td colspan="3" align="center"><textarea name="info_content" cols="75" rows="10" id="info_content" ></textarea></td></tr>
				<tr>
					<td style="text-indent:10">联系电话：</td>
					<td colspan="2"><input type="text" name="info_phone" size="45" value="" id="info_phone"/><font color="gray">&nbsp;[多个电话以逗号分隔！]</font></td>
				</tr>
				<tr><td colspan="3"></td></tr>
				<tr>
					<td style="text-indent:10">联 系 人：</td>
					<td colspan="2"><input type="text" name="info_linkman" size="50" value="" id="info_linkman"/></td>
				</tr>
				<tr><td colspan="3"></td></tr>
				<tr>
					<td style="text-indent:10">E - mail：</td>
								<td colspan="2"><input type="text" name="info_email" size="55" value="" id="info_email"/></td>                    
							</tr>
							<tr><td colspan="3"></td></tr>                        
						</table>                
					</td>
				</tr>
				<tr align="center" height="50">
					<td>
						<input type="button" id="sendInfo" value="&#21457;&#24067;"/>
						<input type="reset" value="&#37325;&#22635;"/>
					</td>
				</tr>
			</table>
			</form>
		</td>
	</tr>
	<tr height="26"><td><img src="../../images/default_e.jpg"></td></tr>        
</table>
</td>
        </tr>
    </table>        
</center>

<script type="text/javascript">

	$("#sendInfo").click(function(){				
		var info_type=$("#info_type").val();
		var info_title=$("#info_title").val();
		var info_content=$("#info_content").val();
		var info_linkman=$("#info_linkman").val();
		var info_email=$("#info_email").val();	
		var info_phone=$("#info_phone").val();	
		$.ajax({
			url:"<%=basePath%>addInfo",
			type:"post",
			dataType:"text",
			data:{
				'info_type':info_type,
				'info_title':info_title,
				'info_content':info_content,
				'info_linkman':info_linkman,
				'info_email':info_email,	
				'info_phone':info_phone,
			},
			success : function(data){
				if(data==1)
				alert("成功");
			},
			error : function(data){
				console.log("111111111111");
			},																
		})		
	})			
</script>
</body>
</html>