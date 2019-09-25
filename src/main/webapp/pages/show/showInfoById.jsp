<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
 <%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>后台首页</title>
    	<script src="<%=basePath%>/js/jquery-3.3.1.min.js"></script>
    	<script src="<%=basePath%>/js/bootstrap.min.js"></script>
</head>
<body>
    <center>
        <table border="0" cellpadding="0" cellspacing="0" width="688" height="346">
            <tr height="20"><td><img src="<%=basePath %>/images/default_t.jpg"></td></tr>
            <tr height="30" background="<%=basePath %>/images/default_m.jpg">
            	<td style="text-indent:5;border:1 solid">&nbsp;<font color="#004790"><b>&nbsp;■详细信息</b></font>	            	
	            	<button id="btn1" >审核通过</button>
            		<button id="btn2" >设置付费</button>
            	</td>
            </tr>
            <tr><td background="<%=basePath%>/images/default_m.jpg" valign="top">
				<!-- 内容区 -->
				<table bgcolor="#F0F0F0" style="margin-left:20px" border="0" cellpadding="0" cellspacing="0" width="650" height="auto">
					<tr height="30">
                        <td  width="22%">信息类别：</td><td width="33%">${info.info_type}</td>
                    </tr>
          			<tr height="30">
						<td>发布时间：</td><td>${info.info_date}</td>
					</tr>
					<tr height="30">
						<td>信息标题：</td><td>${info.info_title}</td>
					</tr>
					<tr height="30">
						<td>信息内容：</td>
					</tr>
					<tr height="60">
						<td colspan="3">${info.info_content}</td>
					</tr>
					<tr height="30">
						<td >联系人：${info.info_linkman}</td>
						<td >E-mail：${info.info_email}</td>
						<td >联系电话：${info.info_phone}</td>
					</tr>
					<tr height="60">
						<td colspan="3" align="center">
							<a>返回</a>
						</td>
					</tr>
				</table>
				 
				</td>
			</tr>
            <tr height="26"><td><img src="<%=basePath %>/images/default_e.jpg"></td></tr>        
        </table>
    </center>    
</body>
<script type="text/javascript">
	
		var id=${info.id}

    	$("#btn1").click(function(){
    		$.ajax({
    			url:"<%=basePath %>/setcheck",
    			type:'post',
    			data:{"id":id},
    			dataType:"json",
    			success:function(data){
    				if(data==1){
    					alert("6666")
    				}
    				
    			}
    		})		
    	});
    	
    	$("#btn2").click(function(){
    		$.ajax({
    			url:"<%=basePath %>/setpay",
    			type:'post',
    			data:{"id":id},
    			dataType:"json",
    			success:function(data){
    				if(data==1){
    					alert("6666")
    				}
    				
    			}
    		})	
    	});
    </script>
</html>