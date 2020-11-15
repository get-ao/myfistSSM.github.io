<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>教学管理后台</title>
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
      <a class="navbar-brand" href="">教学人员管理后台</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
     
      <ul class="nav navbar-nav navbar-right ">
        <li><a href="#">欢迎 <span>${sessionScope.studyer.name}</span>  </a></li>
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
          实习大纲<span class="col-md-4 glyphicon glyphicon-user" ></span>
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/adminStudy/stu_program">查看信息</a></li>
	</ul>
      </div>
    </div>	
  </div>	
  <!-- 面板二-->
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
         分配老师<span class="col-md-4 glyphicon glyphicon-folder-open"></span>
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/teachingControl/stu_teacher">查看信息</a></li>
	</ul>
      </div>
    </div>
  </div>
  <!-- 面板三 -->
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseOne">
          申请审核<span class="col-md-4 glyphicon glyphicon-tags"></span>
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/teachingControl/stu_audit">查看信息</a></li>
	</ul>
      </div>
    </div>
  </div>
</div>
</div>

	<!-- 中间部分 -->
<div id="content" class="col-sm-10">
	<div style="margin-top: -15px;" class="page-header">
  		<h1>学生申请审核列表</h1>
	</div>
	<div>
		<ul	class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">具体情况</a></li>
		</ul>
	</div>
	<div class=" tab-content">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>学号</th>
					<th>姓名</th>
					<th>申请职位</th>
					<th>审核状态</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${requestScope.list}" var="list">
					<tr>
						<th>${list.studentId }</th>
						<th>${list.studentName }</th>
						<th>${list.applyJob==""?"暂未申请":list.applyJob }</th>
						<th><input onclick="change(this)" id="kao" type="text" readonly="readonly" class="form-control" style="height:30px; width: 90px;" value="${list.applyJob==''?'暂无审核':list.auditSituation}" name="kaoqin"/> </th>
						<th>
							<button  type="submit" class="btn btn-success btn-sm" onclick="save(this)" >保存修改</button>
						</th>
						<th></th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	</div>
	</div>
</div>
</body>
<script type="text/javascript">
function change(x) {
	var	rows = x.parentNode.parentNode.rowIndex;//获取当前行数
	//修改当前行的input属性
	$('table input:eq('+(rows-1)+')').attr('readonly',false);
	// var id = $(x).parents('tr').children('th').eq(0).text();
	}
	function save(x) {
		var	rows = x.parentNode.parentNode.rowIndex;
	var txt  =	$('table input:eq('+(rows-1)+')').val();
	$('table input:eq('+(rows-1)+')').attr('readonly',true);
	var id = $(x).parents('tr').children('th').eq(0).text();
	$.ajax({
		type:"post",
		url:"${pageContext.request.contextPath}/teachingControl/stu_teacherEdit",
		data:{
			id:id,
			txt:txt
		},
			error:function(){
			alert("编辑失败");
		},
		success:function(){
			alert("编辑成功");
		}
	})
	}
</script>
</html>