<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>校内老师管理后台</title>
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
      <a class="navbar-brand" href="#">学生信息管理</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
     
      <ul class="nav navbar-nav navbar-right ">
        <li><a href="#">欢迎 <span>${sessionScope.teacher.name}</span>   </a></li>
        <li class="dropdown">
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
          成员管理<span class="col-md-4 glyphicon glyphicon-user" ></span>
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/schoolTeacher/studentList">学生列表</a></li>
	</ul>
      </div>
    </div>
  </div>
  <!-- 面板二-->
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
          信息管理<span class="col-md-4 glyphicon glyphicon-folder-open"></span>
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/schoolTeacher/studentInfo">学生信息</a></li>
	</ul>
      </div>
    </div>
  </div>
  <!-- 面板三 -->
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseOne">
          考勤管理<span class="col-md-4 glyphicon glyphicon-tags"></span>
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/schoolTeacher/studentKao">学生考勤</a></li>
	</ul>
      </div>
    </div>
  </div>
  <!-- 面板四 -->
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingFour">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapseOne">
          周记管理<span class="col-md-4 glyphicon glyphicon-book"></span>
        </a>
      </h4>
    </div>
    <div id="collapseFour" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/schoolTeacher/studentWeek">学生周记</a></li>
	</ul>
      </div>
    </div>
  </div>
     <!-- 面板五 -->
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingFive">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="true" aria-controls="collapseOne">
          推送管理<span class="col-md-4 glyphicon glyphicon-pencil"></span>
        </a>
      </h4>
    </div>
    <div id="collapseFive" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/schoolTeacher/sendInfo">推送信息</a></li>
	   <li class="list-group-item"><a href="${pageContext.request.contextPath}/schoolTeacher/histroyInfo">历史推送</a></li>
	</ul>
      </div>
    </div>
  </div>
</div>
</div>
	<!-- 中间部分 -->
<div class="col-sm-8">
<!-- 标签页组 -->
	<div>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">推送信息</a></li>
  </ul>

  <!-- Tab panes -->
 
  <div class=" tab-content">
    <div  role="tabpanel" class=" tab-pane active" id="home">
    <div class="page-header">
  		<h2>推送人： <small>${sessionScope.teacher.name}</small></h2>
	</div>
	<form role="form" action="${pageContext.request.contextPath}/schoolTeacher/sendClass" method="post">
  		<select required="required"  style="font-family: '微软雅黑'; font-size: 25px;" name="student">
  			<option style="color: #b6b6b6" disabled selected >请选择对象</option>
  			<c:forEach items="${requestScope.list}" var="list">
  			<option value="${list.studentId }">${list.studentName }</option>
  			</c:forEach>
  		</select>
  		<br>
  		<br>
  		<div class="form-group">
			 <textarea required="required" name="info" class="form-control" rows="10" placeholder="Please enter push message..."></textarea>
			</div>
			<br>
			<div>
				  <button   type="submit"  class="btn btn-info" id="btn-btn-success"  >立即推送</button>
			</div>
	</form>
    </div>
 </div>
 </div>
</div>
	</div>
		</div>
</body>
</html>
