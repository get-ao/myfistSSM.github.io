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
<div id="content" class="col-sm-10">
	<div style="margin-top: -15px;" class="page-header">
  <h1>学生评价情况</h1>
	</div>
	<!-- 页头 -->
	<div>
		<ul	class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">学生评价表</a></li>
		</ul>
	</div>
	<!-- 内容 -->
	<div class=" tab-content">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>学号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>专业</th>
					<th>评价</th>
					<th>等级</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${requestScope.list}" var="list">
					<tr>
						<th>${list.studentId }</th>
						<th>${list.name }</th>
						<th>${list.sex}</th>
						<th>${list.pro }</th>
						<th>
					<textarea data-toggle="popover" data-trigger="focus" title="全部评价" data-placement="top" data-content="${list.results}"   style=" overflow:hidden; border: none; " readonly="readonly" rows="1" cols="20">${list.results}</textarea>
					</th>
					<th>${list.score}</th>
					<th>
							<a class="btn btn-danger btn-sm" href="${pageContext.request.contextPath}/qyTeacher/evaluationDel?id=${list.studentId }">删除</a>
							<button data-toggle="modal" onclick="change(this)" id="change"  type="button"  data-target="#myModal"  class="btn btn-info btn-sm">编辑</button>
					</th>
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
	$(function () {
		  $('[data-toggle="popover"]').popover()
		})
	$('#example').popover()
	$('#myModal').on('shown.bs.modal', function (obj) {
		  $('#myInput').focus()
		})
	function change(obj) {
		//得到table的id获取当前行的第一个td内容   obj当前行
		var id =$(obj).parents('tr').children('th').eq(0).text();
		//console.log(id);
		var name = $(obj).parents('tr').children('th').eq(1).text();
		var sex = $(obj).parents('tr').children('th').eq(2).text();
		var grade = $(obj).parents('tr').children('th').eq(3).text();
		var results = $(obj).parents('tr').children('th').eq(4).text();
		var score = $(obj).parents('tr').children('th').eq(5).text();
		$('#id').val(id);
		$('#name').val(name);
		$('#sex').val(sex);
		$('#grade').val(grade);
		$('#results').val(results);
		$('#score').val(score);
	}
	</script>
	<!-- 编辑模块 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">修改信息</h4>
      </div>
      <div class="modal-body">
        <form id="updata" action="">
        	<div class="input-group">
			<span class="input-group-addon">学号：</span>
            <input type="text" id="id" readonly="readonly"  class="form-control"  name="student_id" placeholder="学号"/>
			</div>
			<br>
		<div class="input-group">
			<span class="input-group-addon">姓名：</span>
            <input type="text" id="name" readonly="readonly" name="name"    class="form-control"   placeholder="姓名"/>
		</div> 
		<br>
		<div class="input-group">
			<span class="input-group-addon">性别：</span>
            <input type="text" readonly="readonly" id="sex" name="sex"  class="form-control"  placeholder="性别"/>
		</div> 
		<br>
		<div class="input-group">
			<span class="input-group-addon">班级：</span>
            <input type="text" id="grade" readonly="readonly" name="grade"   class="form-control"  placeholder="班级"/>
		</div> 
		<br>
		<div class="input-group">
			<span class="input-group-addon">评价：</span>
           <textarea id="results" name="results" placeholder="评价" class="form-control" style=" overflow:hidden; padding-top:10px; font-size:14px; resize: none;"  rows="2" cols="60"></textarea>
		</div> 
		<br>
		<div class="input-group">
			<span class="input-group-addon">等级：</span>
            <input type="text" id="score" name="score"  class="form-control"  placeholder="等级"/>
		</div> 
		 <br>
		 <div>
		 <button class="btn btn-default" data-dismiss="modal">Close</button>
		  <button type="submit" onclick="save()" class="btn btn-primary">Save changes</button>
		 </div>
        </form>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
		function save() {
			$.ajax({
				type:"post",
				url:"${pageContext.request.contextPath}/qyTeacher/evaluationEdit",
				data:$('#updata').serialize(),//序列化表单
				async:false,
				error:function(){
					alert("编辑失败");
				},
				success:function(){
					alert("编辑成功");
				}
			});
		}
</script>
</html>