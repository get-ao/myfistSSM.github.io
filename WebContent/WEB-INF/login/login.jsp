<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>学生顶岗实习系统</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>

</head>
<body style="background-image: url('${pageContext.request.contextPath}/image/bg1.jpg');
	background-repeat: no-repeat;
	background-size: cover;">
	<div class="login" style="width: 500px;
	height:400px;
	background-image: linear-gradient(rgba(171,220,255,0.8), rgba(3,150,255,0.8));
	margin-top: 100px;
	margin-left:400px;
	padding: 20px 100px 10px;" >
	<h2 style="padding-bottom:30px; color:#9b95c9;text-align:center;">登 陆 界 面</h2>
	<form class="bs-example bs-example-form" role="form" action="${pageContext.request.contextPath}/login/person" method="post">
	<div class="input-group">
			<span class="input-group-addon">用户名:</span>
            <input type="text" required="required" class="form-control" name="user" placeholder="Username">
	</div> 
	<br>
	<div class="input-group">
			<span class="input-group-addon">密&nbsp;&nbsp;&nbsp;&nbsp;码:</span>
            <input name="psw"  required="required" type="password" class="form-control" placeholder="Password">
	</div>
	<br>
	<div class="input-group">
    <span class="input-group-addon">所属角色</span>	
		<select  name="choose" class="form-control" style="color:#999d9c;font-size:17px;" >
			<option   value="1">学生</option>
			<option   value="2">校内老师</option>
			<option   value="3">企业老师</option>
			<option   value="4">企业负责人</option>
			<option   value="5">教学管理人员</option>
			<option   value="6">管理员</option>
		</select>
</div>
	<br>
	<div class="input-group-inline">
	 <button type="submit" class="btn btn-info" id="btn-btn-info"  >登&nbsp;&nbsp;&nbsp;&nbsp;陆</button>
	 </div>
	</form>
	</div>
			
</body>
</html>