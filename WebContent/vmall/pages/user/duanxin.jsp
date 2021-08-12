<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>华为手机号—登录</title>
<link type="text/css" rel="stylesheet" href="/huawei-project/vmall/pages/static/css/duanxin.css">
<script type="text/javascript" src="/huawei-project/vmall/pages/static/script/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="/huawei-project/vmall/pages/static/script/jquery-1.7.2.js"></script>
<script type="text/javascript">
$(function(){
	$("#phone").blur(function(){
		var phone=$('#phone').val();
		if(phone==""){
			alert('手机号不能为空');
			return;
		}
		$.post("/huawei-project/DunXinServlet",{phone:phone},function(data){
			// res 等于0，说明用户名不存在{result:0}
			alert(data.res);
			if(data.res==0){	
				$(".errorMsg").html("手机号输入错误，请重新输入或注册后登陆!");
			}
			// res 等于1，说明用户名存在
			else if(data.res==1){
				$(".errorMsg").html("");
				$("#sendbtn").attr("disabled", false);
			}
		},"JSON");
	});
});
		var s=0;
		var n=60;
		function sendsms(){
			var phone=$('#phone').val();
			if(phone==""){
				alert('手机号不能为空');
				return;
			}
			$('#sendbtn').attr('disabled',true);
			//發送請求
			$.post("/huawei-project/SendServlet",{phone:phone},function(data){
				if(data.Message=="OK"){
					alert('验证码发送成功');
				}else{
					alert(data.Message);
				}
			},"JSON");
			//启动定时器
			s=setInterval("jishi()",1000);
		}
		function jishi(){
			n-=1;
			if(n==0){
				$('#sendbtn').val("重新获取");
				$('#sendbtn').removeAttr("disabled");
				n=60;
				//停止计时
				clearInterval(s);
			}else{
				$('#sendbtn').val(n+'s后,重新发送');
			}
		}
		
		function login(){
			var code=$('#code').val();
			if(code==""){
				alert('验证码不能为空！');
				return;
			}
			$.post("/huawei-project/YanZhengServlet",{code:code},function(data){
				if(data.Message=="OK"){
					window.location='loginzz.jsp';
				}else{
					alert(data.Message);
				}
			},"JSON");
		}
</script>

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
		<div id="a" >
			<input type="text" id="phone" placeholder="手机号" class="shoujihao" name="phone"/><br/>
			<input type="text" id="code" placeholder="验证码" class="yanzhengma" name="code"/>
			<div id="b"><input type="button" value="发送验证码" id="sendbtn" onclick="sendsms()" disabled="disabled"/></div>
			<a href="login.jsp" class="a"><span class="yanzhengmadenglu">用户名、密码登录</span> </a>
			<input type="button" value="确定" id="ok" class="ab" onclick="login()" />	
		</div>
		
		

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

</html>