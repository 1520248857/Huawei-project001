<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>华为账号—登录</title>
<script type="text/javascript" src="/huawei-project/vmall/pages/static/script/jquery-1.7.2.js"></script>
<link type="text/css" rel="stylesheet" href="/huawei-project/vmall/pages/static/css/login.css">
</head>

<body>
	<!-- 头部 -->
	<div id="top">
		<img src="/huawei-project/vmall/pages/static/img/head.png" height="37x" class="head_logo" /> <b
			class="head_font">华为商城</b>
	</div>

	<!-- 中部 -->

	<span class="center_head">华为账号登陆</span>
	<div id="center_left">
		<img src="/huawei-project/vmall/pages/static/img/untitled.png" class="erweima"> <br /> 
		<span class="saomatishi">若您使用华为手机，请进入“设置”>“华为帐号”扫码登录。</span>
	</div>


	<div id="center_right">
		<div class="msg_cont">
			<b></b>
			<span class="errorMsg" style="color:red">${lomsg }</span>
		</div>
		<form id="myform" action="/huawei-project/UserServlet" method="post">
			<input type="hidden" name="action" value="login"/> 
			<input type="hidden" name="url" value="${param.url }"/>
			<input value="${lophone }" type="tel" placeholder="用户名" class="zhanghaoshuru" name="userphone"/> 
			<input type="password" placeholder="密码" class="mima" name="password" /> 
			<a href="duanxin.jsp" class="ab"><span class="yanzhengmadenglu">短信验证码登录</span> </a>
			<img src="/huawei-project/vmall/pages/static/img/yanjing.png" class="yanjing" /> 
			<input type="submit" value="登录" class="denglu" />
		</form>

		<span class="zhuce"><a href="rejist.jsp">注册</a></span> 
		<span class="wangjimima">忘记密码</span> 
		<span class="gengduo">更多</span> 
	</div>


	<!-- 底部 -->
	<div id="dibu">
		<span class="yunkongjian">华为账户与云空间用户协议</span> <span class="yinsi">关于华为账户与云空间隐私的声明</span>
		<span class="wenti">常见问题</span> <span class="cookie">Cookies</span> 
		<span class="huaweigongsi">Copyright ? 2011-2020 华为软件技术有限公司 版权所有保留一切权利 苏B2-20070200号 | 苏ICP备09062682号-9</span>
	</div>
</body>
<script type="text/javascript">
	$(function(){
		$(".zhanghaoshuru").blur(function(){
			var phone =$(".zhanghaoshuru").val();
			if(phone===""||phone===null){
				$("span.errorMsg").text("用户名不能为空!!!");
			}
		});
		$(".mima").blur(function(){
			var password = $(".mima").val();
			if(password===""||password===null){
				$("span.errorMsg").text("密码不能为空!!!");
			}
		});
	});
</script>
</html>