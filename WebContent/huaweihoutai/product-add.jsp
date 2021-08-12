<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
<meta charset="UTF-8">
<title>欢迎来到华为商城管理页面</title>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
<link rel="stylesheet" href="/huawei-project/huaweihoutai/css/font.css">
<link rel="stylesheet" href="/huawei-project/huaweihoutai/css/xadmin.css">
<script type="text/javascript" src="/huawei-project/huaweihoutai/lib/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript" src="/huawei-project/huaweihoutai/js/xadmin.js"></script>

</head>

<body>
	<div class="layui-fluid">
		<div class="layui-row">
			<form class="layui-form" action="/huawei-project/AddConnectionServlet"
				method="post" enctype="multipart/form-data">
				<div class="layui-form-item">
					<label for="username" class="layui-form-label"> <span
						class="x-red">*</span>产品名称
					</label>
					<div class="layui-input-inline">
						<input type="text" id="username" name="productName" 
							 class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label for="username" class="layui-form-label"> <span
						class="x-red">*</span>商品库存
					</label>
					<div class="layui-input-inline">
						<input type="text" id="username" name="stock" 
							  class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label for="username" class="layui-form-label"> <span
						class="x-red">*</span>手机内存
					</label>
					<div class="layui-input-inline">
						<input type="text" id="username" name="ram" 
							 class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label for="username" class="layui-form-label"> <span
						class="x-red">*</span>产品单价
					</label>
					<div class="layui-input-inline">
						<input type="text" id="username" name="price" 
							  class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label for="username" class="layui-form-label"> <span
						class="x-red">*</span>系列名称
					</label>
					<div class="layui-input-inline">
						<input type="text" id="username" name="seriesName" 
							 class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label for="username" class="layui-form-label"> <span
						class="x-red">*</span>产品颜色
					</label>
					<div class="layui-input-inline">
						<input type="text" id="username" name="color" 
							  class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label for="username" class="layui-form-label"> <span
						class="x-red">*</span>商品编码
					</label>
					<div class="layui-input-inline">
						<input type="text" id="username" name="codeId" 
							  class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label for="username" class="layui-form-label"> <span
						class="x-red">*</span>产品图片
					</label>

					<div class="layui-input-inline">
						<input type="file" id="username" name="image" 
							 class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label for="phone" class="layui-form-label"> <span
						class="x-red">*</span>图片样式(一)
					</label>
					<div class="layui-input-inline">
						<input type="file" id="phone" name="image1" 
							 class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label for="username" class="layui-form-label"> <span
						class="x-red">*</span>图片样式(二)
					</label>
					<div class="layui-input-inline">
						<input type="file" id="username" name="image2" 
							  class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label for="phone" class="layui-form-label"> <span
						class="x-red">*</span>图片样式(三)
					</label>
					<div class="layui-input-inline">
						<input type="file" id="phone" name="image3" 
							 class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label for="username" class="layui-form-label"> <span
						class="x-red">*</span>图片样式(四)
					</label>
					<div class="layui-input-inline">
						<input type="file" id="username" name="image4" 
							 class="layui-input" >
					</div>
				</div>
	<div class="layui-form-item">
		<label for="L_repass" class="layui-form-label"></label> <input
			class="layui-btn" type="submit" name="btnSubmit" value="增加" />
	</div>
	</form>
	</div>
	</div>
	<script>
		layui.use([ 'form', 'layer' ], function() {
			$ = layui.jquery;
			var form = layui.form, layer = layui.layer;

			//自定义验证规则
			form.verify({
				nikename : function(value) {
					if (value.length < 5) {
						return '昵称至少得5个字符啊';
					}
				},
				pass : [ /(.+){6,12}$/, '密码必须6到12位' ],
				repass : function(value) {
					if ($('#L_pass').val() != $('#L_repass').val()) {
						return '两次密码不一致';
					}
				}
			});

			<!-- //监听提交
			form.on('submit(add)', function(data) {
				console.log(data);
				//发异步，把数据提交给php
				layer.alert("增加成功", {
					icon : 6
				}, function() {
					// 获得frame索引
					var index = parent.layer.getFrameIndex(window.name);
					//关闭当前frame
					parent.layer.close(index);
				});
				return false;
			});

		});
		< --> / script > <script>var
		_hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>
</body>

</html>