<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>

<head>
<script type="text/javascript" src="/huawei-project/jquery-1.7.2.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="zh-cn" />
<meta http-equiv="Content-Security-Policy"
	content="upgrade-insecure-requests" />

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script>
        domainYY = 'https://yy.vmall.com';
        domainRush = 'https://buy.vmall.com';
        domainMain = 'https://www.vmall.com';
        domainWap = 'https://m.vmall.com';
        imagePath = 'https://res.vmallres.com/20210519/images';
        domainAccount = '//www.vmall.com';
        isUseAccount = 'false';
        upBindPhoneAddr = 'https://id1.cloud.huawei.com/AMW/portal/bindPhoneAccount.html?lang=zh-cn&themeName=cloudTheme&reqClientType=26';
        scriptPath = 'https://res9.vmallres.com/20210519/js';
        openApiDomain = 'https://openapi.vmall.com';
        timeOutInfo = '服务器开小差了，请稍后再试！';
        addressFrontRegex = '';
        easeBuyDomain = 'https://easy.vmall.com';
        scriptPaths = 'https://res10.vmallres.com/20210519/js';
        dapDomain = 'https://dap.vmall.com';
        riskTimeOut = '200';
        orderPayLimitNum = '5';
        loginWindowType = '';
        loginWindowSupportedBrowsers = 'Chrome|Safari';
        lastBroswedCount = '10';

        //加载系统配置表中商城公共配置项
        mallCompany = '华为';
        mallName = '华为商城';
        mallSubCompany = '华为终端有限公司';
        mallPrdEntity = 'VMALL-HUAWEIDEVICE';
        mallCountry = 'CN';
        //商品开售提醒页面 mall和honor的logo
        mallSaleReminLogo = 'https://res.vmallres.com/images/echannel/honor/logo_vmall.png';
        honorSaleRemindLogo = 'https://res.vmallres.com/images/echannel/honor/logo_honor.png';
        mallSpecialareLogo = 'https://res.vmallres.com/pimages//sale/2019-01/AF2GXbxrWmRqvyNfYzCl.png';
        webDownloadAppImg = 'https://res.vmallres.com/pimages//pages/cdnImages/FWETOIrFlCrX4xuB8E16.png';
        mallWechatSearchImg = 'https://res.vmallres.com/pimages//pages/cdnImages/O3KMTpn7HHJrc3oZjphy.png';
        // 第三方域名
        huaweiConsumer = 'https://consumer.huawei.com';
        //商城域名
        mallDomain = 'vmall.com';
        //华为logo链接
        hwLogoLink = 'https://sale.vmall.com/huaweizone.html';
        //内部要货订单提交审批url
        assetsItProcessUrl = 'http://w3.huawei.com/ui/iofa#/submitBeneficiary';
        //购物车CDN路径
        cartCdnPath = 'https://res.vmallres.com/20210519/staticpc';
        //新发票下载开关
        newInvoiceDownloadSwitch = '1';
        try {
            if (document.cookie.indexOf('redirectWap=1') < 0 && /Android|webOS|iPhone|iPad|iPod|BlackBerry/i.test(navigator.userAgent)) {
                var r = null;
                if (['/honor', '/notice'].indexOf(location.pathname) > -1) {
                    location.href = domainWap + location.pathname + location.search;
                } else if (['/priority', '/newpriority'].indexOf(location.pathname) > -1) {
                    location.href = domainWap + location.pathname + location.search + location.hash;
                } else if (['/', '/index.html'].indexOf(location.pathname) > -1) {
                    location.href = domainWap + location.search;
                } else if (r = (location.pathname.match(/^\/(?:product|order\/easebuy)\/(\d+)\.html$/) || [])[1]) {
                    location.href = domainWap + '/product/' + r + '.html' + location.search;
                } else if (r = (location.pathname.match(/^\/list\-(\d+)/) || [])[1]) {
                    location.href = domainWap + "/category/detail" + '-' + r + '-' + r + location.search;
                }
            }
        } catch (err) {
        }
    </script>
<title>&#x534e;&#x4e3a;&#x624b;&#x673a;&#x5927;&#x5168;_&#x534e;&#x4e3a;&#x667a;&#x80fd;&#x624b;&#x673a;_&#x534e;&#x4e3a;&#x5546;&#x57ce;</title>
<meta name="keywords"
	content="&#x534e;&#x4e3a;&#x624b;&#x673a;&#x5927;&#x5168;,&#x534e;&#x4e3a;&#x667a;&#x80fd;&#x624b;&#x673a;,&#x534e;&#x4e3a;&#x5546;&#x57ce;" />
<meta name="description"
	content="&#x534e;&#x4e3a;&#x5546;&#x57ce;&#x662f;&#x534e;&#x4e3a;&#x65d7;&#x4e0b;&#x9762;&#x5411;&#x5168;&#x56fd;&#x670d;&#x52a1;&#x7684;&#x7535;&#x5b50;&#x5546;&#x52a1;&#x5b98;&#x7f51;,&#x6211;&#x4eec;&#x63d0;&#x4f9b;&#x6700;&#x65b0;&#x6b3e;&#x7684;&#x534e;&#x4e3a;&#x667a;&#x80fd;&#x624b;&#x673a;&#x7684;&#x4ef7;&#x683c;&#x3001;&#x53c2;&#x6570;&#x3001;&#x56fe;&#x7247;&#x7b49;&#x4fe1;&#x606f;&#x3002;VMALL.COM&#x20;&#x6b63;&#x54c1;&#x4fdd;&#x969c;&#x21;" />
<link rel="shortcut icon" href="https://www.vmall.com/favicon.ico" />
<link
	href="https://res8.vmallres.com/20210519/css/echannel/ec.core.base.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://res8.vmallres.com/20210519/css/echannel/index.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://res8.vmallres.com/20210519/css/echannel/main.min.css"
	rel="stylesheet" type="text/css">
<script src="https://res9.vmallres.com/20210519/js/common/jsapi.js"
	namespace="ec"></script>
<script
	src="https://res9.vmallres.com/20210519/js/common/base/jquery-3.5.0.min.js"></script>
<script
	src="https://res9.vmallres.com/20210519/js/common/base/jquery-migrate-1.4.1.min.js"></script>
<script
	src="https://res9.vmallres.com/20210519/js/common/base/jquery-migrate-3.1.0.min.js"></script>
<script
	src="https://res9.vmallres.com/20210519/js/common/base/helper.min.js"></script>
<script src="https://res9.vmallres.com/20210519/js/common/ec.core.js"></script>
<script
	src="https://res9.vmallres.com/20210519/js/echannel/ec.business.min.js"></script>
<script src="https://res9.vmallres.com/20210519/js/echannel/base.min.js"></script>
<script
	src="https://res9.vmallres.com/20210519/js/echannel/slider.min.js"></script>
<script
	src="https://res9.vmallres.com/20210519/js/echannel/swiper.min.js"></script>
<!--[if lt IE 9]><script src="https://res9.vmallres.com/20210519/js/common/html5shiv.js"></script> <![endif]-->
</head>

<body class="wide">
	<img
		src="https://res8.vmallres.com/20210519/css/../images/echannel/icon/icon-common.svg"
		class="hide">
	<img
		src="https://res8.vmallres.com/20210519/css/../images/echannel/icon/icon01.svg"
		class="hide">
	<img
		src="https://res8.vmallres.com/20210519/css/../images/echannel/bg/bg-slide.png"
		class="hide">
	<style>
.minicart-pro-item .pro-other .p-title span.p-mini-tag-suit {
	display: block;
	border-radius: 2px;
	background: #ca141d;
	color: #fff;
	width: 42px;
	height: 17px;
	line-height: 17px;
	text-align: center;
	position: absolute;
	left: 0;
	border: none;
}

.minicart-pro-item .pro-other li.disabled .p-title span.p-mini-tag-suit
	{
	color: #fff;
}
</style>
	<div class="top-banner" id="top-banner-block"></div>

	<div class="shortcut">
		<div class="layout">
			<div class="s-sub">
				<ul>
					<li><a href="https://www.vmall.com">首页</a></li>
					<li><a href="https://consumer.huawei.com/cn/" target="_blank">华为官网</a>
					</li>
					<li><a href="https://club.huawei.com" target="_blank">花粉俱乐部</a>
					</li>
					<li><a href="https://www.vmall.com/priority"
						class="js-priorityCode" rel="nofollow">V码(优购码)</a></li>
					<li><a href="/company" target="_blank">企业购</a></li>
					<li class="js-enterprise" id="li-enterprise-preferential"
						style="display: none;">.</li>
					<li id="li-assets-internal" style="display: none;">.</li>
					<li><a href="javascript:;" class="js-select-region">Select
							Region</a></li>
					<li>
						<div class="s-dropdown">
							<div class="h">
								<a class="icon-dropdown">更多精彩</a> &nbsp;
							</div>
							<div class="b">
								<div class="dropdown-more w-119">
									<dl>
										<dt>
											<a href="https://www.harmonyos.com/cn/home/" target="_blank">HarmonyOS</a>
										</dt>
										<dt>
											<a href="https://appstore.huawei.com/" target="_blank">应用市场</a>
										</dt>
										<dt>
											<a href="https://cloud.huawei.com" target="_blank">华为终端云空间</a>
										</dt>
										<dt>
											<a href="https://developer.huawei.com/consumer/cn/"
												target="_blank">开发者联盟</a>
										</dt>
									</dl>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>

			<div class="s-main ">
				<img
					src="https://res.vmallres.com/20210519/images/echannel/bg/bg71.png"
					class="hide">
				<ul>
					<li id="unlogin_status">
						<div id="top_unlogin" class="header-toolbar">
							<!-- 2017-02-15-头部-工具栏-焦点为header-toolbar-item增加ClassName:hover -->
							<div class="header-toolbar-item">
								<div class="i-login">
									<div class="h">
										<div class="">
											<script>document.write('<a id="top-index-loginUrl" href="javascript:;" rel="nofollow" onclick="pushLoginMsgInfoPerson(\'登录\',\'\')">请登录</a>');</script>
											<a
												href="https://id1.cloud.huawei.com/CAS/portal/userRegister/regbyphone.html?service=https://www.vmall.com/account/caslogin&loginChannel=26000000&reqClientType=26&lang=zh-cn"
												rel="nofollow" onclick="pushLoginMsg('注册','')">&nbsp;&nbsp;注册</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>

					<li id="login_status" class="hide">
						<div id="top_login" class="header-toolbar hide">
							<div class="s-dropdown">
								<div class="h h-wide" id="up_loginName-hover">
									<a class="icon-dropdown"
										href="https://www.vmall.com/member?t=1623889478701"
										rel="nofollow" target="_blank"
										onclick="pushLoginMsg('已登录','用户名')"><span
										id="up_loginName"></span></a>&nbsp;
								</div>
								<div class="b">
									<!-- 2017-06-19-个人信息-start -->
									<div class="dropdown-i-mall">
										<div class="i-mall-prompt clearfix">
											<div class="user-head fl">
												<p class="user-img">
													<a
														href="https://www.vmall.com/member?t=1623889478701timestamp"
														rel="nofollow" timeType="timestamp" target="_blank"
														onclick="pushLoginMsg('已登录','头像')"> <img
														id="customerPic"
														src="https://res.vmallres.com/20210519/images/echannel/misc/img_not_logged_in.png"
														alt="默认头像"
														imgpath="https://res.vmallres.com/20210519/images" />
													</a>
												</p>
											</div>
											<div class="user-info fl">
												<div id="user-vip-level-tips-index"
													class="user-level icon-vip-level-0">
													<em></em>
													<p>
														<span id="canvas-index" style="width: 0%"></span>
													</p>
												</div>
												<div class="user-info-detail clearfix" id="vip-info">
													<a id="authentication_y" class="icon-realname hide">已实名</a>
													<a id="authentication_n"
														href="https://www.vmall.com/authmember/accesstoken"
														rel="nofollow" class="icon-realname disabled hide"
														onclick="pushLoginMsg('已登录','未实名')">未实名</a> <a
														class="icon-mail"
														href="https://www.vmall.com/member/msg?t=1623889478701timestamp"
														rel="nofollow" timeType="timestamp"
														onclick="pushLoginMsg('已登录','消息中心')">消息(<span
														id="top-newMsgCount">0</span>)
													</a>
												</div>
											</div>
										</div>

										<div class="i-mall-uc">
											<dl class="clearfix">
												<dt>
													<span class="fl">我的订单</span><a class="fr"
														href="https://www.vmall.com/member/order?t=1623889478701timestamp"
														timeType="timestamp" onclick="pushLoginMsg('已登录','更多')">更多</a>
												</dt>
											</dl>
											<div class="i-mall-uc-con">
												<dl class="clearfix">
													<dd>
														<a
															href="https://www.vmall.com/member/order?t=1623889478701timestamp&tab=unpaid"
															timeType="timestamp" onclick="pushLoginMsg('已登录','待付款')">待付款</a>
													</dd>
													<dd>
														<a
															href="https://www.vmall.com/member/order?t=1623889478701timestamp&tab=send"
															timeType="timestamp" onclick="pushLoginMsg('已登录','待收货')">待收货</a>
													</dd>
													<dd>
														<a
															href="https://www.vmall.com/member/order?t=1623889478701timestamp&tab=nocomment"
															timeType="timestamp" onclick="pushLoginMsg('已登录','待评价')">待评价</a>
													</dd>
													<dd>
														<a
															href="https://www.vmall.com/member/exchange?t=1623889478701timestamp"
															timeType="timestamp" onclick="pushLoginMsg('已登录','退换货')">退换货</a>
													</dd>
													<dd>
														<a
															href="https://www.vmall.com/member/recycle/index?t=1623889478701timestamp"
															timeType="timestamp" onclick="pushLoginMsg('已登录','旧机回收')">旧机回收</a>
													</dd>
												</dl>
											</div>
										</div>

										<div class="i-mall-huaban">
											<ul class="clearfix">
												<li><a
													href="https://www.vmall.com/member/newpoint?t=1623889478702"
													target="_blank" id="point"
													onclick="pushLoginMsg('已登录','积分')">
														<p class="p-price">
															<span id="userPointBalance">--</span>
														</p>
														<p class="p-dec">积分</p>
												</a></li>
												<li><a
													href="https://www.vmall.com/member/coupon?t=1623889478702"
													rel="nofollow" target="_blank"
													onclick="pushLoginMsg('已登录','优惠券')">
														<p class="p-price">
															<span id="top-couponCount">--</span>
														</p>
														<p class="p-dec">优惠券</p>
												</a></li>
												<li><a
													href="https://www.vmall.com/member/balance?t=1623889478702"
													rel="nofollow" target="_blank"
													onclick="pushLoginMsg('已登录','代金券')">
														<p class="p-price">
															<span id="balanceAmount">--</span>
														</p>
														<p class="p-dec">代金券</p>
												</a></li>
											</ul>
										</div>

										<div class="i-out">
											<a href="javascript:;" onclick="ec.logout()" rel="nofollow">退出登录</a>
										</div>
									</div>
									<!-- 2017-06-19-个人信息-end -->
								</div>
							</div>
						</div>
					</li>

					<!-- <li><a href="https://www.vmall.com/member/order?t=1623889478702timestamp" timeType="timestamp" onclick = "pushMyOrderMsg()">我的订单</a></li>-->
					<li><a href="javascript:;" timeType="timestamp"
						onclick="pushMyOrderMsg()">我的订单</a></li>

					<li>
						<div class="s-dropdown s-dropdown-link">
							<div class="h">
								<a class="icon-dropdown">客户服务</a>
							</div>
							<div class="b">
								<div class="dropdown-more">
									<dl>
										<dt>
											<a href="https://www.vmall.com/help/index.html"
												target="_blank">服务中心</a>
										</dt>
										<dt>
											<a href="javascript:;" onclick="pushShortCutHelp()">联系客服</a>
										</dt>
										<input type="hidden" id="shortcutServiceId"
											value="https://celia.consumer.huawei.com/vmall/#/?businessUUID=902d812b8bdb44e089e34544fb5d77e2" />
									</dl>
								</div>
							</div>
						</div>
					</li>

					<li>
						<div class="s-dropdown">
							<div class="h">
								<a href="#" target="_blank" class="icon-dropdown">网站导航</a>
							</div>
							<div class="b">
								<div class="dropdown-navs clearfix">
									<p>
										<a href="https://www.vmall.com"></a>
									</p>
									<div class="dropdown-navs-icon">
										<a href="https://www.vmall.com"><span
											style="font-size: 0;"> </span>商城首页</a>
									</div>
									<p></p>
									<p>
										<br />
									</p>
									<div class="fl"
										style="width: 185.0px; margin-top: 22.0px; margin-bottom: 20.0px;">
										<div class="bold f16 black" style="margin-bottom: 8.0px;">
											频道</div>
										<div>
											<div class="fl"
												style="width: 80.0px; overflow: hidden; margin-bottom: 4.0px;">
												<a href="https://www.vmall.com/huawei" target="_blank">华为专区</a>
											</div>
											<div class="fl"
												style="width: 80.0px; overflow: hidden; margin-bottom: 4.0px;">
												<a href="http://company.vmall.com/client.html"
													target="_blank">企业购</a>
											</div>
											<div class="fl"
												style="width: 80.0px; overflow: hidden; margin-bottom: 4.0px;">
												<a href="https://sale.vmall.com/education.html"
													target="_blank">教育优惠</a>
											</div>
										</div>
									</div>
									<div class="fl"
										style="width: 185.0px; margin-top: 22.0px; margin-bottom: 20.0px;">
										<div class="bold f16 black" style="margin-bottom: 8.0px;">
											产品</div>
										<div>
											<div class="fl"
												style="width: 80.0px; overflow: hidden; margin-bottom: 4.0px;">
												<a href="https://www.vmall.com/list-36" target="_blank">手机</a>
											</div>
											<div class="fl"
												style="width: 80.0px; overflow: hidden; margin-bottom: 4.0px;">
												<a href="https://www.vmall.com/list-676" target="_blank">笔记本</a>
											</div>
											<div class="fl"
												style="width: 80.0px; overflow: hidden; margin-bottom: 4.0px;">
												<a href="https://www.vmall.com/list-678" target="_blank">平板</a>
											</div>
											<div class="fl"
												style="width: 80.0px; overflow: hidden; margin-bottom: 4.0px;">
												<a href="https://www.vmall.com/list-59" target="_blank">智能穿戴</a>
											</div>
											<div class="fl"
												style="width: 80.0px; overflow: hidden; margin-bottom: 4.0px;">
												<a href="https://www.vmall.com/list-714" target="_blank">智能家居</a>
											</div>
											<div class="fl"
												style="width: 80.0px; overflow: hidden; margin-bottom: 4.0px;">
												<a href="https://www.vmall.com/list-646" target="_blank">智慧屏</a>
											</div>
											<div class="fl"
												style="width: 80.0px; overflow: hidden; margin-bottom: 4.0px;">
												<a href="https://www.vmall.com/list-652" target="_blank">耳机音箱</a>
											</div>
											<div class="fl"
												style="width: 80.0px; overflow: hidden; margin-bottom: 4.0px;">
												<a href="https://www.vmall.com/list-54" target="_blank">热销配件</a>
											</div>
											<div class="fl"
												style="width: 80.0px; overflow: hidden; margin-bottom: 4.0px;">
												<a href="https://www.vmall.com/list-43" target="_blank">生态产品</a>
											</div>
											<div class="fl"
												style="width: 80.0px; overflow: hidden; margin-bottom: 4.0px;">
												<a href="https://www.vmall.com/list-34" target="_blank">增值服务</a>
											</div>
										</div>
									</div>
									<div class="fl"
										style="width: 185.0px; margin-top: 22.0px; margin-bottom: 20.0px;">
										<div class="bold f16 black" style="margin-bottom: 8.0px;">
											增值服务</div>
										<div>
											<div class="fl"
												style="width: 80.0px; overflow: hidden; margin-bottom: 4.0px;">
												<a href="https://www.vmall.com/recycler" target="_blank">以旧换新</a>
											</div>
											<div class="fl"
												style="width: 80.0px; overflow: hidden; margin-bottom: 4.0px;">
												<a href="https://www.vmall.com/order/tcsProductIndex"
													target="_blank">补购保障</a>
											</div>
											<div class="fl"
												style="width: 80.0px; overflow: hidden; margin-bottom: 4.0px;">
												<a href="https://www.vmall.com/order/batteryRenew"
													target="_blank">一口价换电池</a>
											</div>
										</div>
									</div>
									<div class="fl"
										style="width: 185.0px; margin-top: 22.0px; margin-bottom: 20.0px;">
										<div class="bold f16 black" style="margin-bottom: 8.0px;">
											会员</div>
										<div>
											<div class="fl"
												style="width: 80.0px; overflow: hidden; margin-bottom: 4.0px;">
												<a href="https://www.vmall.com/privilege" target="_blank">会员频道</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</li>

					<li class="downloadApp">
						<div class="s-dropdown" data-tpl="jTplDownloadApp">
							<div class="h">
								<a class="icon-dropdown">手机版</a>
							</div>
						</div>
					</li>

					<li>
						<div class="s-dropdown s-dropdown-minicart">
							<div class="h h-wide" id="header-toolbar-minicart">
								<a href="/cart2?t=1623889478702timestamp" class="icon-minicart"
									rel="nofollow" timeType="timestamp" target="blank"
									onclick="pushMyCartMsg()"> <span>购物车(<span
										id="header-cart-total">0</span>)
								</span>
								</a>
							</div>
							<div class="b" id="header-toolbar-minicart-content">
								<!-- 2017-06-19-迷你购物车-start -->
								<div class="dropdown-minicart">
									<div class="minicart-pro-empty " id="minicart-pro-empty">
										<p>
											<span class="icon-minicart"></span>
										</p>
										<p id="cartInfo">您的购物车是空的，赶紧选购吧~</p>
										<a href="https://www.vmall.com">去逛逛吧</a>
									</div>
									<div class="minicart-pro-list minicart-pro-list-scroll hide"
										id="minicart-pro-list-block">
										<ul id="minicart-goods-list"></ul>
										<div class="minicart-pro-settleup" id="minicart-pro-settleup">
											<p>
												<span>总计：</span> <span><b id="micro-cart-totalPrice">&yen;&nbsp;0</b><s
													id="micro-cart-totalOriginPrice">&yen;&nbsp;0</s></span>
											</p>
											<a class="button-minicart" id="button-minicart-go2confirm"
												href="javascript:;" onclick="ec.minicart.confirm()">结算</a> <a
												class="button-minicart disabled"
												id="disbutton-minicart-go2confirm" style="display: none;">结算</a>
										</div>
									</div>
								</div>
								<!-- 2017-06-19-迷你购物车-end -->
							</div>
						</div>
					</li>

				</ul>
			</div>

		</div>
	</div>
	<!-- 2017-06-19-捷径栏-end -->

	<textarea id="selectRegion-tips" style="display: none;">
        <!-- 20151105-全球语言弹出框-width:910px-start -->
        <div class="box-content">
	<div class="box-lan-choose">
			<dl>
				<dt>HUAWEI</dt>
				<dd class="box-button">
						<a class="box-choose"
							href="https://consumer.huawei.com/ru/?utm_source=vmall&amp;utm_medium=header">Russia</a>
						<a class="box-choose"
							href="https://consumer.huawei.com/fr/?utm_source=vmall&amp;utm_medium=header">France</a>
						<a class="box-choose"
							href="https://consumer.huawei.com/de/offer/?utm_source=vmall&amp;utm_medium=header">Germany</a>
						<a class="box-choose"
							href="https://consumer.huawei.com/it/?utm_source=vmall&amp;utm_medium=header">Italy</a>
						<a class="box-choose"
							href="https://consumer.huawei.com/es/?utm_source=vmall&amp;utm_medium=header">Spain</a>
						<a class="box-choose"
							href="https://consumer.huawei.com/uk/?utm_source=vmall&amp;utm_medium=header">United Kingdom</a>
						<a class="box-choose"
							href="https://shop.huawei.com/tr/?utm_source=vmall&amp;utm_medium=header">Turkey</a>
						<a class="box-choose" href="https://consumer.huawei.com/cz/">Czech</a>
						<a class="box-choose"
							href="https://shop.huawei.com/pl/?utm_source=vmall&amp;utm_medium=header">Poland</a>
						<a class="box-choose"
							href="https://shop.huawei.com/my/?utm_source=vmall&amp;utm_medium=header">Malaysia</a>
						<a class="box-choose" href="https://consumer.huawei.com/sa-en">Saudi Arabia</a>
						<a class="box-choose"
							href="https://shop.huawei.com/ae/?utm_source=vmall&amp;utm_medium=header">United Arab Emirates</a>
						<a class="box-choose"
							href="https://shop.huawei.com/mx/?utm_source=vmall&amp;utm_medium=header">Mexico</a>
						<a class="box-choose" href="https://consumer.huawei.com/za/">South Africa </a>
						<a class="box-choose" href="https://consumer.huawei.com/ph/">Philippines</a>
						<a class="box-choose" href="https://consumer.huawei.com/th/">Thailand</a>
						<a class="box-choose" href="https://consumer.huawei.com/jp/">Japan</a>
						<a class="box-choose" href="https://consumer.huawei.com/co/">Colombia </a>
						<a class="box-choose" href="https://consumer.huawei.com/cl/">Chile</a>
						<a class="box-choose" href="https://consumer.huawei.com/eg/">Egypt</a>
				</dd>
			</dl>
	</div>
        </div>
        <!-- 20151105-全球语言弹出框-width:910px-end -->
    </textarea>

	<input type="hidden" value="" id="context" />
	<input type="hidden" value="vmall_index" id="vmall_index" />

	<script type="text/javascript">

        function pushLoginMsg(name, subName) {
            ec.dapClick(300000201, {
                "name": name,
                "subName": subName,
                "click": "1"
            });
        }

        function pushShortCutHelp() {
            var serviceHref = "";
            serviceHref = $("#shortcutServiceId").val();
            if (serviceHref != "") {
                serviceHref += "&from=06";
            }
            ec.account.afterLogin(function () {
                window.open(serviceHref, "_blank");
            }, '', serviceHref);
        }

        function pushLoginMsgInfoPerson(name, subName) {
            ec.account.afterLogin(function () { });
            ec.dapClick(300000201, {
                "name": name,
                "subName": subName,
                "click": "1"
            });
        }

        function pushHeaderMsg(name, url) {
            ec.dapClick(300000101, {
                "name": name,
                "URL": url,
                "click": "1",
            });
        }

        $('.shortcut .s-sub').on('click', 'li>a', function () {
            pushHeaderMsg($(this).text(), $(this).attr('href'))
        })

        $('.js-priorityCode').on('click', function (e) {
            e.preventDefault();
            ec.account.afterLogin(function () {
                ec.redirectTo('/priority');
            });
        })

        $('.js-select-region').on('click', function (e) {
            e.preventDefault();
            showSelectRegion();
        })

        $('.shortcut .s-dropdown').each(function () {
            var catname = $(this).find('.icon-dropdown').text();
            var mdap = function (name, url, category) {
                ec.dapClick(300000101, {
                    name: name,
                    URL: url,
                    category: category,
                    click: 1
                });
            };
            if ('客户服务' === catname || '更多精彩' === catname) {
                $(this).find('dt a').bind('click', function () {
                    mdap($(this).text(), $(this).attr('href'), catname);
                });
            }
            if ('网站导航' === catname) {
                $(this).find('dd a').bind('click', function () {
                    mdap($(this).text(), $(this).attr('href'), catname);
                });
            }
        });

        checkIEVersion();
        ec.mediaPath = "https://res.vmallres.com/pimages/";
    </script>

	<script id="ec-binding-phone" type="text/x-template">
    <div id="ec-binding-phone-1" class="ec-binding-phone-box hide">
        <!-- 20141011-绑定安全手机号提示-start -->
        <div class="box-phone01">
            <div class="h">
                <i></i>
            </div>
            <div class="b">
                <p class="title">绑定手机号码</p>
                <p>为了给您提供更好的服务，建议您将登录的邮箱帐号进行手机号码绑定，绑定后邮箱帐号和绑定的手机号码都可以作为登录帐号，<em class="red">不绑定将不能提交订单。</em></p>
            </div>
        </div>
        <div class="box-button">
            <a class="box-ok" href="javascript:;" id="ec-binding-phone-url-1"><span>立即绑定</span></a></a>
        </div>
        <!-- 20141011-绑定安全手机号提示-end -->
    </div>
    <div id="ec-binding-phone-2" class="ec-binding-phone-box hide">
        <!-- 20141424-绑定安全手机号提示-start -->
        <div class="box-phone01">
            <div class="h">
                <i></i>
            </div>
            <div class="b">
                <p class="title">绑定手机号码</p>
                <p>请您在新打开的页面中完成绑定安全手机号操作，完成绑定后请根据您的情况点击下面的按钮。</p>
            </div>
        </div>
        <div class="box-button">
            <a class="box-cancel" href="javascript:;" id="ec-binding-phone-url-2"><span>重新绑定</span></a>
            <a class="box-ok" href="javascript:;" onclick="ec.binding.resetShow()"><span>绑定成功</span></a>
        </div>
        <!-- 20141424-绑定安全手机号提示-end -->
    </div>
    <div id="ec-binding-phone-3" class="ec-binding-phone-box hide">
        <!-- 20141424-安全手机号绑定提示失败-start -->
        <div class="box-phone01">
            <div class="h">
                <i></i>
            </div>
            <div class="b">
                <p class="title">对不起，您未成功绑定手机号</p>
                <p>为了您在商城正常购物、保护您的权益，请您绑定一个手机号码以享受华为商城的所有服务。</p>
            </div>
        </div>
        <div class="box-button">
            <a href="javascript:;" class="box-ok" onclick="ec.binding.showOk()" id="ec-binding-phone-url-3" ><span>立即绑定</span></a>
        </div>
        <!-- 20141424-安全手机号绑定提示失败-end -->
    </div>
    <div id="ec-binding-phone-4" class="ec-binding-phone-box hide">
        <!-- 20150824-手机号绑定未绑定-start -->
        <div class="box-phone01">
            <div class="h">
                <i></i>
            </div>
            <div class="b">
                <p class="title">绑定手机号码</p>
                <p>为了给您提供更好的服务，建议您将登录的邮箱帐号进行手机号码绑定，绑定后邮箱帐号和绑定的手机号码都可以作为登录帐号；<em class="red">自</em><em id="bindEndDate4State4" class="red"></em><em class="red">号起，若不绑定将不能提交订单。</em></p>
            </div>
        </div>
        <div class="box-button">
            <a class="box-cancel" href="javascript:;" onclick="ec.binding.closeState4();"><span>下次再说</span></a>
            <a class="box-ok" href="javascript:;" id="ec-binding-phone-url-4"><span>立即绑定</span></a>
        </div>
        <!-- 20150824-安全手机号绑定提示失败-end -->
    </div>
    <div id="ec-binding-phone-5" class="ec-binding-phone-box hide">
        <!-- 20141424-安全手机号绑定提示失败-start -->
        <div class="box-phone01">
            <div class="h">
                <i></i>
            </div>
            <div class="b">
                <p class="title">绑定手机号码</p>
                <p>您输入的手机已被注册，您可以选择使用手机号重新登录或者重新绑定手机！</p>
            </div>
        </div>
        <div class="box-button">
            <a class="box-cancel" href="https://www.vmall.com/account/login" id="ec-binding-phone-reLogin-5"><span>重新登录</span></a>')
            <a class="box-ok" href="javascript:;" id="ec-binding-phone-url-5"><span>重新绑定</span></a>
        </div>
        <!-- 20141424-安全手机号绑定提示失败-end -->
    </div>
    </script>

	<script type="text/x-template" id="jTplDownloadApp">
<div class="b"><div class="dropdown-code"><div class="clearfix dropdown-code-detail">  <a href="https://www.vmall.com/appdownload" target="_blank"><img class="code-img" src="https://res.vmallres.com/pimages//pages/cdnImages/FWETOIrFlCrX4xuB8E16.png" /></a><div class="code-info"><h2>华为商城APP</h2><p class="red">新人专享好礼<br />最高5000积分</p><span class="icon-andrid fl mgr-5"></span><span class="icon-ios fl mgr-5"></span><span class="icon-wechat fl"></span>      </div>  </div>    <div class="clearfix dropdown-code-detail">      <a><img class="code-img" src="https://res.vmallres.com/pimages/sale/2018-11/20181116180507506.jpg" /></a>  <div class="code-info">        <h2>华为商城公众号</h2><p>微信扫一扫</p><span class="icon-wechat"></span>      </div>    </div>    <div class="clearfix dropdown-code-detail"> <a><img class="code-img" src="https://res.vmallres.com/pimages//sale/2018-12/6Y7SW4v4hnJ9kl9fDC9d.jpg" /></a> <div class="code-info">  <h2>微信小程序</h2><span class="icon-wechat"></span>  </div>    </div>  </div></div>
    </script>
	<!-- 2017-02-15-头部-start -->
	<div class="header">
		<div class="layout">
			<div class="left">
				<!-- 2017-02-15-logo-start -->
				<div class="logo">
					<a href="https&#x3a;&#x2f;&#x2f;www.vmall.com&#x2f;index.html"
						title="华为商城"
						onclick="pushLogoClickMsg('https\x3A\x2F\x2Fres.vmallres.com\x2Fpimages\x2F\x2Fcommon\x2Fconfig\x2Flogo\x2FSXppnESYv4K11DBxDFc2.png','https\x3A\x2F\x2Fwww.vmall.com\x2Findex.html')">
						<img
						src="https&#x3a;&#x2f;&#x2f;res.vmallres.com&#x2f;pimages&#x2f;&#x2f;common&#x2f;config&#x2f;logo&#x2f;SXppnESYv4K11DBxDFc2.png"
						alt="华为商城" />
					</a>
				</div>
				<!-- 2017-02-15-logo-end -->

				<div class="naver-class">
					<a href="#" class="link">全部商品分类</a>
					<div class="category">
						<!-- 20170223-分类-start -->
						<div class="b">
							<ol class="category-list">
								<!-- 鼠标悬停增加ClassName： hover -->
								<li id="zxnav_0" class="category-item "><input
									id="zxnav_0_flag" type="hidden" autocomplete="off" value="no">
									<input id="zxnav_0_name" type="hidden" autocomplete="off"
									value="手机">
									<div class="category-item-bg">
										<div class="category-info">
											<a href="list-36" target="_blank"> <span>手机</span>
											</a> <i class=""></i>
										</div>
									</div>
									<div class="category-panels none">

										<ul class="subcate-list clearfix">

											<li class="subcate-item"><input id="child_name"
												type="hidden" value="HUAWEI Mate系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/huawei-project/TotalProductServlet?action=page">
													<img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/14651510730611515641.png">

													<p>
														<span>HUAWEI Mate系列</span>
													</p>

											</a></li>

											<li class="subcate-item"><input id="child_name"
												type="hidden" value="HUAWEI P系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="list-285" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/Dfv6Z1jNUpkSdQEfjU40.png">

													<p>
														<span>HUAWEI P系列</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="HUAWEI nova系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="list-277" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/JtWD6wvaxu0qmHbN2tbO.png">

													<p>
														<span>HUAWEI nova系列</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为畅享系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="list-275" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/wJHIfRVWj3kjLp9RoTBN.png">

													<p>
														<span>华为畅享系列</span>
													</p>
											</a></li>
											<li class="subcate-btn"><a href="list-36"
												target="_blank">查看全部</a></li>
										</ul>

									</div></li>
								<li id="zxnav_1" class="category-item odd"><input
									id="zxnav_1_flag" type="hidden" autocomplete="off" value="no">
									<input id="zxnav_1_name" type="hidden" autocomplete="off"
									value="智能穿戴&amp;VR">
									<div class="category-item-bg">
										<div class="category-info">
											<a href="list-59" target="_blank"> <span>智能穿戴&amp;VR</span>
											</a> <i class=""></i>
										</div>
									</div>
									<div class="category-panels none">
										<ul class="subcate-list clearfix">
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="智能手表"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-247"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/bvJbZEMQTr1qy29qnvxZ.png">

													<p>
														<span>智能手表</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="儿童手表"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-674"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/sYl3EZsnaJp74kySK0uW.png">

													<p>
														<span>儿童手表</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="智能手环"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-241"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/Op9zTFnetpE2UBz72lZ6.png">

													<p>
														<span>智能手环</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="VR"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-329"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/7rB1eW3yTzlmsJxUhz4o.png">

													<p>
														<span>VR</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="智能体脂秤"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-672" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/svCuLCsIylj3EagzlFJm.png">

													<p>
														<span>智能体脂秤</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="穿戴配件"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-588"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/71700453489515400717.png">

													<p>
														<span>穿戴配件</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="运动健身"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-640"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/98863233611613236889.png">

													<p>
														<span>运动健身</span>
													</p>
											</a></li>
											<li class="subcate-btn"><a href="list-59"
												target="_blank">查看全部</a></li>
										</ul>

									</div></li>
								<li id="zxnav_2" class="category-item "><input
									id="zxnav_2_flag" type="hidden" autocomplete="off" value="no">
									<input id="zxnav_2_name" type="hidden" autocomplete="off"
									value="耳机音箱眼镜">
									<div class="category-item-bg">
										<div class="category-info">
											<a href="list-652" target="_blank"> <span>耳机音箱眼镜</span>
											</a> <i class=""></i>
										</div>
									</div>
									<div class="category-panels none">
										<ul class="subcate-list clearfix">
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="真无线耳机"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-656" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/62195671320617659126.png">

													<p>
														<span>真无线耳机</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="有线耳机"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-654"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/8GZSNEOIyFTlKHGXJIUp.jpg">

													<p>
														<span>有线耳机</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="蓝牙耳机"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-658"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/65908671320617680956.png">

													<p>
														<span>蓝牙耳机</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="蓝牙音箱"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-708"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/15350771320617705351.png">

													<p>
														<span>蓝牙音箱</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="智能眼镜"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-710"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/DeNI79kOsHbW8IXBE7Rh.png">

													<p>
														<span>智能眼镜</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="智能音箱"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-712"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/ponGt6tOncpW9tyJZhwC.png">

													<p>
														<span>智能音箱</span>
													</p>
											</a></li>
											<li class="subcate-btn"><a href="list-652"
												target="_blank">查看全部</a></li>
										</ul>

									</div></li>
								<li id="zxnav_3" class="category-item odd"><input
									id="zxnav_3_flag" type="hidden" autocomplete="off" value="no">
									<input id="zxnav_3_name" type="hidden" autocomplete="off"
									value="智慧屏">
									<div class="category-item-bg">
										<div class="category-info">
											<a href="list-646" target="_blank"> <span>智慧屏</span>
											</a> <i class=""></i>
										</div>
									</div>
									<div class="category-panels none">
										<ul class="subcate-list clearfix">
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为智慧屏SE系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-892"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/00926602412610662900.png">

													<p>
														<span>华为智慧屏SE系列</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为智慧屏V系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-740" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/jCygCJMv6ginekIsCBmu.png">

													<p>
														<span>华为智慧屏V系列</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为智慧屏S系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-868" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/61726998961619962716.png">

													<p>
														<span>华为智慧屏S系列</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为智慧屏X系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-870" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/12138998961619983121.png">

													<p>
														<span>华为智慧屏X系列</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为智慧屏B系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-884" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/35171438691613417153.png">

													<p>
														<span>华为智慧屏B系列</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="智慧屏配件"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-650" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/38340219912611204383.png">

													<p>
														<span>智慧屏配件</span>
													</p>
											</a></li>
											<li class="subcate-btn"><a href="list-646"
												target="_blank">查看全部</a></li>
										</ul>

									</div></li>
								<li id="zxnav_4" class="category-item "><input
									id="zxnav_4_flag" type="hidden" autocomplete="off" value="no">
									<input id="zxnav_4_name" type="hidden" autocomplete="off"
									value="电脑">
									<div class="category-item-bg">
										<div class="category-info">
											<a href="list-676" target="_blank"> <span>电脑</span>
											</a> <i class=""></i>
										</div>
									</div>
									<div class="category-panels none">
										<ul class="subcate-list clearfix">
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为MateBook X系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="list-680" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/RfnzRjvwIx1VTVm8xHfk.png">

													<p>
														<span>华为MateBook X系列</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为MateBook系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-682" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/12514231412613241521.png">

													<p>
														<span>华为MateBook系列</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为MateBook D系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="list-684" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/tDI1s1C6u0UNK3kpjX35.png">

													<p>
														<span>华为MateBook D系列</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为显示器系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-890"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/10973011412611037901.png">

													<p>
														<span>华为显示器系列</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为MateBook B系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-812" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/91536469069516463519.png">

													<p>
														<span>华为MateBook B系列</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为商用电脑系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-812" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/01547132811613174510.png">

													<p>
														<span>华为商用电脑系列</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为台式机"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-812" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/01835522811612553810.png">

													<p>
														<span>华为台式机</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="个人电脑配件"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-734" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/76194353489515349167.png">

													<p>
														<span>个人电脑配件</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="电脑包"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-814"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/53990553489515509935.jpg">

													<p>
														<span>电脑包</span>
													</p>
											</a></li>
											<li class="subcate-btn"><a href="list-676"
												target="_blank">查看全部</a></li>
										</ul>

									</div></li>
								<li id="zxnav_5" class="category-item odd"><input
									id="zxnav_5_flag" type="hidden" autocomplete="off" value="no">
									<input id="zxnav_5_name" type="hidden" autocomplete="off"
									value="平板">
									<div class="category-item-bg">
										<div class="category-info">
											<a href="list-678" target="_blank"> <span>平板</span>
											</a> <i class=""></i>
										</div>
									</div>
									<div class="category-panels none">
										<ul class="subcate-list clearfix">
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为MatePad 系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="list-692" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/SoXonWnoeMUuz9KZRGyw.png">

													<p>
														<span>华为MatePad 系列</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为M系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-874" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/39368309961610386393.png">

													<p>
														<span>华为M系列</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为畅享 系列"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="list-694" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/xrtZtMAu7qwZRV7drG4A.png">

													<p>
														<span>华为畅享 系列</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="平板配件"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-872"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/21657453489515475612.png">

													<p>
														<span>平板配件</span>
													</p>
											</a></li>
											<li class="subcate-btn"><a href="list-678"
												target="_blank">查看全部</a></li>
										</ul>

									</div></li>
								<li id="zxnav_6" class="category-item "><input
									id="zxnav_6_flag" type="hidden" autocomplete="off" value="no">
									<input id="zxnav_6_name" type="hidden" autocomplete="off"
									value="智能路由">
									<div class="category-item-bg">
										<div class="category-info">
											<a href="/list-714" target="_blank"> <span>智能路由</span>
											</a> <i class=""></i>
										</div>
									</div>
									<div class="category-panels none">
										<ul class="subcate-list clearfix">
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="智能路由"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-716"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/CSkYxTgopbtV6bLHOxWq.png">

													<p>
														<span>智能路由</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="移动路由"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-718"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/httvqlH4j44xjH2Fkoeb.png">

													<p>
														<span>移动路由</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="全屋WIFI"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-878" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/39709729381612790793.png">

													<p>
														<span>全屋WIFI</span>
													</p>
											</a></li>
											<li class="subcate-btn"><a href="/list-714"
												target="_blank">查看全部</a></li>
										</ul>

									</div></li>
								<li id="zxnav_7" class="category-item odd"><input
									id="zxnav_7_flag" type="hidden" autocomplete="off" value="no">
									<input id="zxnav_7_name" type="hidden" autocomplete="off"
									value="配件">
									<div class="category-item-bg">
										<div class="category-info">
											<a href="list-54" target="_blank"> <span>配件</span>
											</a> <i class=""></i>
										</div>
									</div>
									<div class="category-panels none">
										<ul class="subcate-list clearfix">
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="充电器/线材"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="list-58" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/iXXgaQhk3RhRNcb3dUhX.png">

													<p>
														<span>充电器/线材</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="移动电源"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-56"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/navigation/jSg15QyIzY9GE4mVOHaI.jpg">

													<p>
														<span>移动电源</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="自拍杆/支架"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="list-231" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/UkPqRhFdsfuw0Mgon0lW.png">

													<p>
														<span>自拍杆/支架</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="摄像机/镜头"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="list-235" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/e7VsKW9NLDvxDXhBMFZD.png">

													<p>
														<span>摄像机/镜头</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="保护壳"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-580"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/navigation/RyT80PAF3dD0VUy9XTgz.png">

													<p>
														<span>保护壳</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="保护套"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-582"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/navigation/nxlajbLtHHaH00OhSaAv.png">

													<p>
														<span>保护套</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="贴膜"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-584"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/navigation/UWVgAL2WFNeoVHZRRE8s.png">

													<p>
														<span>贴膜</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="个人电脑配件"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="list-734" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/Xqw5avmFrpr7LGyNTZE0.png">

													<p>
														<span>个人电脑配件</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="电脑包"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-814"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/18243553489515534281.jpg">

													<p>
														<span>电脑包</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="平板配件"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-872"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/4PoI3AWlpGikrJtR0gfY.png">

													<p>
														<span>平板配件</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="智慧屏配件"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="list-650" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/oYGaqUtNyOAa8gj1a3Pc.png">

													<p>
														<span>智慧屏配件</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="穿戴配件"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-588"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/navigation/ecDhrcKmmX2lMEJ6EWUN.png">

													<p>
														<span>穿戴配件</span>
													</p>
											</a></li>
											<li class="subcate-btn"><a href="list-54"
												target="_blank">查看全部</a></li>
										</ul>

									</div></li>
								<li id="zxnav_8" class="category-item "><input
									id="zxnav_8_flag" type="hidden" autocomplete="off" value="no">
									<input id="zxnav_8_name" type="hidden" autocomplete="off"
									value="生态产品">
									<div class="category-item-bg">
										<div class="category-info">
											<a href="list-43" target="_blank"> <span>生态产品</span>
											</a> <i class=""></i>
										</div>
									</div>
									<div class="category-panels none">
										<ul class="subcate-list clearfix">
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="智能门锁"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-844"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/09660929461612906690.png">

													<p>
														<span>智能门锁</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="台灯/落地灯"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-846" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/64274929461612947246.png">

													<p>
														<span>台灯/落地灯</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="汽车及周边"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-880" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/94448507981610584449.png">

													<p>
														<span>汽车及周边</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="灯饰照明"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-371"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/61190829461612809116.png">

													<p>
														<span>灯饰照明</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="摄像头安防"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-379" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/69326829461612862396.png">

													<p>
														<span>摄像头安防</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="健康保健"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-403"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/62828675561617682826.png">

													<p>
														<span>健康保健</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="运动健身"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-640"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/gGcXeKvu6bIKZUwMJhuK.png">

													<p>
														<span>运动健身</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="户外出行"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-375"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/67030264271616203076.png">

													<p>
														<span>户外出行</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="厨电卫浴"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-377"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/Su3PP0R5phG77pi2PjHs.png">

													<p>
														<span>厨电卫浴</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="个护美妆"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-381"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/isXiE0yeEU46E2DolmYs.png">

													<p>
														<span>个护美妆</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="晾衣架/床/窗帘"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-840" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/98181039461613018189.png">

													<p>
														<span>晾衣架/床/窗帘</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="插座/开关"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-838" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/33016483161618461033.png">

													<p>
														<span>插座/开关</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="影音娱乐"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-407"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/pAQE9qGrvT2kYOGERdmr.png">

													<p>
														<span>影音娱乐</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="数码周边"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-423"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/CjXb7nAKCcLrhloNO14u.png">

													<p>
														<span>数码周边</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为智选"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-239"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/17913867641616831971.png">

													<p>
														<span>华为智选</span>
													</p>
											</a></li>
											<li class="subcate-btn"><a href="list-43"
												target="_blank">查看全部</a></li>
										</ul>

									</div></li>
								<li id="zxnav_9" class="category-item odd"><input
									id="zxnav_9_flag" type="hidden" autocomplete="off" value="no">
									<input id="zxnav_9_name" type="hidden" autocomplete="off"
									value="家用电器">
									<div class="category-item-bg">
										<div class="category-info">
											<a href="/list-862" target="_blank"> <span>家用电器</span>
											</a> <i class=""></i>
										</div>
									</div>
									<div class="category-panels none">
										<ul class="subcate-list clearfix">
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="空调/冰箱"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-930" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/86922679232617622968.png">

													<p>
														<span>空调/冰箱</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="空气净化器"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-932" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/12487679232617678421.png">

													<p>
														<span>空气净化器</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="电风扇"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-934"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/49720779232617702794.png">

													<p>
														<span>电风扇</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="扫地清洁"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-936"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/78312182332618121387.png">

													<p>
														<span>扫地清洁</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="净水器"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-938"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/55503592332619530555.png">

													<p>
														<span>净水器</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="热水器/油烟机"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-944" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/77148482732618484177.png">

													<p>
														<span>热水器/油烟机</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="加湿/除湿/取暖"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-940" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/30018403332610481003.png">

													<p>
														<span>加湿/除湿/取暖</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="精选水杯"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-942"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/52380123332612108325.png">

													<p>
														<span>精选水杯</span>
													</p>
											</a></li>
											<li class="subcate-btn"><a href="/list-862"
												target="_blank">查看全部</a></li>
										</ul>

									</div></li>
								<li id="zxnav_10" class="category-item "><input
									id="zxnav_10_flag" type="hidden" autocomplete="off" value="no">
									<input id="zxnav_10_name" type="hidden" autocomplete="off"
									value="美食酒饮">
									<div class="category-item-bg">
										<div class="category-info">
											<a href="/list-820" target="_blank"> <span>美食酒饮</span>
											</a> <i class=""></i>
										</div>
									</div>
									<div class="category-panels none">
										<ul class="subcate-list clearfix">
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="甄选美酒"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-822"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/55741948201614914755.png">

													<p>
														<span>甄选美酒</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="严选良食"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-824"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/59609058201615090695.png">

													<p>
														<span>严选良食</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="精选好物"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-826"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/60806303811610360806.png">

													<p>
														<span>精选好物</span>
													</p>
											</a></li>
											<li class="subcate-btn"><a href="/list-820"
												target="_blank">查看全部</a></li>
										</ul>

									</div></li>
								<li id="zxnav_11" class="category-item odd"><input
									id="zxnav_11_flag" type="hidden" autocomplete="off" value="no">
									<input id="zxnav_11_name" type="hidden" autocomplete="off"
									value="增值服务&amp;企业商用">
									<div class="category-item-bg">
										<div class="category-info">
											<a href="/list-34" target="_blank"> <span>增值服务&amp;企业商用</span>
											</a> <i class=""></i>
										</div>
									</div>
									<div class="category-panels none">
										<ul class="subcate-list clearfix">
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为视频卡"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="list-726" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/ZQnJL2WVUmZvVDkFIDRE.png">

													<p>
														<span>华为视频卡</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="花币卡"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="list-728"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/druWEKy6zCanbd02FQhl.png">

													<p>
														<span>花币卡</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为音乐卡"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="list-730" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/qTEFwRvC8TEQ6qyHvIoB.png">

													<p>
														<span>华为音乐卡</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="华为云空间"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="list-732" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/ppk5HSXix5wsEv4KY0KQ.png">

													<p>
														<span>华为云空间</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="电池更换服务"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="list-622" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/8J0Q5RpbK23FoBD4nX2h.png">

													<p>
														<span>电池更换服务</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="网络设备"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-594"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/9xgKp8DlHGYOJTcuc4Qx.png">

													<p>
														<span>网络设备</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="企业智慧屏"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-818" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/96313949890614931369.png">

													<p>
														<span>企业智慧屏</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="UPS电源"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-828" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/32369229421612296323.png">

													<p>
														<span>UPS电源</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="服务器"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-578"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/navigation/alMghfvLjM8qE4wuTjY4.png">

													<p>
														<span>服务器</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="商用安防"> <input id="child_status"
												type="hidden" value="1"> <input id="child_type"
												type="hidden" value="1"> <a href="/list-836"
												target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/78062287251618226087.png">

													<p>
														<span>商用安防</span>
													</p>
											</a></li>
											<li class="subcate-item"><input id="child_name"
												type="hidden" value="健康服务卡"> <input
												id="child_status" type="hidden" value="1"> <input
												id="child_type" type="hidden" value="1"> <a
												href="/list-886" target="_blank"> <img class="j-lazy"
													src="https://res.vmallres.com/20200731/images/echannel/icon/icon5.gif"
													data-src="https://res.vmallres.com/pimages//pages/frontCategory/67503871212617830576.png">

													<p>
														<span>健康服务卡</span>
													</p>
											</a></li>
											<li class="subcate-btn"><a href="/list-34"
												target="_blank">查看全部</a></li>
										</ul>

									</div></li>
							</ol>
						</div>
						<!-- 20170223-分类-end -->
					</div>
				</div>

				<!-- 2017-06-19-导航-start -->
				<div class="naver">
					<ul class="clearfix">
						<ul id="naver-list">
							<li class="img" id="huawei"><a
								href="https://sale.vmall.com/huaweizone.html" target="_blank">
									<img
									src="https://res.vmallres.com/pimages//navigation/icon/GrguiqzHENWVYHYWyHBM.png">
							</a></li>
							<li id="mosaier"><a
								href="https://sale.vmall.com/mossel.html" target="_blank"> <span>莫塞尔专区</span>
							</a></li>
							<li id="huawei"><a
								href="https://sale.vmall.com/hwzhixuan.html" target="_blank">

									<span>华为智选</span>
							</a></li>
							<li id="huawei"><a
								href="https://www.vmall.com/portal/smarthome/index.html?pageId=309000182"
								target="_blank"> <span>鸿蒙智联</span>
							</a></li>
							<li id="huawei"><a href="https://sale.vmall.com/boon.html"
								target="_blank"> <span>福利中心</span>
							</a></li>
						</ul>
						<script>
                            ec.smartHome = ec.pkg('ec.smartHome')
                            // EOP接口结果判断函数
                            ec.smartHome.EOP_RESULT_PARSE_FUNC = function (r) {
                                var tabInfos = r.tabInfos || [], result = ''
                                $.each(tabInfos, function (idx, tabInfo) {
                                    var tabName = tabInfo.tabName
                                    if (tabName == "i18n_home_code") {
                                        var tabType = tabInfo.tabType,
                                            relatedPageType = tabInfo.relatedPageType,
                                            relatedPage = (tabInfo.relatedPage || '').toString().trim()
                                        if (tabType == 'smarthome' && relatedPageType == '1' && relatedPage.length) {
                                            result = relatedPage
                                        }
                                    }
                                })
                                return result
                            }

                            // 智能家居点击事件
                            ec.smartHome.TOP_MENU_CLICK_EVENT = function (e) {
                                // Null || 不为Null，但为空
                                try {
                                    var relatedPage = sessionStorage.getItem('relatedPage')
                                    var url = domainMain + '/portal/smarthome/index.html?pageId='
                                    if (relatedPage && relatedPage.trim().length) {
                                        url += relatedPage
                                    } else {
                                        var url_eop = openApiDomain + '/mcp/content/getTemplateInfoAB?'
                                        var params = {
                                            portal: 1,
                                            lang: 'zh-CN',
                                            country: 'CN',
                                            brand: 1,
                                            tid: ec.util.cookie.get('TID'),
                                        }
                                        var first = true
                                        for (var k in params) {
                                            url_eop += (first ? '' : '&') + k + '=' + encodeURI(params[k])
                                            first = false
                                        }
                                        $.ajax({
                                            type: 'get',
                                            url: url_eop,
                                            async: false,
                                            success: function (result) {
                                                // 根据返回结果获取relatedPage并拼接
                                                var $relatedPage = ec.smartHome.EOP_RESULT_PARSE_FUNC(result)
                                                if (!!$relatedPage) {
                                                    relatedPage = $relatedPage
                                                    // 更新sessionStorage
                                                    sessionStorage.setItem('relatedPage', relatedPage)
                                                    url += relatedPage
                                                } else {
                                                    // 其他场景
                                                    url = ""
                                                }
                                            },
                                            error: function (e) {
                                                // 异常场景
                                                url = ""
                                                console.error(e)
                                            }
                                        })
                                    }
                                    // 若url不为空，则通过preventDefault拦截并跳转至上述所得路径；否则触发默认点击事件（原EOMS中的URL跳转）
                                    if (!!url) {
                                        e.preventDefault()
                                        ec.openWindow({ url: url, name: "_blank" })
                                        //ec.redirectTo(url)
                                    }
                                } catch (e) {
                                    // 报错场景
                                    console.error(e)
                                }
                            }

                            $('#naver-list li a').each(function (idx, self) {
                                var text = self.innerText
                                //  2020-12-16 新增若为智能家居时，判断关联页发起跳转
                                if (text === '智能家居') {
                                    $(self).on('click', ec.smartHome.TOP_MENU_CLICK_EVENT.bind($(self)))
                                }
                            })

                            $(function () {
                                $('#naver-list li').hover(function () {
                                    $(this).addClass('hover');
                                }, function () {
                                    $(this).removeClass('hover');
                                });

                            });
                        </script>
					</ul>
				</div>
				<!-- 2017-06-19-导航-end -->
			</div>

			<div class="right">
				<!-- 2017-02-15-搜索条-焦点为search-form增加className:hover -start -->
				<div class="search-bar relative" id="searchBar-area">
					<div class="search-bar-form" id="search-bar-form">

						<form method="get" action="/huawei-project/TotalProductServlet">
							<input type="hidden" name="action" value="like" /> <input
								type="text" class="text" maxlength="200" id="search-kw"
								autocomplete="off" name="productString"
								value="${param.pageNoString}" /> <input type="submit"
								class="button iconfont" value="&#xe604;" /> <input
								type="hidden" id="default-search"
								value="nova&#x20;3i&#x7c;&#x8363;&#x8000;&#x20;Note10" />

						</form>
					</div>
					<div class="search-bar-history">
						<div id="search-history" class="con hide">
							<p>
								<label>历史记录</label><span id="cleanUp" class="search-history-btn">清除</span>
							</p>
							<ul id="search-history-list"></ul>
						</div>
						<div id="search-key" class="con hide">
							<p>
								<label>热门搜索</label>
							</p>
							<ul id="search-key-list"></ul>
						</div>
					</div>
				</div>
				<!-- 2017-02-15-搜索条-end -->
			</div>
		</div>
	</div>




	<!-- 2017-02-15-头部-end -->
	<script type="text/javascript">
        ec.load("ec.slider", {
            loadType: "lazy",
            callback: function () {
                $("#ec-erweima").slider({
                    width: 91, //必须
                    height: 96, //必须
                    style: 1, //1显示分页，2只显示左右箭头,3两者都显示
                    pause: 120000, //间隔时间
                    auto: true
                });
            }
        });
        function pushHotSearchMsg(word) {
            //热搜词上报
            ec.dapClick(300090101, {
                "searchWord": word,
                "type": "2",
                "urlType": 2,
                "click": "1"
            });
        }
        ec.ready(function () {
            ec.search.searchArr = JSON.parse(
                '[]' || null) || [];
            $("#search-kw").val('');
            if (typeof (topSearchKeyword) != "undefined") {
                var keyword = topSearchKeyword;
                if (keyword != null && keyword != "") {
                    $("#search-kw").valS(keyword);
                    $("#search-bar-key").css("display", "none");
                }
            }

            $('#search-history,#search-key').bind({
                mousedown: function (e) {
                    if ($(e.target)[0].nodeName == 'A') {
                        $("#search-kw").val(decodeURIComponent($(e.target).attr('data-value')));
                        // 如果是IE浏览器，则需要重新执行跳转
                        if (ec.checkBrowerIE()) {
                            ec.redirectTo($(e.target).attr('href'));
                        }
                    }
                    else if ($(e.target)[0].nodeName == 'SPAN') {
                        ec.search.deleteSearchHistory();
                        $("#search-history").hide();
                    }
                }

            });

            function fixSearchBarFormStyle() {
                if ($("#search-history,#search-key").is(':visible') || $(".autocomplete").is(':visible')) {
                    $("#search-bar-form").addClass("hover")
                } else {
                    $("#search-bar-form").removeClass("hover")
                }
            }
            $("#search-kw").bind({
                focus: function () {
                    if ($("#search-kw").val().trim() == '') {
                        $("#search-bar-key").hide();
                        //隐藏搜索历史
                        $("#search-history,#search-key").hide();
                        //查询用户搜索历史
                        var flag = "searchWordSCList";
                        ec.search.querySearchHistory(flag);
                    }
                    fixSearchBarFormStyle();
                },
                blur: function () {
                    if ($("#search-kw").val().trim() == '') {
                        $("#search-bar-key").show();
                    } else {
                        $("#search-bar-key").hide();
                    }
                    //隐藏搜索历史
                    setTimeout(function () {
                        $("#search-history,#search-key").hide();
                    }, 200);
                    fixSearchBarFormStyle();
                },
                keydown: function (e) {
                    if (e.keyCode === 18) {
                        return false;
                    }
                    //隐藏搜索历史
                    if ($("#search-kw").val().trim() == '') {
                        $("#search-history,#search-key").hide();
                    }
                    fixSearchBarFormStyle();
                },
                keyup: function (e) {
                    if (e.keyCode === 18) {
                        return false;
                    }
                    if ($("#search-kw").val().trim() == '') {
                        var flag = "searchWordSCList";
                        ec.search.querySearchHistory(flag);
                    } else {
                        //隐藏搜索历史
                        $("#search-history,#search-key").hide();
                    }
                    fixSearchBarFormStyle();
                }
            });
        });
        ec.code.addService({ showService: true, showTools: true, live800Url4Web: "https://celia.consumer.huawei.com/vmall/#/?businessUUID=902d812b8bdb44e089e34544fb5d77e2", serviceRobotThirdUrl4web: "https://celia.consumer.huawei.com/vmallstore/#/?businessUUID=902d812b8bdb44e089e34544fb5d77e2" });

        //头部logo点击上报
        function pushLogoClickMsg(adid, url) {
            ec.dapClick(300020101, {
                "ADID": adid,
                "URL": url,
                "click": "1"
            });
        }

        $(".naver .clearfix").find("li").find("a").each(function (idx, self) {
            $(self).click(function () {
                ec.dapClick('300010301', {
                    name: $(self).find('span').text(),
                    picName: $(self).find('img').attr('src'),
                    URL: $(self).attr('href'),
                    location: idx + 1,
                    click: 1
                });
            });
        });
    </script>
	<script
		src="https://res9.vmallres.com/20210519/js/common/base/lodash.min.js"></script>
	<script>
        (function () {
            // 重置首页导航为纵向排列
            $('.category-panels').each(function () {
                var panel = $(this);
                var olis = panel.find('ul.subcate-list li');
                var cols = Math.ceil(olis.length / 5);
                panel.children().remove();
                panel.addClass('category-panels-' + cols);
                for (var i = 0; i < cols; i++) {
                    var newUl = $('<ul class="subcate-list clearfix"></ul>');
                    var j = i * 5;
                    var max = j + 5;
                    if (max > olis.length) {
                        max = olis.length;
                    }
                    for (j; j < max; j++) {
                        newUl.append($(olis[j]));
                    }
                    panel.append(newUl);
                }
            });
            var lazyLoadImg = function (jqObjs) {
                jqObjs.each(function () {
                    var _self = $(this);
                    var url = _self.attr('data-src');
                    if (url) {
                        var imgloader = new Image();
                        $(imgloader).load(function () {
                            _self.attr('src', url).removeAttr('data-src').removeClass('j-lazy');
                        }).attr('src', url);
                    }
                });
            };

            $('.naver-class').hover(function () {
                $('.category-list').addClass("active");
                $('.category-list li').removeClass("active");
                $('.category-list li:first').addClass("active");
                $('.category-list li .category-panels').addClass("none");
                $('.category-list li:first .category-panels').removeClass("none");
                lazyLoadImg($('.naver-class').find('img.j-lazy'));
            });

            //获取二级菜单元素
            var $panels = $(".category-panels");
            //判断鼠标是否进入二级菜单
            var mouseInPanels = false;
            //用于存储鼠标移动过程中,开始位置和结束位置的数组
            var mouseTrach = [];
            var activeRow,  //选中的一级菜单
                activeMenu, //对应的右侧二级菜单
                timer;      //延时器

            $panels.on("mouseenter", function () {
                mouseInPanels = true;
            }).on("mouseleave", function () {
                mouseInPanels = false;
            });

            var moveHandler = _.throttle(function (e) {
                mouseTrach.push({
                    x: e.pageX,
                    y: e.pageY
                });
                if (mouseTrach.length > 2) {
                    mouseTrach.shift();
                }
            }, 50, { leading: true, trailing: true });
            $('.category-item').each(function () {
                $(this).find('.category-panels').addClass('none');
            })
            $('.category-list').on('mouseenter', function () {
                $(document).on("mousemove", moveHandler);
            }).on('mouseleave', function () {
                if (activeRow) {
                    activeRow.removeClass("active");
                    activeRow.parent().removeClass("active");
                    activeRow = null;
                }
                if (activeMenu) {
                    activeMenu.addClass("none");
                    activeMenu = null;
                }
                $(document).off("mousemove", moveHandler);
            });
            //鼠标进入每个li
            $('.category-item').on('mouseenter', function (e) {
                if (!activeRow) {
                    lazyLoadImg($(this).find('img.j-lazy'));
                    activeRow = $(this).addClass("active");
                    $(this).parent().addClass("active");
                    activeMenu = $(this).find('.category-panels');
                    activeMenu.removeClass("none");
                }
                if (timer) {
                    clearTimeout(timer);
                }
                //当前鼠标位置坐标
                var curMouse = mouseTrach[mouseTrach.length - 1];
                //前面鼠标位置坐标
                var prevMouse = mouseTrach[mouseTrach.length - 2];
                var delay = needDelay($('.category-list'), curMouse, prevMouse);
                if (delay) {
                    var $this = $(this);
                    timer = setTimeout(function () {
                        var inNewRow = (activeRow && activeRow.attr('id') !== $this.attr('id'));
                        if (activeRow && activeRow.hasClass('active')) {
                            activeRow.removeClass("active");
                            activeRow.parent().removeClass("active");
                        }
                        if (activeMenu) {
                            activeMenu.addClass("none");
                        }
                        activeRow = $this;
                        activeMenu = $this.find('.category-panels');
                        if (mouseInPanels) {
                            lazyLoadImg(activeRow.find('img.j-lazy'));
                            activeRow.addClass("active");
                            activeRow.parent().addClass("active");
                            activeMenu.removeClass("none");
                        } else {
                            activeRow.removeClass("active");
                            activeRow.parent().removeClass("active");
                            activeMenu.addClass("none");
                            if (inNewRow) {
                                $this.addClass("active");
                                $this.parent().addClass("active");
                                $this.find('.category-panels').removeClass("none");
                            }
                        }
                    }, 500);
                } else {
                    var prevActiveRow = activeRow;
                    var prevActiveMenu = activeMenu;
                    activeRow = $(this);
                    activeMenu = $(this).find('.category-panels');
                    prevActiveRow.removeClass("active");
                    prevActiveRow.parent().removeClass("active");
                    prevActiveMenu.addClass("none");
                    lazyLoadImg(activeRow.find('img.j-lazy'));
                    activeRow.addClass("active");
                    activeRow.parent().addClass("active");
                    activeMenu.removeClass("none");
                }
            });
        }());

        function vector(a, b) {
            return {
                x: b.x - a.x,
                y: b.y - a.y
            }
        }

        function vectorPro(v1, v2) {
            return v1.x * v2.y - v1.y * v2.x;
        }

        /**
         *功能:判断两个值是否同正负
         *入参:两个number类型的值
         *出参:布尔值,同正负返回true,反之false
        */
        function sameSign(a, b) {
            return (a ^ b) >= 0;
        }

        /**
         *功能:判断p是否在三角形abc内
         *入参:p, a, b, c;p是需要判断的点，a,b,c是三角形的三个点，如果p在三角形内部，那么pa,pb,pc两个向量之间的差乘应该符号相同。（同正负）
         *出参:布尔值。如果p在a,b,c构成的三角形内,返回true,反之false
        */

        function isPoint(p, a, b, c) {
            var pa = vector(p, a);
            var pb = vector(p, b);
            var pc = vector(p, c);

            var t1 = vectorPro(pa, pb);
            var t2 = vectorPro(pb, pc);
            var t3 = vectorPro(pc, pa);

            return sameSign(t1, t2) && sameSign(t2, t3);
        }

        /**
         *功能:判断是正常切换一级菜单，还是需要延时
         *入参:鼠标滑入的DOM元素
         *出参:布尔值。需要延时返回true,正常切换一级菜单返回false
        */
        function needDelay(ele, curMouse, prevMouse) {
            if (!curMouse || !prevMouse) {
                return
            }
            var offset = ele.offset();
            var topleft = {
                x: offset.left + 240,
                y: offset.top
            };
            var leftbottom = {
                x: offset.left + 240,
                y: offset.top + ele.height()
            };
            return isPoint(curMouse, prevMouse, topleft, leftbottom);
        }


        //定位当前推荐商品
        function fixCurrent(obj) {
            $(obj).addClass('current');
        }

        //离开当前推荐商品
        function leaveCurrent(obj) {
            $(obj).removeClass('current');
        }
        //去重
        function removeDuplicatedItem(ar) {
            var ret = [];
            for (var i = 0, j = ar.length; i < j; i++) {
                if (ret.indexOf(ar[i]) === -1) {
                    ret.push(ar[i]);
                }
            }
            return ret;
        }

        //商品分类纵向导航数据上报
        function pushNavIndexProMsg(name, url, type, location) {
            ec.dapClick(300010501, {
                "name": name,
                "URL": url,
                "type": type,
                "location": location,
                "click": "1"
            });
        }
        //商品分类纵向导航数据上报(图片)
        function pushNavIndexProImgMsg(skuId, url) {
            ec.dapClick(300010601, {
                "SKUID": skuId,
                "URL": url,
                "click": "1"
            });
        }

        $('.category-list .category-item').each(function (location) {
            location += 1;
            var name = '', url = '', type = 0;
            $(this).find('.category-info a').on('click', function () {
                name = $(this).find('span').text();
                url = $(this).attr('href');
                type = 0;
                pushNavIndexProMsg(name, url, type, location);
            });
            $(this).find('.category-panels a').on('click', function () {
                name = $(this).find('span').text() || $(this).text();
                url = $(this).attr('href');
                type = 1;
                pushNavIndexProMsg(name, url, type, location);
            });
        });
    </script>
	<div class="search" style="background: #F5F5F5">
		<div class="hr-10"></div>
		<div class="g">
			<!--面包屑 -->
			<div class="breadcrumb-area fcn">
				<a href="/index.html" title="首页">首页</a>&nbsp;>&nbsp; <span>&#x624b;&#x673a;</span>
			</div>
		</div>
		<div class="hr-10"></div>
		<!-- 20180620-广告位-start -->
		<!-- 20180620-广告位-end -->


		<div class="layout">



			<div class="pro-cate-area hide" id="j-queryargs"
				style="display: block;">
				<div id="category_box" class="pro-cate-attr clearfix">
					<div class="p-title">分类：</div>
					<div class="p-values">
						<div class="p-expand p-single" id="j-catsrow">
							<ul class="clearfix j-dapAttrs" id="category_ul"
								data-attrname="分类">
								<li><a href="javascript:;" data-id="36">手机</a></li>


								<li><a
									href="/huawei-project/TotalProductServlet?action=page">展 示</a></li>


							</ul>
						</div>

					</div>
				</div>





				<div class="pro-cate-sort clearfix">
					<div class="p-title">排序：</div>
					<div class="p-values">
						<div class="p-expand">
							<ul class="clearfix" id="sort-type">

								<!-- class="selected" -->

								<!-- <li id="sort-overAll" >
                                    <a href="javascript:;" data_type="relevance"data-field="0" title="综合">综合<s></s></a>
                                </li> -->
								<!--  <li id="sort-register_date" class="selected">
                                    <a href="javascript:;" data_type="newes" data-field="2"title="最新">最新<s></s></a>
                                </li> -->
								<!-- <li id="sort-sale">
                                    <a href="javascript:;" data_type="popularity" data-field="3" title="评论数">评论数<s></s></a>
                                </li> -->
								<li id="sort-price"><a
									href="/huawei-project/TotalProductServlet?action=pageAsc&min=${min }&max=${max}"
									class="sort-price" data-field="1" title="价格排序">价格升序</a> <a
									href="/huawei-project/TotalProductServlet?action=pageDesc&min=${min }&max=${max}"
									class="sort-price" data-field="1" title="价格排序">价格降序</a>
									<div class="pro-cate-range">
										<div class="sort-range-price clearfix">
											<div class="range-price firstInput">
												<input class="id001" type="text" maxlength="8"
													value="${param.min }">
											</div>
											<div class="range-price secondInput">
												<input class="id002" type="text" maxlength="8"
													value="${param.max }">
											</div>
										</div>
										<div class="button-range-price">
											<span class="cancel">清空</span> <span class="ok">确定</span>
										</div>
									</div></li>
							</ul>
						</div>
					</div>
				</div>
			</div>




			<div class="hr-20"></div>


			<div class="channel-list">
				<div class="pro-list hide" id="j-prdlist" style="display: block;">
					<ul class="clearfix" id="pro-list">

						<c:forEach items="${page.items}" var="list" begin="0" step="4"
							end="45">

							<li data-code="2601010138908" data-productid="10086727877036"
								data-idx="0">

								<div class="pro-panels">
									<a
										href="/huawei-project/vmall/phone.jsp?name=${list.productName }&image1=${list.image1 }&image2=${list.image2}&image3=${list.image3}&image4=${list.image4}&color=${list.color}&series=${list.seriesName}&price=${list.price}&ram=${list.ram}&codeId=${list.codeId}"
										target="_blank" title="HUAWEI Mate 30">

										<p class="p-img">


											<img src="/huawei-project/upload/${list.image}">

										</p>

										<p class="p-name" title="HUAWEI Mate 30">${list.productName }</p>
										<p class="p-price">
											<b>¥${list.price}</b><span>多款可选</span>
										</p>

										<p class="p-label">
											<span>赠送积分</span>
										</p>


										<p class="p-comment">
											<em><span>22742</span>人评价</em><em><span>99</span>%好评</em>
										</p> </ a> 
								</div>
							</li>
						</c:forEach>

					</ul>
				</div>
				<div id="search-pager" class="pager">
					<ul>
						<c:set var="begin" value="1"></c:set>
						<c:set var="end" value="${ page.pageTotal }"></c:set>
						<c:if test="${page.pageNo>1}">
							<a
								href="/huawei-project/TotalProductServlet?action=pageByPrice&pageNo=1&min=${min }&max=${max}"><li
								class="pgNext link first first-empty"><|</li></a>

							<a
								href="/huawei-project/TotalProductServlet?action=pageByPrice&pageNo=${page.pageNo-1}&min=${min }&max=${max}">
								<li class="pgNext link pre pre-empty"><</li>
							</a>
						</c:if>
						<c:forEach begin="${ begin }" end="${ end }" var="i">
							<span class="qpages"> <c:if test="${ i == page.pageNo }">
									<li class="page-number link pgCurrent"><a
										style="color: red"
										href="/huawei-project/TotalProductServlet?action=pageByPrice&pageNo=${i}&min=${min }&max=${max}">${i}</a></li>
								</c:if> <c:if test="${ i != page.pageNo }">
									<li class="page-number link "><a
										href="/huawei-project/TotalProductServlet?action=pageByPrice&pageNo=${i}&min=${min }&max=${max}">${i}</a></li>
								</c:if>
							</span>
						</c:forEach>
						<c:if test="${page.pageNo<page.pageTotal}">
							<a
								href="/huawei-project/TotalProductServlet?action=pageByPrice&pageNo=${page.pageNo+1}&min=${min }&max=${max}">
								<li class="pgNext link next">></li>
							</a>
							<a
								href="/huawei-project/TotalProductServlet?action=pageByPrice&pageNo=${page.pageTotal}&min=${min }&max=${max}"><li
								class="pgNext link last">>|</li></a>
						</c:if>
					</ul>
				</div>
			</div>



		</div>
	</div>

	<script
		src="https://res9.vmallres.com/20210519/js/common/base/lodash.min.js"></script>
	<script
		src="https://res9.vmallres.com/20210519/js/product/search.min.js"></script>
	<script>
        ec.load("ec.pager");
        $(function () {
            _cate = [];
            _brandType = 0;
            ec.searchPage.init({ keyword: 36, searchFlag: 1 }, XSS.decode('&#x624b;&#x673a;'));
            ec.dapClick(300120001, {
                listid: 36,
                listname: XSS.decode('&#x624b;&#x673a;'),
                load: 1
            });
            $('#j-prdlist').on('click', 'li a', function () {
                var d = {
                    Sort: ['relevance', 'pricedown', 'newes', 'popularity'][ec.searchPage.query.searchSortField],
                    productId: $(this).closest('li').attr('data-productid'),
                    productname: $(this).attr('title'),
                    SKUCode: $(this).closest('li').attr('data-code'),
                    location: Number($(this).closest('li').attr('data-idx')) + 1,
                    sid: ec.searchPage.query.sid || '',
                    click: 1
                };
                if (ec.searchPage.query.searchSortField === 1 && ec.searchPage.query.searchSortType === 'asc') {
                    d.Sort = 'priceup';
                }
                ec.dapClick(300120101, d);
            });
        });
    </script>

	<!--口号-20121025 -->
	<div class="slogan-container">
		<div class="slogan">
			<ul>
				<li class="s1"><a target="_blank"
					href="https://www.vmall.com/help/faq-934.html" rel="nofollow"
					onclick="pushFootAdvertMsg('公司介绍','https://www.vmall.com/help/faq-934.html')"><i></i>百强企业&nbsp;品质保证</a></li>
				<li class="s2"><a target="_blank"
					href="https://www.vmall.com/help/faq-834.html" rel="nofollow"
					onclick="pushFootAdvertMsg('退换货政策','https://www.vmall.com/help/faq-834.html')"><i></i>7天退货&nbsp;15天换货</a></li>
				<li class="s3"><a target="_blank"
					href="https://www.vmall.com/help/faq-4367.html" rel="nofollow"
					onclick="pushFootAdvertMsg('物流帮助','https://www.vmall.com/help/faq-4367.html')"><i></i>
						<span>48元起免运费</span> </a></li>
				<li class="s4"><a target="_blank"
					href="https://consumer.huawei.com/cn/support/service-center/index.htm"
					rel="nofollow"
					onclick="pushFootAdvertMsg('服务中心','https://consumer.huawei.com/cn/support/service-center/index.htm')"><i></i>2000家服务店&nbsp;全国联保</a></li>
			</ul>
		</div>
	</div>
	<!--口号-end -->

	<!-- 2017-02-15-服务-start -->
	<div class="service-container">
		<div class="service">
			<div class="service-l fl">
				<dl class="s1">
					<dt>
						<p class="title">购物相关</p>
					</dt>
					<dd>
						<ol>
							<li><a target="_blank"
								href="https://www.vmall.com/help/faq-4355.html" rel="nofollow">购物指南</a>
							</li>
							<li><a target="_blank"
								href="https://www.vmall.com/help/faq-4367.html" rel="nofollow">配送方式</a>
							</li>
							<li><a target="_blank"
								href="https://www.vmall.com/help/faq-4357.html" rel="nofollow">支付方式</a>
							</li>
							<li><a target="_blank"
								href="https://www.vmall.com/help/category-16.html"
								rel="nofollow">常见问题</a></li>
						</ol>
					</dd>
				</dl>
				<dl class="s2">
					<dt>
						<p class="title">保修与退换货</p>
					</dt>
					<dd>
						<ol>
							<li><a target="_blank"
								href="https://www.vmall.com/help/faq-833.html" rel="nofollow">保修政策</a>
							</li>
							<li><a target="_blank"
								href="https://www.vmall.com/help/faq-834.html" rel="nofollow">退换货政策</a>
							</li>
							<li><a target="_blank"
								href="https://consumer.huawei.com/cn/support/warranty-query/index.htm"
								rel="nofollow">保修状态查询</a></li>
							<li><a target="_blank" href="http://c-ver.huawei.com/web/"
								rel="nofollow">配件防伪查询</a></li>
						</ol>
					</dd>
				</dl>
				<dl class="s3">
					<dt>
						<p class="title">维修与技术支持</p>
					</dt>
					<dd>
						<ol>
							<li><a target="_blank"
								href="https://consumer.huawei.com/cn/support/service-center/index.htm"
								rel="nofollow">服务店</a></li>
							<li><a target="_blank"
								href="https://consumer.huawei.com/cn/support/reservation/index.htm"
								rel="nofollow">预约维修</a></li>
							<li><a target="_blank"
								href="https://consumer.huawei.com/cn/support/express-repair/index.htm"
								rel="nofollow">手机寄修</a></li>
							<li><a target="_blank"
								href="https://consumer.huawei.com/cn/support/sparepart-price/index.htm"
								rel="nofollow">备件价格查询</a></li>
							<li><a target="_blank"
								href="https://consumer.huawei.com/cn/support/door-to-door-service/"
								rel="nofollow">上门服务</a></li>
						</ol>
					</dd>
				</dl>
				<dl class="s4">
					<dt>
						<p class="title">特色服务</p>
					</dt>
					<dd>
						<ol>
							<li><a target="_blank"
								href="https://consumer.huawei.com/cn/support/discriminate/"
								rel="nofollow">防伪查询</a></li>
							<li><a target="_blank"
								href="https://www.vmall.com/order/tcsProductIndex"
								rel="nofollow">补购保障</a></li>
							<li><a target="_blank" href="https://www.vmall.com/recycler"
								rel="nofollow">以旧换新</a></li>
							<li><a target="_blank"
								href="https://www.vmall.com/product/10086344499475.html#10086230774569"
								rel="nofollow">礼品包装</a></li>
						</ol>
					</dd>
				</dl>
				<dl class="s5">
					<dt>
						<p class="title">关于我们</p>
					</dt>
					<dd>
						<ol>
							<li><a target="_blank"
								href="https://www.huawei.com/cn/about-huawei/corporate-information"
								rel="nofollow">公司介绍</a></li>
							<li><a target="_blank"
								href="https://www.vmall.com/help/faq-939.html" rel="nofollow">华为商城简介</a>
							</li>
							<li><a target="_blank"
								href="https://consumer.huawei.com/cn/support/where-to-buy"
								rel="nofollow">华为零售店</a></li>
							<li><a target="_blank"
								href="https://www.vmall.com/huawei/bophome.html" rel="nofollow">商家中心</a>
							</li>
							<li><a href="javascript:;" class="js-feedback" title="意见反馈">意见反馈</a>
							</li>
						</ol>
					</dd>
				</dl>
				<dl class="s6" id="serverlink">
					<dt class="relative">
						<p class="title">友情链接</p>
						<p class="button">
							<span class="btn btn-prev disabled"> < </span> <span
								class="btn btn-next"> > </span>
						</p>
					</dt>
					<dd class="">
						<div class="service-list clearfix">
							<ol>
								<li><a href="https://www.huawei.com/cn" target="_blank"
									rel="noopener">华为集团</a></li>
								<li><a href="https://consumer.huawei.com/cn"
									target="_blank" rel="noopener">华为CBG官网</a></li>
								<li><a href="https://club.huawei.com" target="_blank"
									rel="noopener">花粉俱乐部</a></li>
								<li><a href="https://www.huaweicloud.com" target="_blank"
									rel="noopener">华为云</a></li>
								<li><a href="https://appgallery.huawei.com/"
									target="_blank" rel="noopener">华为应用市场</a></li>
							</ol>
							<ol>
								<li><a href="https://xinsheng.huawei.com/cn/index"
									target="_blank" rel="noopener">华为心声社区</a></li>
								<li><a href="https://www.huaweimarine.com/zh/"
									target="_blank" rel="noopener">华为海洋</a></li>
							</ol>
						</div>
					</dd>
				</dl>
			</div>
			<div class="service-r fl">
				<dl class="s7">
					<dt>
						<p class="title" id="vmallcontact">950805</p>
					</dt>
					<dd>
						<ol>
							<li><a>7x24小时客服热线（仅收市话费）</a></li>
						</ol>
					</dd>
					<dd>
						<a id="tools-nav-service-robotim-button" rel="nofollow"
							class="service-btn btn-line-primary" onclick="pushlowService()"
							href="javascript:;"><i class=""></i> 在线客服</a>
					</dd>
				</dl>
				<div class="service-code clearfix">
					<h2>关注Vmall：</h2>
					<ul class="clearfix">
						<li class="iconfont"><a href="javascript:;">&#xe62a;</a>
							<div class="service-code-img">
								<img
									src="https://res.vmallres.com/pimages//pages/cdnImages/O3KMTpn7HHJrc3oZjphy.png">
							</div></li>
						<li class="iconfont"><a target="_blank"
							href="https://www.toutiao.com/c/user/52373534151/#mid=52586950033"
							rel="nofollow">&#xe628;</a></li>
						<li class="iconfont"><a target="_blank"
							href="https://weibo.com/shophuawei" rel="nofollow">&#xe626;</a></li>
						<li class="iconfont"><a target="_blank"
							href="https://author.baidu.com/home/1587993495688621"
							rel="nofollow">&#xe624;</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 2017-02-15-服务-end -->

	<!-- 2017-02-15-底部-start -->
	<div class="footer-container">
		<div class="footer">
			<div class="footer-warrant-area clearfix">
				<p class="footer-warrant-logo fl">
					<a href="https://www.vmall.com"><img
						src="https://res.vmallres.com/pimages/sale/2019-01/wLelYbpMVWbj9Xpaa5Fk.png"
						title="华为商城" /></a>
				</p>
				<div class="fl">
					<ul class="footer-warrant-link">
						<li><a href="https://www.huawei.com/cn/">华为集团</a></li>
						<li><a href="https://consumer.huawei.com/cn/">华为CBG官网</a></li>
						<li><a href="https://club.huawei.com/">花粉俱乐部</a></li>
						<li><a href="https://appstore.huawei.com/">华为应用市场</a></li>
						<li><a href="https://www.harmonyos.com/cn/home/">HarmonyOS</a>
						</li>
						<li><a href="https://cloud.huawei.com">华为终端云空间</a></li>
						<li><a href="https://developer.huawei.com/cn/">开发者联盟</a></li>
						<li><a href="https://m.vmall.com/">华为商城手机版</a></li>
						<li><a href="https://www.vmall.com/shopdc/sitemap.html">网站地图</a>
						</li>
					</ul>
					<a
						href="https://consumer.huawei.com/minisite/cloudservice/vmall/privacy-statement.htm?country=CN&language=zh_CN"
						rel="nofollow" target="_blank" title="隐私声明">隐私声明</a> <a
						href="https://consumer.huawei.com/minisite/cloudservice/vmall/terms.htm?country=CN&language=zh_CN"
						rel="nofollow" target="_blank" title="服务协议">服务协议</a> <a
						href="https://consumer.huawei.com/minisite/cloudservice/vmall/cookies.htm?country=CN&language=zh_CN"
						rel="nofollow" target="_blank" title="COOKIES">COOKIES</a>
					Copyright © 2012-<span id="j-copyrightyear">2020</span> 华为终端有限公司
					版权所有 <a href="https://beian.miit.gov.cn/" target="_blank">粤ICP备19015064号</a><em>|</em><a
						href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44190002003939"
						target="_blank">粤公网安备 44190002003939号</a><br />增值电信业务经营许可证：粤B2-20190762<em>|</em>备案主体编号：44201919072182<em>|</em>粤新出网备（2021）2号<br />
					<a target="_blank"
						href="https://res.vmallres.com/pimages//pages/cdnImages/17308188080618180371.jpg">互联网药品信息服务资格证（粤）-非经营性-2020-0102</a>
					| 粤东食药监械经营备20203930
				</div>
				<p class="fr footer-warrant-img">
					<a class="fl"
						href="https://res3.vmallres.com/shopdc/pic/5a818c14-f886-41b6-ad48-56c94a430471.jpg"
						target="_blank"><img alt="电子营业执照"
						src="https://res.vmallres.com/pimages/template/content/2016/20160226162415360.png"
						title="电子营业执照" /></a>
				</p>
			</div>
			<script>$("#j-copyrightyear").text((new Date).getFullYear()); $(function () { $(".naver-class ol.category-list li.category-item a").each(function () { var url = $(this).attr("href") || ""; if (url.startsWith("list-")) $(this).attr("href", "/" + url) }) });</script>
			<script>$("#tools-nav-survery").attr("href", "https://www.vmall.com/help/index.html");</script>
		</div>
	</div>
	<!-- 2017-02-15-底部-end -->

	<script>
        $('.js-feedback').on('click', function (e) {
            e.preventDefault();
            ec.survery.open();
            pushRightHelpMsg(3);
        })
    </script>
	<!--确认对话框-->
	<div id="ec_ui_confirm" class="popup-area popup-define-area hide">
		<div class="b">
			<p id="ec_ui_confirm_msg"></p>
			<div class="popup-button-area">
				<a id="ec_ui_confirm_yes" href="javascript:;"
					class="button-action-yes"><span>是</span></a><a
					id="ec_ui_confirm_no" href="javascript:;" class="button-action-no"><span>否</span></a>
			</div>
		</div>
		<div class="f">
			<s class="icon-arrow-down"></s>
		</div>
	</div>

	<!--新确认对话框-->
	<div id="ec_ui_confirm_new" class="popup-area-new hide">
		<div class="b">
			<p id="ec_ui_confirm_new_msg"></p>
			<div class="popup-button-area">
				<a id="ec_ui_confirm_new_yes" href="javascript:;"
					class="box-button-style-1"><span>是</span></a><a
					id="ec_ui_confirm_new_no" href="javascript:;"
					class="box-button-style-1"><span>否</span></a>
			</div>
		</div>
		<div class="f">
			<s class="icon-arrow-down-new"></s>
		</div>
	</div>

	<!--提示对话框-->
	<div id="ec_ui_tips" class="popup-area popup-define-area hide">
		<div class="b">
			<p id="ec_ui_tips_msg" class="tac"></p>
			<div class="popup-button-area tac">
				<a id="ec_ui_tips_yes" href="javascript:;" class="button-action-yes"
					title="确定"><span>确定</span></a>
			</div>
		</div>
		<div class="f">
			<s class="icon-arrow-down"></s>
		</div>
	</div>

	<div class="float-main">
		<div class="event-float-layout index-channel-floor">
			<!--添加 fixed  position: fixed !important;top: 20px;z-index: 500;-->
			<div class="event-float">
				<div>
					<ul class="hover-list">
					</ul>
				</div>
			</div>
		</div>

		<!-- 2018-10-26-悬浮工具栏-start -->
		<!-- 20170518-商品简介-按钮-start -->
		<div class="hungBar j-hungBar">
			<div class="hungBar-content">
				<div class="hungBar-common">
					<a target="_blank" onclick="pushRightHelpMsg(1)" href="/cart2"
						timeType="timestamp" class="hungBar-cart"><span
						style="display: none;"></span><i>购物车</i></a> <a
						id="tools-nav-service-robotim"
						onclick="pushRightServiceHelpMsg(2)" href="javascript:;"
						class="hungBar-service"><i>在线客服</i></a> <input type="hidden"
						name="serviceHref" id="servicehrefId" value="" /> <input
						type="hidden" name="serviceProxyHref" id="serviceProxyHrefId"
						value="" /> <a id="tools-nav-survery"
						href="https://www.vmall.com/help/index.html" target="_blank"
						class="hungBar-feedback"><i>自助服务</i></a> <a href="javascript:;"
						class="hungBar-top" id="hungBar-top"><i>返回顶部</i></a>
				</div>
			</div>
		</div>
		<!-- 2018-10-26-悬浮工具栏-end -->
	</div>

	<!--意见反馈box-->
	<div id="survery-box" class="ol_box_4 hide" style="width: 600px;">
		<div class="box-ct">
			<div class="box-header">
				<div class="box-tl"></div>
				<div class="box-tc">
					<div class="box-tc1"></div>
					<div class="box-tc2">
						<a class="box-close" title="关闭" onclick="ec.survery.close();"
							href="javascript:;"></a><span class="box-title">意见反馈</span>
					</div>
				</div>
				<div class="box-tr"></div>
			</div>
			<table width="100%" cellspacing="0" cellpadding="0" border="0">
				<tbody>
					<tr>
						<td class="box-cl"></td>
						<td class="box-cc">
							<div class="box-content">
								<!-- -表单-意见反馈-start -->
								<div class="form-feedback-area">
									<div class="b">
										<div class="form-edit-area">
											<form autocomplete="off" id="form-feedback">
												<div class="form-edit-table">
													<table cellspacing="0" cellpadding="0" border="0">
														<tbody>
															<tr>
																<td><select name="type" id="surverytype">
																		<option>请选择疑问类型</option>
																		<option>商品质量（手机、平板等软、硬件质量）</option>
																		<option>商品缺货</option>
																		<option>物流发货（发货快慢、发错货、送件人态度等）</option>
																		<option>售后服务（服务网点、维修、退换货、客服）</option>
																		<option>网站问题（商城功能失效、不好用等）</option>
																		<option>其他问题</option>
																</select></td>
															</tr>
															<tr>
																<td><b>您的问题与建议</b><span id="errMsg"></span></td>
															</tr>
															<tr>
																<td><textarea name="content" id="surveryContent"
																		type="textarea" class="textarea"></textarea></td>
															</tr>
															<tr>
																<td><b>您的联系方式</b></td>
															</tr>
															<tr>
																<td><input type="text" name="contact"
																	id="surveryContact"></td>
															</tr>
															<tr>
																<td>
																	<div class="fl">
																		<input type="text" maxlength="4" class="identify"
																			name="code" id="surveryVerify"
																			onkeyup="if(this.value.length==4){ec.survery.validate();}">&nbsp;&nbsp;<img
																			id="surveryVerifyImg"
																			onclick="ec.survery.reloadCode()" class="vam"
																			alt="验证码">&nbsp;&nbsp;&nbsp;&nbsp;<span
																			class="vam"><a class="u" href="javascript:;"
																			onclick="ec.survery.reloadCode();">换一张</a></span>
																	</div>
																	<div class="fr">
																		<a href="javascript:;" onclick="ec.survery.submit();"
																			class="button-action-yes"><span>提交</span></a>
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</form>
										</div>
									</div>
								</div>
								<!-- -表单-意见反馈-end -->
							</div>
						</td>
						<td class="box-cr"></td>
					</tr>
				</tbody>
			</table>
			<div class="box-bottom">
				<div class="box-bl"></div>
				<div class="box-bc"></div>
				<div class="box-br"></div>
			</div>
		</div>
	</div>

	<div id="globleParameter" class="hide" context=""
		stylePath="https://res8.vmallres.com/20210519/css"
		scriptPath="https://res9.vmallres.com/20210519/js"
		imagePath="https://res.vmallres.com/20210519/images"
		mediaPath="https://res.vmallres.com/pimages/"></div>

	<form action="/order/confirmcart" id="miniCartForm" method="post"></form>

	<!--<script src="https://res9.vmallres.com/20210519/js/echannel/slider.min.js"></script>-->
	<!--<script src="https://res9.vmallres.com/20210519/js/echannel/swiper.min.js"></script>-->
	<script>

        ec.load("ec.box", { loadType: "lazy" });
        /**
         *功能：给鼠标移动到s-dropdown上面的时候，记得给他多添加一个hover类样式
         *目的是兼容ie6
         */
        $(function () {
            $(".s-dropdown").hover(function () {
                var jTpl = $(this).attr('data-tpl');
                if (jTpl && $(this).find('.b').length < 1) {
                    $(this).append(document.getElementById(jTpl).innerHTML);
                    $(this).removeAttr('data-tpl');
                }
                $(this).addClass("hover");
            }, function () {
                $(this).removeClass("hover");
            });
            var maxcolor = $('.top-banner-max').find('p').children('a').css("background-color");
            var mincolor = $('.top-banner-min').find('p').children('a').css("background-color");

            $('.top-banner-max').css({ "background-color": maxcolor, overflow: "hidden" });
            $('.top-banner-min').css({ "background-color": mincolor, overflow: "hidden" });
        });

        //显示全球导航选择层
        function showSelectRegion() {
            var box = new ec.box($("#selectRegion-tips").val(),
                {
                    boxid: "region-select-box",
                    boxclass: "ol_box_4",
                    title: "Please select your country or region",
                    width: 700,
                    showButton: false,
                    autoPosition: false,
                    onopen: function (box) {
                    },
                    onok: function (box) {
                    },
                    oncancel: function (box) {
                        box.close();
                        $(".ol_box_mask").remove();
                    },
                    onclose: function (box) {
                        $(".ol_box_mask").remove();
                    }
                });

            box.open();

            $(".box-title").css("font-size", "24px");
            $("#region-select-box").css("height", "auto");
            $(".ol_box_mask").click(function () { box.close(); });

            $(".box-header").unbind("mousemove");
            $(".box-header").unbind("mousedown");

            var divTop = document.getElementById("region-select-box").offsetTop;
            $("#region-select-box").mousedown(function (e) {
                var e = e || window.event;
                var region = document.getElementById("region-select-box");

                var leftX = e.clientX - region.offsetLeft;
                var topY = e.clientY - region.offsetTop;
                $("#region-select-box").mousemove(function (event) {
                    var e = event || window.event;
                    var left = e.clientX - leftX;
                    var top = e.clientY - topY;

                    if (e.clientX - leftX < 20 - region.offsetWidth) {
                        left = 20 - region.offsetWidth;
                    }
                    if (e.clientY - topY < 20 - region.offsetHeight) {
                        top = 20 - region.offsetHeight;
                    }

                    if (e.clientY - topY + 20 >= $(window).height()) {
                        top = $(window).height() - 20;
                    }
                    if (e.clientX - leftX + 20 >= $(window).width()) {
                        left = $(window).width() - 20;
                    }
                    $("#region-select-box").css({ "left": left, "top": top });
                    divTop = top;

                });
            });
            $("#region-select-box").mouseup(function () {
                $("#region-select-box").unbind("mousemove");
            });
            $(window).scroll(function () {
                $("#region-select-box").offset({ top: divTop });
            });
        }

        ec.load("ec.slider", {
            loadType: "lazy",
            callback: function () {
                $("#ec-erweima").slider({
                    width: 91, //必须
                    height: 96, //必须
                    style: 1,                    //1显示分页，2只显示左右箭头,3两者都显示
                    pause: 120000,           //间隔时间
                    auto: true
                });
            }
        });

        ec.ready(function () {
            try {
                ec.minicart.readyContent();
                var $miniCart = $('#header-toolbar-minicart-content');
                $('#header-toolbar-minicart').hover(function () {
                    if (ec.checkBrowerIE()) {
                        var act = (document.activeElement || {}).id;
                        if (act == 'search-kw') {
                            $("#search-kw").blur();
                        }
                    }

                    $(this).unbind("mouseenter");
                    ec.minicart.content();
                }, function () {
                    $(this).bind("mouseenter", function () {
                        if (ec.checkBrowerIE()) {
                            var act = (document.activeElement || {}).id;
                            if (act == 'search-kw') {
                                $("#search-kw").blur();
                            }
                        }

                        $(this).unbind("mouseenter");
                        ec.minicart.content();
                    });
                });

                $('#up_loginName-hover').hover(function () {
                    if (ec.checkBrowerIE()) {
                        var act = (document.activeElement || {}).id;
                        if (act == 'search-kw') {
                            $("#search-kw").blur();
                        }
                    }
                    $(this).unbind("mouseenter");
                }, function () {
                    $(this).bind("mouseenter", function () {
                        if (ec.checkBrowerIE()) {
                            var act = (document.activeElement || {}).id;
                            if (act == 'search-kw') {
                                $("#search-kw").blur();
                            }
                        }
                        $(this).unbind("mouseenter");
                    });
                });

            } catch (err) {

            }
        });
        // 更新购物车数字
        $(function () {
            $('.j-hungBar .hungBar-cart').hover(function () {
                ec.minicart.updateMiniCartNum();
            });
        });

        (function () {
            var bp = document.createElement('script');
            var curProtocol = window.location.protocol.split(':')[0];
            if (curProtocol === 'https') {
                bp.src = 'https://zz.bdstatic.com/linksubmit/push.js';
            }
            else {
                bp.src = 'http://push.zhanzhang.baidu.com/push.js';
            }
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(bp, s);
        })();

        function pushMyOrderMsg() {
            ec.account.afterLogin(function () {
                ec.redirectTo("https://www.vmall.com/member/order?t=1623889478708timestamp");
            });
            ec.dapClick(300000301, {
                "click": "1"
            });
        }

        function pushlowService() {
            var serviceHref = $("#servicehrefId").val();
            ec.account.afterLogin(function () {
                window.open(serviceHref, "_blank");
            }, '', serviceHref);
        }

        function pushMyCartMsg() {
            ec.dapClick(300000401, {
                "click": "1"
            });
        }

        function pushCartProMsg(skuId, url, location) {
            ec.dapClick(300000402, {
                "SKUID": skuId,
                "URL": url,
                "location": location,
                "click": "1"
            });
        }

        function pushFootAdvertMsg(name, url) {
            ec.dapClick(300000501, {
                "name": name,
                "URL": url,
                "click": "1"
            });
        }

        $('#j-footer').on('click', '.footer-warrant-area.clearfix a', function () {
            var dapData = {
                "URL": $(this).attr("href"),
                "click": "1"
            };
            if ($(this).find('img').length > 0) {
                dapData.ADID = $(this).find("img").attr("src");
            } else {
                dapData.name = $(this).text();
            }
            ec.dapClick(300000502, dapData);
        });

        function pushRightServiceHelpMsg(index) {

            //运营商编码
            var serviceHrefSeCode = $("#serviceHelpSeCodeId").val();
            //相应商品的sbomcode
            var serviceHrefSbomcode = $("#serviceHelpSbomId").val();
            //运营商名称
            var serviceHelpSeName = $("#serviceHelpSeNameId").val();
            //自营的运营商编码集合
            var serviceRobotSelfShoplist = $("#serviceRobotSelfShoplistId").val() || "";

            //品牌名称
            var serviceHelpBrandName = $("#serviceHelpBrandNameId").val();
            //品牌编码
            var serviceHelpBrandCode = $("#serviceHelpBrandCodeId").val();

            var serviceHref = "";
            //点击客服页面的标识
            var serviceFlag = $("#serviceRefId").val();
            if (serviceFlag && serviceFlag == "1") {
                //商品详情页
                serviceHref = $("#servicehrefId").val().replace("&from=06", "&from=01");
            } else if (serviceFlag && serviceFlag == "3") {
                //订单详情页 /我的订单页 /订单修改页 /收货地址管理页
                serviceHref = $("#servicehrefId").val().replace("&from=06", "&from=03");
            } else if (serviceFlag && serviceFlag == "4") {
                //我的退换货页 /退换货详情页 / 申请退换货页
                serviceHref = $("#servicehrefId").val().replace("&from=06", "&from=04");
            } else if (serviceFlag && serviceFlag == "7") {
                //消息中心
                serviceHref = $("#servicehrefId").val().replace("&from=06", "&from=07");
            } else if (serviceFlag && serviceFlag == "5") {
                //帮助中心
                serviceHref = $("#servicehrefId").val().replace("&from=06", "&from=05");
            } else {
                serviceHref = $("#servicehrefId").val();
            }
            //需要拼接到url上的参数
            var serviceHrefSbomcodeParm = "&sbomCode=" + serviceHrefSbomcode;
            var serviceHrefSeCodeParm = "&seCode=" + serviceHrefSeCode;
            var serviceHrefSeNameParm = "&seName=" + serviceHelpSeName;
            var serviceHrefBrandNameParm = "&brandName=" + serviceHelpBrandName;
            var servicehrefBrandCodeParm = "&brandCode=" + serviceHelpBrandCode;

            if (serviceHrefSbomcode) {
                serviceHref += serviceHrefSbomcodeParm;
            }
            if (serviceHelpBrandCode) {
                serviceHref += servicehrefBrandCodeParm;
            }
            if (serviceHelpBrandName) {
                serviceHref += serviceHrefBrandNameParm;
            }
            //代销商品
            if (serviceHrefSeCode && serviceRobotSelfShoplist.indexOf(serviceHrefSeCode) == -1) {

                if ($("#serviceProxyHrefId").val() && $("#serviceProxyHrefId").val() != "") {
                    serviceHref = "";
                    if (serviceFlag && serviceFlag == "1") {
                        //商品详情页
                        serviceHref = $("#serviceProxyHrefId").val().replace("&from=06", "&from=01");
                    } else if (serviceFlag && serviceFlag == "3") {
                        //订单详情页 /我的订单页 /订单修改页 /收货地址管理页
                        serviceHref = $("#serviceProxyHrefId").val().replace("&from=06", "&from=03");
                    } else if (serviceFlag && serviceFlag == "4") {
                        //我的退换货页 /退换货详情页 / 申请退换货页
                        serviceHref = $("#serviceProxyHrefId").val().replace("&from=06", "&from=04");
                    }
                    if (serviceHrefSbomcode) {
                        serviceHref += serviceHrefSbomcodeParm;
                    }
                    if (serviceHelpBrandCode) {
                        serviceHref += servicehrefBrandCodeParm;
                    }
                    if (serviceHelpBrandName) {
                        serviceHref += serviceHrefBrandNameParm;
                    }
                    serviceHref += serviceHrefSeCodeParm;
                    serviceHref += serviceHrefSeNameParm;
                }
            }

            if (serviceFlag && serviceFlag == "-1") {
                //游客购订单详情页面，不需要拉起登录
                window.open(serviceHref, "_blank");
            } else {
                ec.account.afterLogin(function () {
                    window.open(serviceHref, "_blank");
                }, '', serviceHref);
            }

            var buttonName = ['', '购物车', '在线客服', '意见反馈'][index];
            ec.dapClick(300000601, {
                "buttonName": buttonName,
                "click": "1",
                'index': index
            });
        }

        //右侧浮层意见反馈和购物车点击方法
        function pushRightHelpMsg(index) {
            var buttonName = ['', '购物车', '在线客服', '意见反馈'][index];
            ec.dapClick(300000601, {
                "buttonName": buttonName,
                "click": "1",
                'index': index
            });
        }

        jump = function (url, obj) {
            if (typeof (obj.html()) != "undefined" && obj.html() != null && obj.html() != "") {
                pushFootAdvertMsg($(this).html(), url);
            }
            var win = ec.openWindow(url);
            win.opener = null;
        }

        function pushProHotMsg(skuCode) {
            ec.dapClick(300020701, {
                "productId": ec.product.id,
                "SKUCode": (ec.product.getSkuInfo(ec.product.getSku()) || {}).code,
                "linkSKUCode": skuCode,
                "click": "1"
            });
        }

        jump_link = function (url) {
            return;
        }

        //购物车关闭提示
        function cartTipsHide() {
            $('#cart-tips').hide();
        }
    </script>

	<script>
        new Slider({//友情链接
            objid: '#serverlink',
            listname: '.service-list',
            listitem: 'ol',
            shownum: 1
        }).init();

        $(".fl").find("dd").find("a").bind("click", function () {
            var HREF = "";
            HREF = this.href;
            var name = this.innerHTML;
            if (HREF == null || HREF == "") {
                return;
            }
            if (this.id == "tools-nav-service-robotim-button") {
                name = "在线客服";
            }
            if (this.className == "service-btn btn-report") {
            	
            	
            	
            	
                name = "不良信息举报";
            }
            pushFootAdvertMsg(name, HREF);
        });
        
        
        $(function(){
        	$(".cancel").click(function(){
        		$(".id001").val('')
        		$(".id002").val('')
        	})
        	$(".ok").click(function(){
        		var min = $(".id001").val()
        		var max = $(".id002").val()
        		location.href = "/huawei-project/TotalProductServlet?action=pageByPrice&min="+min+"&max="+max;
        	})
        })
        

    </script>
</body>

</html>