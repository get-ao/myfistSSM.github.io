<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<title>管理员界面</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.4.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-paginator.js"></script>
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
        <li><a href="#">欢迎 <span>${sessionScope.admin.name}</span>  </a></li>
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
          账号管理<span class="col-md-4 glyphicon glyphicon-user" ></span>
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/admin/user">查看信息</a></li>
	</ul>
      </div>
    </div>	
  </div>	
  <!-- 面板二-->
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseOne">
         审核信息<span class="col-md-4 glyphicon glyphicon-folder-open"></span>
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/admin/qy_job">查看信息</a></li>
	</ul>
      </div>
    </div>
  </div>
  <!-- 面板三 -->
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingThree">
      <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="true" aria-controls="collapseOne">
          数据统计<span class="col-md-4 glyphicon glyphicon-tags"></span>
        </a>
      </h4>
    </div>
    <div id="collapseThree" class="panel-collapse collapse " role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
	 <ul class="list-group">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/admin/data">查看信息</a></li>
	</ul>
      </div>
    </div>
  </div>
</div>
</div>

	<!-- 中间部分 -->
<div id="content" class="col-sm-10">
	<div style="margin-top: -15px;" class="page-header">
  		<h1>账号管理列表 <small><a class="btn btn-success btn-sm" data-toggle="modal"   data-target="#myModaladd">添加账号</a></small></h1>
	</div>
	<div>
		<ul	class="nav nav-tabs" role="tablist">
			<li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">账号管理</a></li>
		</ul>
	</div>
	<div class=" tab-content">
		<table class="table table-striped">
			<thead>
				<tr>
					<th>#ID</th>
					<th>用户名</th>
					<th>密码</th>
					<th>姓名</th>
					<th>类别</th>
					<th>操作</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${requestScope.list}" var="list">
					<tr>
						<th>${list.id }</th>
						<th>${list.user }</th>
						<th>${list.psw }</th>
						<th>${list.name}</th>
						<th>${list.kind}</th>
						<th>
							<button data-toggle="modal" onclick="change(this)" id="change"  type="button"  data-target="#myModal"  class="btn btn-info btn-sm">编辑</button>
							<a class="btn btn-danger btn-sm" href="${pageContext.request.contextPath}/admin/userDel?id=${list.id }">删除</a>
						</th>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td>总记录数为：${list.size()}</td>
				</tr>
			</tfoot>
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
	var user = $(obj).parents('tr').children('th').eq(1).text();
	var psw = $(obj).parents('tr').children('th').eq(2).text();
	var name = $(obj).parents('tr').children('th').eq(3).text();
	var kind = $(obj).parents('tr').children('th').eq(4).text();
	$('#id').val(id);
	$('#user').val(user);
	$('#psw').val(psw);
	$('#name').val(name);
	$('#kind').val(kind);
}
</script>
<!-- 添加模块 -->
<div class="modal fade" id="myModaladd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">修改信息</h4>
      </div>
      <div class="modal-body">
        <form id="updata" action="">
        	<div style="display: none;" class="input-group">
			<span class="input-group-addon">ID：</span>
            <input type="text" id="id" readonly="readonly"  class="form-control"  name="id"/>
			</div>
			<br>
		<div class="input-group">
			<span class="input-group-addon">用户名：</span>
            <input type="text" id="user"  name="user"    class="form-control"   placeholder="用户名"/>
		</div> 
		<br>
		<div class="input-group">
			<span class="input-group-addon">密码：</span>
            <input type="text"  id="psw" name="psw"  class="form-control"  placeholder="密码"/>
		</div> 
		<br>
		<div class="input-group">
			<span class="input-group-addon">姓名：</span>
            <input type="text" id="name"  name="name"   class="form-control"  placeholder="姓名"/>
		</div> 
		<br>
		<div class="input-group">
			<span class="input-group-addon">类型：</span>
            <select name="kind" class="form-control" style="color:#999d9c;">
					<option   value="学生">学生</option>
					<option   value="校内老师">校内老师</option>
					<option   value="企业老师">企业老师</option>
					<option   value="企业负责人">企业负责人</option>
					<option   value="教学管理人员">教学管理人员</option>
					</select>
		</div> 
		 <br>
		 <div>
		 <button class="btn btn-default" data-dismiss="modal">Close</button>
		  <button type="submit" onclick="add()" class="btn btn-primary">Save Add</button>
		 </div>
        </form>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
	function add() {
		$.ajax({
			type:"post",
			url:"${pageContext.request.contextPath}/admin/userAdd",
			data:$('#updata').serialize(),//序列化表单
			async:false,
			error:function(){
				alert("添加失败");
			},
			success:function(){
				alert("添加成功");
			}
		});
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
        	<div style="display: none;" class="input-group">
			<span class="input-group-addon">ID：</span>
            <input type="text" id="id" readonly="readonly"  class="form-control"  name="id"/>
			</div>
			<br>
		<div class="input-group">
			<span class="input-group-addon">用户名：</span>
            <input type="text" id="user"  name="user"    class="form-control"   placeholder="用户名"/>
		</div> 
		<br>
		<div class="input-group">
			<span class="input-group-addon">密码：</span>
            <input type="text"  id="psw" name="psw"  class="form-control"  placeholder="密码"/>
		</div> 
		<br>
		<div class="input-group">
			<span class="input-group-addon">姓名：</span>
            <input type="text" id="name"  name="name"   class="form-control"  placeholder="姓名"/>
		</div> 
		<br>
		<div class="input-group">
			<span class="input-group-addon">类型：</span>
            <select name="kind" class="form-control" style="color:#999d9c;">
					<option   value="学生">学生</option>
					<option   value="校内老师">校内老师</option>
					<option   value="企业老师">企业老师</option>
					<option   value="企业负责人">企业负责人</option>
					<option   value="教学管理人员">教学管理人员</option>
					</select>
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
				url:"${pageContext.request.contextPath}/admin/userEdit",
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