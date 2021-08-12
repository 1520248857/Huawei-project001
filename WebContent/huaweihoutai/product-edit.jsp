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
<link rel="stylesheet"
	href="/huawei-project/huaweihoutai/css/xadmin.css">
<script src="/huawei-project/huaweihoutai/lib/layui/layui.js"
	charset="utf-8"></script>
<script type="text/javascript"
	src="/huawei-project/huaweihoutai/js/xadmin.js"></script>
<!--[if lt IE 9]>
          <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
          <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>

<body>

	<div class="x-nav">
		<span class="layui-breadcrumb"> <a href="">首页</a> <a href="">商品展示</a>
			<a> <cite>商品元素</cite></a>
		</span> <a class="layui-btn layui-btn-small"
			style="line-height: 1.6em; margin-top: 3px; float: right"
			onclick="location.reload()" title="刷新"> <i
			class="layui-icon layui-icon-refresh" style="line-height: 30px"></i>
		</a>
	</div>
	<div class="layui-fluid">
		<div class="layui-row layui-col-space15">

			<div class="layui-col-md12">

				<div class="layui-card">
					<div class="layui-card-body ">
						<div class="layui-collapse" lay-filter="test">
							<div class="layui-colla-item">
								<h2 class="layui-colla-title">
									价格筛选<i class="layui-icon layui-colla-icon"></i>
								</h2>
								<div class="layui-colla-content">
									<form class="layui-form" action="">
										<div class="layui-form-item">
											<div class="layui-inline">
												<label class="layui-form-label">范围</label>
												<div class="layui-input-inline" style="width: 100px;">
													<input type="text" name="price_min" placeholder="￥"
														autocomplete="off" class="layui-input">
												</div>
												<div class="layui-form-mid">-</div>
												<div class="layui-input-inline" style="width: 100px;">
													<input type="text" name="price_max" placeholder="￥"
														autocomplete="off" class="layui-input">
												</div>
											</div>
										</div>


										<div class="layui-form-item">
											<div class="layui-input-block">
												<button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
												<button type="reset" class="layui-btn layui-btn-primary">重置</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>

					<div class="layui-card-body ">
						<form action="/huawei-project/ConnectionServlet" method="post">
							<input type="hidden" name="action" value="update">
							<table class="layui-table layui-form">
								<thead>
									<tr>
										<th>产品Id</th>
										<th>产品名称</th>
										<th>产品颜色</th>
										<th>产品图片</th>
										<th>产品单价</th>
										<th>操作</th>
										<th>库存</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><input name="connectionId" type="text"
											value="${connectionId }" /></td>
										<td><input name="productName" type="text"
											value="${item.productName}" /></td>
										<td><input name="color" type="text"
											value="${color.color }" /></td>
									    <td><a href=" " ><img src="${pageContext.request.contextPath}/upload/${color.image1}" alt="修改" width=80px; height=100px></a>
									    <input type="file" name="image1" value="${color.image1 }"></td>
										<td><input name="price" type="text"
											value="${args.price }" /></td>
										<td><input name="stock" type="text" value="${item.stock}" /></td>
										<td><input type="submit" value="提交" /></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
</body>
</html>