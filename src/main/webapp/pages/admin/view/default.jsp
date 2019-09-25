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
	<script src="<%=basePath%>/js/jquery-3.3.1.min.js"></script>
    <script src="<%=basePath%>/js/bootstrap.min.js"></script>
   
<body>
    <center>    
    
        <table  class="table table-bordered" id="showUser" border="0" cellpadding="0"  width="650" height="300">                      
        
        </table>        
    </center>
</body>

<script type="text/javascript">
//$('#showAllUser').hide();

	 //   $("#showAllUser").click(function(){
	//	$.ajax({
	
	//		type:'get',
	//		contentType: 'application/json;charset=utf-8',
			
			
	//		success : function(data){
	//			$("#showAllUser").attr("style","display:none;");
	//	$("#showUser").append("<tr><td>姓名</td><td>状态</td><td></td><tr/>")
	//			for(var i=0;i<data.length;i++){					
	//	$("#showUser").append("<tr><td>"+data[i].user_name+"</td><td>"+
	//			data[i].user_statue+"</td><tr/>")
	//			}	
	   		
	//		},
	//		error: function(data){
	//			alert("出错了......")
	//		}
	//	})		
	//})
	
	//$.ajax({
	//	type:"get",
	//	url:"right.jsp",
	//	dataType:"json",
	//	success : function(data){ $('.content').html(data)
//
	//		$("#showUser").append("<tr><td>姓名</td><td>状态</td><td></td><tr/>")
	//				for(var i=0;i<data.length;i++){					
	//		$("#showUser").append("<tr><td>"+data[i].user_name+"</td><td>"+
	//				data[i].user_statue+"</td><tr/>")
	//				}	
	//	   		
	//			},
	//			error: function(data){
	//				alert("出错了......")
	//			}
	//			
		
	//})
	
	</script>

</html>