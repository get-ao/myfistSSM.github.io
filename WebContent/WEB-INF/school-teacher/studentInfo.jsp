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
<div class="col-sm-10">
<!-- 标签页组 -->
	<div>
  <!-- Nav tabs -->
  <ul class="nav nav-tabs" role="tablist">
    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">个人信息</a></li>
  </ul>

  <!-- Tab panes -->
 
  <div class=" tab-content">
    <div  role="tabpanel" class=" tab-pane active" id="home">
    <table id="inof"  class=" table table-hover">
    <thead>
    	<tr>
    		<th>学号</th>
    		<th>姓名</th>
    		<th>性别</th>
    		<th>班级</th>
    		<th>成绩</th>
    		<th>指导老师</th>
    		<th></th>
    	</tr>
    </thead>
    <tbody>
    <c:forEach items="${requestScope.sAttribute}" var="list">
    	<tr>
    		<td>${list.studentId}</td>
    		<td>${list.studentName}</td>
    		<td>${list.studentSex}</td>
    		<td>${list.studentGrade}</td>
    		<td>${list.inspectionResults==""?"暂未评价":list.inspectionResults}</td>
    		<td>${list.adviser==""?"暂未分配":list.adviser}</td>
    		<td>
    			<button data-toggle="modal" onclick="change(this)" id="change"  type="button"  data-target="#myModal"  class="btn btn-info btn-sm">编辑</button>
    			<button data-toggle="modal"   type="button"  data-target="#myModaladd"  class="btn btn-success btn-sm">添加</button>
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
	
	$('#myModal').on('shown.bs.modal', function (obj) {
		  $('#myInput').focus()
		})
	function change(obj) {
		//得到table的id获取当前行的第一个td内容   obj当前行
		var id =$(obj).parents('tr').children('td').eq(0).text();
		//console.log(id);
		var name = $(obj).parents('tr').children('td').eq(1).text();
		var sex = $(obj).parents('tr').children('td').eq(2).text();
		var grade = $(obj).parents('tr').children('td').eq(3).text();
		var results = $(obj).parents('tr').children('td').eq(4).text();
		var adviser = $(obj).parents('tr').children('td').eq(5).text();
		$('#id').val(id);
		$('#name').val(name);
		$('#sex').val(sex);
		$('#grade').val(grade);
		$('#results').val(results);
		$('#adviser').val(adviser);
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
        <form id="adddata" action="">
        	<div class="input-group">
			<span class="input-group-addon">学号：</span>
            <input type="text" id="id"   class="form-control"  name="student_id" placeholder="学号"/>
			</div>
			<br>
		<div class="input-group">
			<span class="input-group-addon">姓名：</span>
            <input type="text" id="name" name="name"    class="form-control"   placeholder="姓名"/>
		</div> 
		<br>
		<div class="input-group">
			<span class="input-group-addon">性别：</span>
            <input type="text" id="sex" name="sex"  class="form-control"  placeholder="性别"/>
		</div> 
		<br>
		<div class="input-group">
			<span class="input-group-addon">班级：</span>
            <input type="text" id="grade" name="grade"   class="form-control"  placeholder="班级"/>
		</div> 
		<br>
		<div class="input-group">
			<span class="input-group-addon">指导老师：</span>
            <input type="text" id="adviser" name="adviser"  class="form-control"  placeholder="指导老师"/>
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
			url:"${pageContext.request.contextPath}/schoolTeacher/studentAdd",
			data:$('#adddata').serialize(),//序列化表单
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
	<!--编辑模块 -->
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
            <input type="text" id="name" name="name"    class="form-control"   placeholder="姓名"/>
		</div> 
		<br>
		<div class="input-group">
			<span class="input-group-addon">性别：</span>
            <input type="text" id="sex" name="sex"  class="form-control"  placeholder="性别"/>
		</div> 
		<br>
		<div class="input-group">
			<span class="input-group-addon">班级：</span>
            <input type="text" id="grade" name="grade"   class="form-control"  placeholder="班级"/>
		</div> 
		<br>
		<div class="input-group">
			<span class="input-group-addon">成绩：</span>
            <input type="text" id="results" name="results"  class="form-control"   placeholder="成绩"/>
		</div> 
		<br>
		<div class="input-group">
			<span class="input-group-addon">指导老师：</span>
            <input type="text" id="adviser" name="adviser"  class="form-control"  placeholder="指导老师"/>
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
				url:"${pageContext.request.contextPath}/schoolTeacher/studentEdit",
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
