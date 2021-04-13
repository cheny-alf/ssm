<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>修改学生信息</title>
	<link rel="stylesheet" type="text/css" href="static/layui/css/layui.css">
	<style type="text/css">
		.layui-form{
			width: 50%;
			margin-left: 10%;
			margin-top: 5%;
		}
		.layui-input-block{
			margin-top: 50px;
		}
		.blank{
			margin-left: 50%;
		}
	</style>
</head>
<body>
	<h1 style="margin-left: 200px;color: #009688;margin-top: 40px;">查看学生信息</h1>
	<form class="layui-form" action="detailstu">
	  <div class="layui-form-item">
	    <label class="layui-form-label">用户名</label>
	    <div class="layui-input-block">
	      <input type="text" name="username" required  value="${student.username}" lay-verify="required" autocomplete="off" class="layui-input">
	    </div>
	  </div>
	  <div class="layui-form-item">
	    <label class="layui-form-label">密码</label>
	    <div class="layui-input-inline">
	      <input type="text" name="password" value="${student.password}" required lay-verify="required"  autocomplete="off" class="layui-input">
	   	</div>
	  </div>
	  <div class="layui-form-item">
	    <label class="layui-form-label">班级</label>
	    <div class="layui-input-block">
	      <input name="stuclass" lay-verify="required" value="${student.stuclass}" autocomplete="off" class="layui-input">
	    </div>
	  </div>
	 <div style="display:none"><input type="text" name="id" value="${student.id}"></div>
	 <div class="layui-form-item">
	    <label class="layui-form-label">姓名</label>
	    <div class="layui-input-block">
	      <input type="text" name="stuname" required  value="${student.stuname}" lay-verify="required"  autocomplete="off" class="layui-input">
	    </div>
	  </div>
	  <div class="layui-form-item">
	    <label class="layui-form-label">学号</label>
	    <div class="layui-input-block">
	      <input type="text" name="stuno" required  value="${student.stuno}" lay-verify="required"  autocomplete="off" class="layui-input">
	    </div>
	  </div>
	  <div class="layui-form-item">
	    <label class="layui-form-label">分数</label>
	    <div class="layui-input-block">
	      <input type="text" name="score" required  value="${student.score}" lay-verify="required" autocomplete="off" class="layui-input">
	    </div>
	  </div>
	  <div class="layui-form-item">
	    <div class="layui-input-block">
	      <button class="layui-btn" lay-submit lay-filter="formDemo">返回</button>
	      <span class="blank"></span>
	    </div>
	  </div>
	</form>
 <script type="text/javascript" src="static/layui/layui.js"></script>
<script>
//Demo
layui.use('form', function(){
  var form = layui.form;
});
</script>
</body>
</html>