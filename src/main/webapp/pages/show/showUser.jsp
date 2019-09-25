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
<title>Insert title here</title>
    <link rel="stylesheet" href="<%=basePath%>/css/bootstrap.min.css"/>
    <script src="<%=basePath%>/js/jquery-3.3.1.min.js"></script>
    <script src="<%=basePath%>/js/bootstrap.min.js"></script>
    

</head>
<body>

<table class="table table-hover">
		<tr>
	        <td>用户ID</td>
	        <td>用户姓名</td>
	        <td></td>
	        <td></td>
		</tr>
		<c:forEach items="${users}"  var="u">
			<tr>
				<td>${u.id}</td>
				<td>${u.user_name}</td>
				<td><button type="button" class="btn btn-default btn-s" data-toggle="modal" 
				data-target="#exampleModal" data-1="${u.user_name}" data-2="${u.user_password}" 
				data-3="${c.user_type}" ><i class="glyphicon glyphicon-pencil"></i></button>
			</td>
			<td><a href="<%=basePath%>removeUser?id=${u.id}"><i class="glyphicon glyphicon-trash"></i></a>
			
			
			</td>
			</tr>
			</c:forEach>
	</table>
	
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="exampleModalLabel">New </h4>
      </div>
      <form method="post" action="<%=basePath%>adminUpdateStu">
      <div class="modal-body">
        <input type="hidden" id="recipient-name1" name="userId" >
          <div class="form-group">
            <label for="recipient-name" class="control-label">姓名:</label>
            <input type="text" id="recipient-name2" class="form-control" name="user_name">
          </div>
          <div class="form-group">
            <label for="recipient-name" class="control-label">密码:</label>
            <input type="text" id="recipient-name3" class="form-control" name="user_password" >
          </div>
          <div class="form-group">
            <label for="recipient-name" class="control-label">用户类型:</label>
            <input type="text" id="recipient-name4" class="form-control" name="user_type">
          </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <button type="submit" class="btn btn-primary">保存</button>
      </div>
      </form>
    </div>
  </div>
</div>
	    <script >
    
    $('#exampleModal').on('show.bs.modal', function (event) {
    	  var button = $(event.relatedTarget) 
    	  var recipient1 = button.data('1') 
    	  var recipient2 = button.data('2')
    	  var recipient3 = button.data('3')

    	  var modal = $(this)
    	  modal.find('.modal-title').text('修改' + recipient2+'用户信息')
    	  modal.find('.modal-body input#recipient-name1').val(recipient1)
    	  modal.find('.modal-body input#recipient-name2').val(recipient2)
    	  modal.find('.modal-body input#recipient-name3').val(recipient3)
    	})
    </script>

</body>
</html>