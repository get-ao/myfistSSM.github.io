<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>学生信息</title>
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
      <a class="navbar-brand" href="">学生个人主页</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
     
      <ul class="nav navbar-nav navbar-right ">
        <li><a href="#">欢迎 <span>${sessionScope.user.name}</span>  </a></li>
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
          个人信息<span class="col-md-4 glyphicon glyphicon-user" ></span>
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/studentControl/info">查看信息</a></li>
	</ul>
      </div>
    </div>	
  </div>	
  <!-- 面板二-->
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
          个人周记<span class="col-md-4 glyphicon glyphicon-folder-open"></span>
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/studentControl/week">编写周记</a></li>
	</ul>
      </div>
    </div>
  </div>
  <!-- 面板三 -->
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseOne">
          个人岗位<span class="col-md-4 glyphicon glyphicon-filter"></span>
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/studentControl/job">岗位申请</a></li>
	</ul>
      </div>
    </div>
  </div>
  <!-- 面板四 -->
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingFour">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="true" aria-controls="collapseOne">
          个人推送<span class="col-md-4 glyphicon glyphicon-comment"></span>
        </a>
      </h4>
    </div>
    <div id="collapseFour" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/studentControl/sendinfo">查看推送</a></li>
	</ul>
      </div>
    </div>
  </div>
</div>
</div>

	<!-- 中间部分 -->
<div class="col-sm-10">
<!-- 标签页组 -->
	<div>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">编写周记</a></li>
  </ul>

  <!-- Tab panes -->
 
  <div class=" tab-content">
    <div  role="tabpanel" class=" tab-pane active" id="home">
    <div class="col-sm-8">
    <br>
    	<div class="page-header" style="margin-top: -15px">
  				<h1>编写人： <small>${sessionScope.user.name}</small></h1>
		</div>
	<br>
		<form role="form" method="post" action="${pageContext.request.contextPath}/studentControl/weekChange">
			
			<div class="form-group">
			 <textarea name="week" class="form-control" rows="10" placeholder="textarea for week data....">${requestScope.sAttribute.weekly}</textarea>
			</div>
			<br>
			<div>
				  <button   type="submit"  class="btn btn-info" id="btn-btn-success"  >保存周记</button>
			</div>
		</form>
	</div>
    </div>
 </div>
 </div>
</div>
	</div>
</div>
	
</body>
</html>