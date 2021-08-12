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
<link rel="stylesheet" href="/huawei-project/vmall/css/common.css">
<link rel="stylesheet" href="/huawei-project/vmall/css/cart.css">
</head>
<body class="sc">
	<div class="top-header"></div>
	<header>
		<div class="container clearfix">
			<div class="logo">
				<a href="index.html"><img src="images/logo1.png" alt=""></a> <span>确认订单</span>
			</div>
			<div class="right">
				<div class="progress-area progress-area-3">
					<div class="progress-co-area">核对订单信息</div>
				</div>
			</div>
		</div>
	</header>
	<main>
	<div class="container">
		<div>
			<div class="hr-20"></div>
			<div class="order-detail-area order-address">
				<div class="h">收货地址</div>
				<div class="order-address-list">
					<ul class="clearfix">
						<li class="address-empty-li">
							<div class="address-empty">
								<a href="javascript:;" class="address-add-btn">新增收货地址</a>
							</div>
						</li>
						<li class="my-address current"><span class="address-status">默认地址</span>
							<div class="address-main">
								<p class="clearfix">
									<b>姓名</b><span>19528809028</span>
								</p>
								<div class="address-detail">陕西 西安 雁塔区 丈八沟街道 南窑头社区</div>
							</div>
							<div class="address-sub">
								<a href="javascript:;" class="address-edit">编辑</a> <a
									href="javascript:;" class="address-del">删除</a>
							</div></li>
					</ul>
				</div>
				<div class="f"></div>
			</div>
			<div class="hr-20"></div>
		</div>
		<div class="order-detail-area">
			<div class="order-detail clearfix">
				<div class="order-list">
					<c:forEach items="${cart.map }" var="map">
						<c:set value="${map.value }" var="cartItems"></c:set>
						<div class="order-list-detail">
							<div class="order-main clearfix">
								<a href="javascript:;" class="p-img"><img
									src="upload/p40pro5g.png" alt=""></a>
								<ul>
									<li><a href="javascript:;" class="p-name">${cartItems.name }</a></li>
									<li>x${cartItems.count }</li>
									<li class="p-price">¥&nbsp;<span>${cartItems.totalMoney }</span>.00
									</li>
								</ul>
							</div>
						</div>

					</c:forEach>
					<!-- <div class="order-list-detail">
              <div class="order-main clearfix">
                <a href="javascript:;" class="p-img"><img src="upload/p40pro5g.png" alt=""></a>
                <ul>
                  <li><a href="javascript:;" class="p-name">HUAWEI Mate 30E Pro 5G 全网通 8GB+256GB（翡冷翠）</a></li>
                  <li>x1</li>
                  <li class="p-price">
                    ¥&nbsp;<span>5799</span>.00
                  </li>
                </ul>
              </div>
            </div> -->
					<div class="order-list-info">
						<div class="order-invoice">
							<div class="h">
								<span>发票信息</span><em>注：如果商品由第三方卖家销售，发票内容由其卖家决定，发票由卖家开具并寄出</em>
							</div>
							<div class="b">
								<em>电子普通发票</em> <span>个人 </span> <a href="javascript:;">修改</a>
							</div>
						</div>
					</div>
				</div>
				<div class="order-total">
					<div class="order-total-info">
						<p>
							商品由<span>华为商城</span>选择合作快递
						</p>
						<div class="order-delivery">
							<ul>
								<li>
									<div class="order-delivery-choose">
										<a href="javascript:;" class="radio"></a> <label>标准配送</label>
									</div>
									<p>预计 2021-07-01 前发货</p>
								</li>
							</ul>
						</div>
					</div>
					<div class="order-total-price">
						<div class="clearfix">
							<div class="order-price-detail">
								<ul>
									<li><strong>商品总金额：</strong> <span> ¥&nbsp;<em>${cart.totalMoney }</em>
									</span></li>

									<li><strong>运费：</strong> <span> ¥&nbsp;<em
											id="order-deliveryCharge">0.00</em>
									</span></li>

									<li><strong>优惠金额：</strong> <span> -&nbsp;¥&nbsp;<em>0.00</em>
									</span></li>
									<li><strong>结算金额：</strong> <span><b></b> <span><b>¥&nbsp;</b><b
												id="order-price-VMALL-HUAWEIDEVICE" data-oldval="6198.00">${cart.totalMoney }</b></span>

									</span></li>
								</ul>


							</div>
						</div>

					</div>
				</div>
			</div>

		</div>
		<div class="hr-10"></div>
		<div class="order-detail-area clearfix">
			<div class="order-submit">
				<div class="order-submit-info">
					<div class="order-submit-price">
						应付总额：<b>¥<span id="payableTotal">${cart.totalMoney }</span></b>
					</div>
					<div class="order-submit-integral">可获得积分：620</div>
				</div>
				<div class="report-errors">无收货地址不可下单</div>
				<div class="order-submit-address">
					配送至：<span></span>
				</div>
				<div class="clearfix">
					<a href="/huawei-project/pay?money=${cart.totalMoney }" class="order-submit-btn"><span>提交订单</span></a>
				</div>
			</div>
		</div>
	</div>
	</main>
	<div class="hr-45"></div>
	<!-- 添加地址 -->
	<div class="addAddress-box">
		<div class="addAddress">
			<div class="box-title">- 添加地址 -</div>
			<div class="box-content clearfix">
				<table cellspacing="0" cellpadding="0" border="0">
					<tr>
						<th><span class="required">*</span><label for="">收货人：</label></th>
						<td><input type="text" class="s-574 s-574-name"></td>
					</tr>
					<tr>
						<th><span class="required">*</span><label for="">手机号码:</label></th>
						<td><input type="text" class="s-229"><label for="">备选号码:</label><input
							type="text" class="s-229"></td>
					</tr>
					<tr>
						<th rowspan="2" class="vat"><span class="required">*</span><label
							for="">收货地址:</label></th>
						<td><input type="text" class="s-574-address"
							placeholder="请选择省市区街道"></td>
					</tr>
					<tr>
						<td><textarea placeholder="如选择不到您的地区，请在此处详细描述"></textarea></td>
					</tr>
				</table>
			</div>
			<div class="box-btn">
				<a href="javascript:;" class="box-cancel">取消</a><a
					href="javascript:;" class="box-ok">保存并使用</a>
			</div>
		</div>
	</div>
	<footer></footer>
</body>
</html>
<script src="/huawei-project/vmall/js/jQuery.js"></script>
<script src="/huawei-project/vmall/js/jquery.cookie-1.4.1.min.js"></script>
<script src="/huawei-project/vmall/js/order.js"></script>
