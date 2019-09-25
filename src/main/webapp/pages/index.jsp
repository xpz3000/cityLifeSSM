<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
     
	    <form class="form-horizontal" 
	    action="${pageContext.request.contextPath}/login" method="post" >
	  <div class="form-group">
	   <label for="inputEmail3" class="col-sm-2 control-label">用户名</label>
	    <div class="col-sm-10">
	      <input type="text" name="user_name" class="form-control">
	    </div>
	  </div>
	  <div class="form-group">
	    <label for="inputPassword3" class="col-sm-2 control-label">密码</label>
	    <div class="col-sm-10">
	      <input type="password" name="user_password" class="form-control" id="inputPassword3" placeholder="Password">
	    </div>
	  </div>
	  <div class="form-group">
	    <div class="col-sm-offset-2 col-sm-10">
	      <button type="submit" class="btn btn-default">登录</button>
	    </div>
	  </div>
	</form>
	<div class="form-group">
	    <div class="col-sm-offset-2 col-sm-10">
	      <button type="button" class="btn btn-default"><a href="<%=basePath%>regist">注册</a></button>
	    </div>
	  </div>
    </div>
    </div>
</body>

<script type="text/javascript">
var a = "${msg}";
var b = "${msg2}";
if(b=="fail"){
  alert(a)
  }
</script>
</html>
