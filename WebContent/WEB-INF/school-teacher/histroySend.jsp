<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
<div class="col-sm-10">
<!-- 标签页组 -->
	<div>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">历史推送</a></li>
  </ul>

  <!-- Tab panes -->
 
  <div class="  tab-content">
    <div  role="tabpanel" class=" tab-pane active" id="home">
    <table  class=" table table-hover">
    <thead>
    	<tr>
    		<th>#id</th>
    		<th>推送人</th>
    		<th>推送对象</th>
    		<th>推送内容</th>
    		<th>推送时间</th>
    		<th>操作</th>
    	</tr>
    </thead>
    <tbody>
    <c:forEach items="${requestScope.list}" var="list">
    	<tr>
    		<th scope="row">${list.id}</th>
    		<td>${list.stName}</td>
    		<td>${list.student}</td>
    		<td>
				<textarea data-toggle="popover" data-trigger="focus" title="全部信息" data-placement="top" data-content="${list.info}"   style=" overflow:hidden; border: none; resize: none;" readonly="readonly" rows="1" cols="20">${list.info}</textarea>
			</td>
			<td><fmt:formatDate value="${list.time}" pattern="G yyyy年MM月dd日 E"/></td>
    	<td>
    			<a href="${pageContext.request.contextPath}/schoolTeacher/histroyInfoDel?id=${list.id} " class="btn btn-danger btn-sm">删除历史</a>
    		</td>
    	</tr>
    </c:forEach>
    </tbody>
    </table>
    </div>
 </div>
 </div>
</div>
	</div>
		</div>
</body>
<script type="text/javascript">
	$(function () {
		  $('[data-toggle="popover"]').popover()
		})
	$('#example').popover()
	</script>
</html>
