<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>企业老师后台页面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<!-- 头部导航条 -->
	<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <a class="navbar-brand" href="">指导老师信息管理</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
     
      <ul class="nav navbar-nav navbar-right ">
        <li><a href="#">欢迎 <span>${sessionScope.qyTeacher.name}</span>  </a></li>
        <li >
          <a href="${pageContext.request.contextPath}/index.jsp"  role="button"  >安全退出 </a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<!-- 左侧菜单栏 -->
<div >
<div  class="row">
<div  class="col-sm-2">
<!-- 菜单组件 -->
<div  class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
<!-- 面板一-->
<div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          考勤管理<span class="col-md-4 glyphicon glyphicon-user" ></span>
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/qyTeacher/attendance">查看信息</a></li>
	</ul>
      </div>
    </div>	
  </div>	
  <!-- 面板二-->
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
          周记查看<span class="col-md-4 glyphicon glyphicon-folder-open"></span>
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/qyTeacher/weekly">查看信息</a></li>
	</ul>
      </div>
    </div>
  </div>
  <!-- 面板三 -->
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseOne">
          实习评定<span class="col-md-4 glyphicon glyphicon-tags"></span>
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/qyTeacher/evaluation">编写评定</a></li>
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/qyTeacher/evaluationInfo">查看评定</a></li>
	</ul>
      </div>
    </div>
  </div>
  
</div>
</div>

	<!-- 中间部分 -->
<div id="content" class="col-sm-8">
	<div style="margin-top: -15px;" class="page-header">
  <h1>编写学生报告</h1>
	</div>
	<!-- 页头 -->
	<div>
		<ul	class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">学生评价</a></li>
		</ul>
	</div>
	<!-- 提交表单-->
	<br>
		<form class="form-horizontal" method="post" action="${pageContext.request.contextPath}/qyTeacher/evaluationSubmit">
			<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">学号</label>
    			<div class="col-sm-8">
      				<input type="text" required="required" class="form-control" name="studentId" placeholder="studentID">
    			</div>
			</div>
			<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">姓名</label>
    			<div class="col-sm-8">
      				<input type="text" required="required" class="form-control" name="name" placeholder="studentName">
    			</div>
			</div>
			<div class="form-group">
      			<label for="inputEmail3" class="col-sm-2 control-label">性别</label>
      			<div class="col-sm-8">
          		<input type="radio" name="sex" checked="checked"> 男
          		<input type="radio" name="sex" > 女
          		</div>
  </div>
  	<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">专业</label>
    			<div class="col-sm-8">
      				<input type="text" required="required" class="form-control" name="pro" placeholder="studentGrade">
    		</div>
	</div>
	<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">职位</label>
    			<div class="col-sm-8">
      				<input type="text" required="required" class="form-control" name="job" placeholder="studentJob">
    		</div>
	</div>
	<div class="form-group">
			<label for="inputEmail3" class="col-sm-2 control-label">评语</label>
    		<div class="col-sm-8">
      			<textarea required="required"  name="results" style="overflow:hidden;   resize: none;" placeholder="evaluation...." rows="3" cols="30"></textarea>
    		</div>
	</div>
	<div class="form-group">
			<label style="margin-top: -8px;" class="col-sm-2 control-label">等级</label>
    		<div class="col-sm-8">
    			<select style="font-size: 14px;" name="score">
    				<option disabled selected >请选择等级</option>
    				<option value="A">A</option>
    				<option value="B">B</option>
    				<option value="C">C</option>
    				<option value="D">D</option>
    			</select>
    		</div>
	</div>
<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-success">提交</button>
      <button type="reset" class="btn btn-default">重置</button>
    </div>
  </div>
		</form>
	</div>
	</div>
</div>
	
</body>
</html>