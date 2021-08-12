<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	
<script type="text/javascript" src="/huawei-project/vmall/js/jquery-1.7.2.js"></script>	

<script>
        //删除弹窗
        $(function(){
  $("a.deleteA").click(function(){
   var result = confirm("你确定要删除?");
           // 点击确定返回true，点击取消，返回false
   if (result) {
    return true;
   }
   return false;
  });
 });
        </script>
<!--[if lt IE 9]>
          <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
          <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>

<body>

	<div class="x-nav">
		<span class="layui-breadcrumb"> <a
			href="/huawei-project/huaweihoutai/index.jsp">首页</a> <a href="">商品展示</a>

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
					<div class="layui-card-header">

						<button class="layui-btn layui-btn-danger" onclick="delAll()">
							<i class="layui-icon"></i>批量删除
						</button>
						<button class="layui-btn"
							onclick="xadmin.open('添加商品','product-add.jsp',800,600)">
							<i class="layui-icon"></i>添加
						</button>
					</div>
					<div class="layui-card-body ">
						<table class="layui-table layui-form">
							<thead>
								<tr>
									<th><input type="checkbox" name="" lay-skin="primary"></th>
									<th>产品Id</th>
									<th>商品编码</th>
									<th>产品名称</th>
									<th>产品图片</th>
									<th>图片样式（一）</th>
									<th>图片样式（二）</th>
									<th>系列名称</th>
									<th>产品颜色</th>
									<th>产品单价</th>
									<th>操作</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${totalProduct}" var="list">
									<tr>
										<td><input type="checkbox" name="" lay-skin="primary"></td>
										<td>${list.connectionId }</td>
										<td>${list.codeId }</td>
										<td>${list.productName}</td>
										<td><img
											src="${pageContext.request.contextPath}/upload/${list.image}"
											alt="未上传图片" width=80px; height=100px></td>
										<td><img
											src="${pageContext.request.contextPath}/upload/${list.image1}"
											alt="未上传图片" width=80px; height=100px></td>
										<td><img
											src="${pageContext.request.contextPath}/upload/${list.image2}"
											alt="未上传图片" width=80px; height=100px></td>
										<td>${list.seriesName }</td>
										<td>${list.color }</td>
										<td>${list.price }</td>
										<td class="td-manage">
										<a title="修改"	onclick="xadmin.open('修改','product-edit.jsp')" href="/huawei-project/ConnectionServlet?action=getConnection&connectionId=${list.connectionId}">
												<i class="layui-icon">&#xe63c;</i>
										<a class="deleteA" title="删除" onclick="member_del(this,'要删除的id')" href="/huawei-project/ConnectionServlet?action=delete&connectionId=${list.connectionId}">
												<!--  /huawei-project/ConnectionServlet?action=delete&connectionId=${list.connectionId} -->
												<i class="layui-icon">&#xe640;</i>
										</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>

					<%-- <h1>000000000000000000000000000000000</h1>
					<div id="page_nav">
						<a href="/huawei-project/ConnectionServlet?action=page&pageNo=1">首页</a>
						<c:if test="${pages.pageNo>1 }">
							<a
								href="/huawei-project/ConnectionServlet?action=page&pageNo=${pages.pageNo-1 }">上一页</a>
						</c:if>

						页码的判断
						<c:choose>
							只有不到五页
							<c:when test="${pages.pageCount<=5 }">
								<c:set var="begin" value="1"></c:set>
								<c:set var="end" value="${pages.pageCount }"></c:set>
							</c:when>
							超过五页
							<c:otherwise>
								<c:choose>
									当选中前三页时显式1-尾页
									<c:when test="${pages.pageNo<=3 }">
										<c:set var="begin" value="1"></c:set>
										<c:set var="end" value="5"></c:set>
									</c:when>
									当选中最后三页时显式 尾页-4——尾页
									<c:when test="${pages.pageNo>=pages.pageTotal-2 }">
										<c:set var="begin" value="${pages.pageCount-4 }"></c:set>
										<c:set var="end" value="${pages.pageCount }"></c:set>
									</c:when>
									<c:otherwise>
										<c:set var="begin" value="${pages.pageNo-2 }"></c:set>
										<c:set var="end" value="${pages.pageNo+2 }"></c:set>
									</c:otherwise>
								</c:choose>
							</c:otherwise>
						</c:choose>

						<c:forEach begin="${ begin }" end="${ end }" var="i">
							<c:if test="${ i == page.pageNo }">
								<a href="/huawei-project/ConnectionServlet?action=page&pageNo=${i}">【${i }】</a>
							</c:if>
							<c:if test="${ i != page.pageNo }">
								<a href="/huawei-project/ConnectionServlet?action=page&pageNo=${i}">${i}</a>
							</c:if>
						</c:forEach>


						<c:if test="${pages.pageNo<pages.pageCount }">
							<a
								href="/huawei-project/ConnectionServlet?action=page&pageNo=${pages.pageNo+1 }">下一页</a>
						</c:if>
						<a
							href="/huawei-project/ConnectionServlet?action=page&pageNo=${pages.pageCount }">末页</a>
						共${pages.pageCount }页，${pages.pageTotal}条记录 到第<input type="text"
							value="4" name="pn" id="pn_input" />页 <input id="searchBtn"
							type="button" value="确定">
					</div> --%>



				</div>
			</div>
		</div>
	</div>
</body>
<script>
	layui.use([ 'laydate', 'form' ], function() {
		var laydate = layui.laydate;

		//执行一个laydate实例
		laydate.render({
			elem : '#start' //指定元素
		});

		//执行一个laydate实例
		laydate.render({
			elem : '#end' //指定元素
		});
	});

	/*用户-停用*/
	function member_stop(obj, id) {
		layer.confirm('确认要停用吗？', function(index) {

			if ($(obj).attr('title') == '启用') {

				//发异步把用户状态进行更改
				$(obj).attr('title', '停用');
				$(obj).find('i').html('&#xe62f;');

				$(obj).parents("tr").find(".td-status").find('span').addClass(
						'layui-btn-disabled').html('已停用');
				layer.msg('已停用!', {
					icon : 5,
					time : 1000
				});

			} else {
				$(obj).attr('title', '启用');
				$(obj).find('i').html('&#xe601;');

				$(obj).parents("tr").find(".td-status").find('span')
						.removeClass('layui-btn-disabled').html('已启用');
				layer.msg('已启用!', {
					icon : 5,
					time : 1000
				});
			}

		});
	}

	/*用户-删除*/
	function member_del(obj, id) {
		layer.confirm('确认要删除吗？', function(index) {
			//发异步删除数据
			$(obj).parents("tr").remove();
			layer.msg('已删除!', {
				icon : 1,
				time : 1000
			});
		});
	}

	function delAll(argument) {

		var data = tableCheck.getData();

		layer.confirm('确认要删除吗？' + data, function(index) {
			//捉到所有被选中的，发异步进行删除
			layer.msg('删除成功', {
				icon : 1
			});
			$(".layui-form-checked").not('.header').parents('tr').remove();
		});
	}
</script>


</html>