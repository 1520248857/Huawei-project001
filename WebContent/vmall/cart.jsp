<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="/huawei-project/vmall/css/base.css">
<link rel="stylesheet" href="/huawei-project/vmall/css/header.css">
<link rel="stylesheet" href="/huawei-project/vmall/css/footer.css">
<link rel="stylesheet" href="/huawei-project/vmall/css/cart.css">
<link rel="stylesheet" href="/huawei-project/vmall/css/common.css">
<link rel="stylesheet" href="/huawei-project/vmall/css/shortcut.css">
<!-- 尾部样式 -->
<link rel="stylesheet" href="/huawei-project/vmall/css/index01.css">
<link rel="stylesheet" href="/huawei-project/vmall/css/common01.css">
<script type="text/javascript" src="/huawei-project/vmall/js/jquery-1.7.2.js"></script>
<script type="text/javascript">
	$(function(){
		$("a.deleteItem").click(function(){
			var name=$(this).parent().parent().children("td:first").html();
			return confirm("你确定要删除【"+name+"】吗？");
		});
		
		// 修改商品数量的事件。
		$(".updateCount").change(function(){
			// 提示用户是否修改
			var name = $(".p-name").html();
			if ( confirm("你确定修改【" + name + "】个数为：" + this.value) ){
				// 发起请求
				//location.href="CartServlet?action=updateCount&id=" + $(this).attr("data") + "&count="+this.value;
				var id = $(this).attr("data");
				// 修改请求为Ajax
				$.getJSON("CartServlet?action=ajaxUpdateCount&id=" + id + "&count="+this.value,
						function(data){
					$("#item_totalMoney_" + id).html(data.item_totalMoney);
					$("#cart_totalCount").html(data.cart_totalCount);
					$("#cart_totalMoney").html(data.cart_totalMoney);
				});
			} else {
				// 还原商品数量
				this.value = $(this).attr("ov");
			}
		});
	});
</script>
	

</head>
<body class="sc">
	<input type="hidden" value="${cartItems.id }" class="hidden">
	<div class=" shortcut" style="background: #f9f9f9; color: #a4a4a4;">
		<nav class="shortcut-nav banxin">
			<ul class="left">
				<li><a href="../index.jsp">首页</a></li>
				<li><a href="">华为官网</a></li>
				<li><a href="">荣耀官网</a></li>
				<li><a href="">花粉俱乐部</a></li>
				<li><a href="">V码(优购码)</a></li>
				<li><a href="">企业购</a></li>
				<li><a href="">Select Region</a></li>
				<li class="top-nav-list">
					<p>
						<span>更多精彩</span><i class=""></i>
					</p> <!-- 二级效果 -->
					<div class="head-top-subnav">
						<ul>
							<li><a href="#">EMUI </a></li>
							<li><a href="#">应用市场</a></li>
							<li><a href="#">华为终端云空间</a></li>
							<li><a href="#">开发者联盟</a></li>
						</ul>
					</div>
				</li>
			</ul>

			<ul class="right">
				<li><a href="/huawei-project/vmall/pages/login.jsp">登录</a></li>
				<li><a href="/huawei-project/vmall/pages/register.jsp">注册</a></li>
				<li><a href="">我的订单</a></li>
				<li class="top-nav-list">
					<p>
						<span>客户服务</span><i></i>
					</p>
					<div class="head-top-subnav customer-service">
						<ul>
							<li><a href="#">服务中心</a></li>
							<li><a href="#">联系客服</a></li>
						</ul>
					</div>
				</li>
				<li class="top-nav-list">
					<p>
						<span>网站导航</span><i></i>
					</p>
					<div class=" webset-nav head-top-subnav">
						<div class="web clearfix">
							<div class="web-left left">
								<i></i> <span>商场首页</span>
							</div>
							<!-- 频道 -->
							<dl class="nav-dl-list left">
								<dt>频道</dt>
								<dd>华为专区</dd>
								<dd>企业购</dd>
							</dl>

							<dl class="nav-dl-list left">
								<dt>&nbsp;</dt>
								<dd>荣耀专区</dd>
							</dl>

							<dl class="nav-dl-list left">
								<dt>产品</dt>
								<dd>手机</dd>
								<dd>平板</dd>
								<dd>智慧家居</dd>
								<dd>二级家居</dd>
								<dd>耳机音响</dd>
								<dd>生态产品</dd>
							</dl>

							<dl class="nav-dl-list left">
								<dt>&nbsp;</dt>
								<dd>笔记本</dd>
								<dd>智能穿戴</dd>
								<dd>智慧屏</dd>
								<dd>热销配件</dd>
								<dd>增值服务</dd>
							</dl>

							<dl class="nav-dl-list left">
								<dt>增值服务</dt>
								<dd>以旧换新</dd>
								<dd>一口价换电池</dd>
							</dl>

							<dl class="nav-dl-list left">
								<dt>&nbsp;</dt>
								<dd>补贴保障</dd>
							</dl>

							<dl class="nav-dl-list left">
								<dt>会员</dt>
								<dd>会员频道</dd>
							</dl>

						</div>
					</div>
				</li>
				<li class="top-nav-list">
					<p>
						<span>手机</span><i></i>
					</p>
					<div class="phone-nav head-top-subnav">
						<ul>
							<li><img src="images/..." alt=""></li>
							<li><img src="images/..." alt=""></li>
						</ul>
					</div>
				</li>
				<li class="top-nav-list car">
					<p>
						<span> <a href="/huawei-project/vmall/cart.jsp"
							style="color: #777;">购物车</a></span>
					</p>

				</li>
			</ul>
		</nav>
	</div>

	<div class="top-header"></div>
	<!-- 头部 -->
	<header>
		<div class="container clearfix">
			<div class="logo">
				<a href="/huawei-project/vmall/index.jsp"><img
					src="/huawei-project/vmall/images/logo1.png" alt=""></a> <span>我的购物车</span>
			</div>
			<div class="right">
				<div class="progress-area">
					<!--我的购物车 -->
					<div class="progress-sc-area">我的购物车</div>
				</div>
			</div>
		</div>
	</header>
	<!-- 主体 -->
	<main>
	<div class="container clearfix">
		<div class="hr-20"></div>
		<div class="sc-list">
			<div class="sc-pro-title clearfix">
				<label class="checkbox"><input readonly="readonly"
					class="vam"> 全选</label>
				<ul class="clearfix">
					<li>商品</li>
					<li>单价</li>
					<li>数量</li>
					<li>小计</li>
					<li>操作</li>
				</ul>
			</div>

			<div class="sc-pro">
				<div>
					<c:forEach  items="${cart.map }"   var="map"> 
					 <c:set value="${map.value }" var="cartItems">  </c:set>

					<div class="sc-pro-list clearfix">
						<input type="hidden" name="id" class="id" value="1"> <label
							class="checkbox"><input readonly="readonly" class="vam">
						</label>
						<div class="sc-pro-area">
							<div class="sc-pro-main clearfix">
								<a href="javascript:;" class="p-img"><img
									src="/huawei-project/upload/${cartItems.img }" alt=""></a>
								<ul>
									<li><a href="javascript:;" class="p-name">${cartItems.name }</a>
										<p class="p-info"></p>
										<div class="p-label clearfix">
											<span>分期免息</span>
										</div></li>
									<li>
										<div class="p-price">
											¥&nbsp;<span>${cartItems.price }</span>
										</div>
									</li>
									<li>
										<div class="p-stock">
											
												<input ov="${cartItems.count }"
													data="${cartItems.id }" class="updateCount"
													value="${cartItems.count }" style="width: 35px;"/>
												<%-- <p class="p-stock-btn">
													<a href="/huawei-project/CartServlet?action=ajaxUpdateCount&id=${cartItems.id}&count=${cartItems.count-1}" class="disabled">−</a> <a
														href="/huawei-project/CartServlet?action=ajaxUpdateCount&id=${cartItems.id}&count=${cartItems.count+1}" class="add">+</a>
												</p> --%>
											
										</div>
									</li>
									<li id="item_totalMoney_${ cartItems.id }">¥ ${cartItems.totalMoney }</li>
									<li><a
										href="/huawei-project/CartServlet?action=delete&id=${cartItems.id }"
										class="p-del">删除</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- <div class="sc-pro-list clearfix">
						<label class="checkbox"><input readonly="readonly"
							class="vam"> </label>
						<div class="sc-pro-area">
							<div class="sc-pro-main clearfix">
								<a href="javascript:;" class="p-img"><img
									src="upload/p40pro5g.png" alt=""></a> -->
								<!-- <ul>
									<li><a href="javascript:;" class="p-name">HUAWEI Mate
											30E Pro 5G 全网通 8GB+256GB（翡冷翠）</a>
										<p class="p-info">翡冷翠 5G全网通 8GB+256GB 官方标配</p>
										<div class="p-label clearfix">
											<span>分期免息</span>
										</div></li>
									<li>
										<div class="p-price">
											¥&nbsp;<span>5799.00</span>
										</div>
									</li>
									<li>
										<div class="p-stock">
											<div class="p-stock-area">
												<input type="text" class="p-stock-text" value="1">
												<p class="p-stock-btn">
													<a href="javascript:;" class="disabled">−</a> <a
														href="javascript:;" class="">+</a>
												</p>
											</div>
										</div>
									</li>
									<li class="p-price-total">¥ 5799.00</li>
									<li><a href="javascript:;" class="p-del">删除</a></li>
								</ul> -->
							</div>
						</div>
					</div>
					 
					 </c:forEach>
				</div>
			</div>



		</div>
		<div class="sc-total-tool container clearfix ">
			<div class="sc-total-control">
				<label class="checkbox"><input readonly="readonly"
					class="vam"> 全选</label> <a
					href="/huawei-project/CartServlet?action=clean">删除</a>
			</div>
			<div class="sc-total-btn ">
				<a href="/huawei-project/vmall/order.jsp">立即结算</a>
			</div>
			<div class="sc-total-price">
				<p>
					<span class="cart_span">总金额<span  id="cart_totalMoney" class="b_price" class="b_price"> ${ cart.totalMoney } </span>元</span>
				</p>
				<div class="total-choose">
					<span class="cart_span">购物车中共有<span id="cart_totalCount" class="b_count">${ cart.totalCount }</span>件商品</span>
				</div>
			</div>
		</div>
	</div>
	</main>
	<!-- <footer></footer>
  <div class="float-main"></div> -->

	<!-- 尾部footer -->
	<div class="footer">
		<div class="footerbox banxin">
			<div class="footer-top">
				<ul>
					<li><a href=""> <i></i> <span>百强企业 品质保证</span>
					</a></li>

					<li><a href=""> <i style="background-position: -154px 0;"></i>
							<span>7天退货 15天换货</span>
					</a></li>

					<li><a href=""> <i style="background-position: -194px 0;"></i>
							<span>48元起免运费</span>
					</a></li>

					<li><a href=""> <i style="background-position: -114px 0;"></i>
							<span>2000家服务店 全国联保</span>
					</a></li>
				</ul>
				<div class="banxin footer-xians"></div>
			</div>
			<div class="footer-bottom clearfix">
				<div class="left">
					<dl>
						<dt>购物相关</dt>
						<dd>
							<a href="">购物指南</a>
						</dd>
						<dd>
							<a href="">配送方式</a>
						</dd>
						<dd>
							<a href="">支付方式</a>
						</dd>
						<dd>
							<a href="">常见问题</a>
						</dd>
					</dl>

					<dl>
						<dt>保修与退换货</dt>
						<dd>
							<a href="">保修政策</a>
						</dd>
						<dd>
							<a href="">退换货政策</a>
						</dd>
						<dd>
							<a href="">退换货流程</a>
						</dd>
						<dd>
							<a href="">保修状态查询</a>
						</dd>
						<dd>
							<a href="">配件防伪查询</a>
						</dd>
					</dl>
					<dl>
						<dt>维修与技术支持</dt>
						<dd>
							<a href="">服务店</a>
						</dd>
						<dd>
							<a href="">预约维修</a>
						</dd>
						<dd>
							<a href="">手机寄修</a>
						</dd>
						<dd>
							<a href="">备件价格查询</a>
						</dd>
						<dd>
							<a href="">上门服务</a>
						</dd>
					</dl>

					<dl>
						<dt>特色服务</dt>
						<dd>
							<a href="">防伪查询</a>
						</dd>
						<dd>
							<a href="">补购保障</a>
						</dd>
						<dd>
							<a href="">退换货流程</a>
						</dd>
						<dd>
							<a href="">以旧换新</a>
						</dd>
						<dd>
							<a href="">礼品包装</a>
						</dd>
					</dl>

					<dl>
						<dt>关于我们</dt>
						<dd>
							<a href="">公司介绍</a>
						</dd>
						<dd>
							<a href="">华为商场简介</a>
						</dd>
						<dd>
							<a href="">华为零售店</a>
						</dd>
						<dd>
							<a href="">荣耀零售店</a>
						</dd>
						<dd>
							<a href="">商家中心</a>
						</dd>
					</dl>

					<dl>
						<dt>友情链接</dt>
						<dd>
							<a href="">华为集团</a>
						</dd>
						<dd>
							<a href="">华为CBG官网</a>
						</dd>
						<dd>
							<a href="">荣耀官网</a>
						</dd>
						<dd>
							<a href="">花粉俱乐部</a>
						</dd>
						<dd>
							<a href="">华为云</a>
						</dd>
					</dl>
				</div>
				<div class="footer-xian left"></div>
				<div class="right footer-right">
					<h3>950805</h3>
					<p>7x24小时客服热线（仅收市话费）</p>
					<div class="footer-man">
						<a href=""> <span><i
								class="glyphicon glyphicon-headphones"></i>在线客服</span>
						</a>
					</div>

					<div class="vmall">
						<p>关注Vmall:</p>
						<ul class="vmall-list clearfix">
							<li><a class="footer-ahover" href=""
								style="background-position: -126px 0 !important;"></a>
								<div class="footer-hover">
									<img src="/huawei-project/vmall//images/footer-wx.png" alt="">
								</div></li>
							<li><a href="" style="background-position: -150px -24px;"></a></a></li>
							<li><a href="" style="background-position: -174px -24px;"></a></a></li>
							<li><a href="" style="background-position: -24px -36px;"></a></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="banxin footer-xians clearfix"></div>
			<div class="footer-footer clearfix">
				<p class="footer-logo left">
					<a href=""> <img
						src="/huawei-project/vmall//images/footer-logo.png" alt=""></a>
				</p>
				<div class="left footer-footer-list">
					<ul class="clearfix">
						<li><a href="">华为集团</a><span>|</span></li>
						<li><a href="">华为CBG官网</a><span>|</span></li>
						<li><a href="">荣耀官网</a><span>|</span></li>
						<li><a href="">花粉俱乐部</a><span>|</span></li>
						<li><a href="">华为应用市场</a><span>|</span></li>
						<li><a href="">EMUI</a><span>|</span></li>
						<li><a href="">华为终端云空间</a><span>|</span></li>
						<li><a href="">开发者联盟</a><span>|</span></li>
						<li><a href="">华为商场手机版</a><span>|</span></li>
						<li><a href="">网站地图</a></li>
					</ul>
					<a href="">隐私声明</a> <a href="">服务协议</a> <a href=""> Copyright ©
						2012-</a> <a href=""> 华为终端有限公司 版权所有 </a> <a href="">粤ICP备19015064号</a>
					<a href="">粤公网安备 44190002003939号</a> <br>
					<p>
						增值电信业务经营许可证：粤B2-20190762 <span>|</span> 备案主体编号：44201919072182
					</p>
				</div>

				<div class="right footer-img">
					<img src="/huawei-project/vmall/images/footer-img.png" alt="">
				</div>
			</div>
		</div>
	</div>
</body>
</html>
<script src="/huawei-project/vmall/js/jQuery.js"></script>
<script src="/huawei-project/vmall/js/jquery.cookie-1.4.1.min.js"></script>
<script src="/huawei-project/vmall/js/cart.js"></script>
