<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
    <title>用户登录页面</title>
    <link rel="stylesheet" href="<%=basePath%>/css/bootstrap.min.css"/>
    <script src="<%=basePath%>/js/jquery-3.3.1.min.js"></script>
    <script src="<%=basePath%>/js/bootstrap.min.js"></script>
</head>
<body>
 <div style="width:500px;margin:0px auto;text-align:center">
	<div style="margin-top:150px">
     
	    <form class="form-horizontal" action="${pageContext.request.contextPath}/registTosql" method="post" >
	  <div class="form-group">
	    <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
	    <div class="col-sm-10">
	      <input type="text" onblur="validate2()" name="user_name" class="form-control" id="userName" >
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
	    <div class="col-sm-10">
	      <input type="password" name="user_password" class="form-control" id="pwd1">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">重复一次密码</label>
	    <div class="col-sm-10">
	      <input type="password" class="form-control" id="pwd2" onblur="validate()" >
	    </div>
	    <span id="tip"></span>
	  </div>
	  
	  <div class="form-group">
	    <div class="col-sm-offset-2 col-sm-10">
	      <button type="submit" id="submit" class="btn btn-default">注册</button>
	    </div>
	  </div>
	  
	</form>
    </div>
    </div>


<script>

function validate2(){
var userName=$("#userName").val();


<c:forEach items="${userName}"  var="u">
if(userName=="${u.user_name}"){
	alert("用户名已经存在"+"${u.user_password}")	
}
</c:forEach>
}

function validate(){
	  var pwd1=document.getElementById("pwd1").value;
	  var pwd2=document.getElementById("pwd2").value;
if(pwd1==pwd2){
	  document.getElementById("submit").disabled=false;
}else{
	  alert("两次密码输入不一致")	
	  document.getElementById("submit").disabled=true;
}   	  
}
</script>
</body>
</html>