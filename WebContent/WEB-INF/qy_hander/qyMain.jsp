<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>企业负责人后台页面</title>
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
      <a class="navbar-brand" href="">企业招聘信息管理</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
     
      <ul class="nav navbar-nav navbar-right ">
        <li><a href="#">欢迎 <span>${sessionScope.qy_hander.name}</span>  </a></li>
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
          毕业生情况<span class="col-md-4 glyphicon glyphicon-user" ></span>
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/qy_hander/qyGraduates">查看信息</a></li>
	</ul>
      </div>
    </div>	
  </div>	
  <!-- 面板二-->
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
          招聘管理<span class="col-md-4 glyphicon glyphicon-folder-open"></span>
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/qy_hander/qyJob">查看信息</a></li>
	</ul>
      </div>
    </div>
  </div>
  <!-- 面板三 -->
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseOne">
          指导情况<span class="col-md-4 glyphicon glyphicon-tags"></span>
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/qy_hander/qyGuide">查看信息</a></li>
	</ul>
      </div>
    </div>
  </div>
  
</div>
</div>

	<!-- 中间部分 -->
<div id="content" class="col-sm-10">
	<!-- 巨幕 -->
<div style="width:100%; " class="jumbotron">
  <h1 style="text-align: center;" >Hello, CompanyHandler!</h1>
  <p style="text-align: center;">欢迎使用企业负责人管理系统</p>
  <p style="text-align: center;" ><a tabindex="0"  class="btn btn-primary btn-lg" data-toggle="popover" data-trigger="focus"
  title="Learn more" data-content="更多功能尽在后面！" id="more" role="button">Learn more</a></p>
  <br>
  <div >
  	<ul>
  	<li>开发工具eclipse+tomcat+jdk1.8+mysql</li>
  	<li>开发语言Java，jsp，html，css，JavaScript，ajax</li>
  	<li>后端框架ssm</li>
  	<li>前端框架bootstrap</li>
  	</ul>
  	</div>
	</div>
	</div>
	</div>
</div>
	<script type="text/javascript">
	$(function () {
		  $('[data-toggle="popover"]').popover()
		})
	$('#example').popover()
	</script>
</body>
</html>