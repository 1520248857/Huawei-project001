<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="x-admin-sm">
<head>
<meta charset="UTF-8">
<title>欢迎来到华为商城管理页面</title>
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<link rel="stylesheet" href="/huawei-project/huaweihoutai/css/font.css">
<link rel="stylesheet" href="/huawei-project/huaweihoutai/css/login.css">
<link rel="stylesheet" href="/huawei-project/huaweihoutai/css/xadmin.css">
<script type="text/javascript"
	src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
<script src="/huawei-project/huaweihoutai/lib/layui/layui.js" charset="utf-8"></script>
<style>
.message1{
font-size:4em;
color:white;
margin-left:770px;
margin-top:80px;
}

</style>
</head>
<body class="login-bg">
		<div class="message1">华为商城管理后台</div>
	<div class="login layui-anim layui-anim-up">
	
		<div class="message">管理员登录</div>
		<div id="darkbannerwrap"></div>

		<form method="post" class="layui-form" action="/huawei-project/ManagerServlet">
			<input type="hidden" name="action" value="login"> <input
				name="managerName" placeholder="用户名" type="text"
				lay-verify="required" class="layui-input">
			<hr class="hr15">
			<input name="password" lay-verify="required" placeholder="密码"
				type="password" class="layui-input">
			<hr class="hr15">
			<input value="登录" lay-submit lay-filter="login" style="width: 100%;"
				type="submit">
			<hr class="hr20">
		</form>
	</div>


	<script>
		$(function() {
			layui.use('form', function() {
				var form = layui.form;
				监听提交
				form.on('submit(login)', function(data) {
					layer.msg('玩命卖萌中', function() {
						location.href = '/index.jsp'
					});
					return false;
				});
			}); 
		})
	</script>

</body>
</html>