<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册_华为账号</title>
<script type="text/javascript"
	src="/huawei-project/vmall/pages/static/script/jquery-3.5.1.js"></script>
<link type="text/css" rel="stylesheet"
	href="/huawei-project/vmall/pages/static/css/rejist.css">
</head>
<body>
	<!-- 头部 -->
	<div id="top">
		<img src="/huawei-project/vmall/pages/static/img/head.png" height="37x"
			class="head_logo" /> <b class="head_font">华为商城</b>
	</div>

	<!-- 中间左边 -->

	<div class="hwid_root">
		<div class="hwid-left">
			<span>手机号注册</span> <img src="/huawei-project/vmall/pages/static/img/shouji.png"
				class="shoujitubiao" />
		</div>
		<div class="hwid-left2">
			<span>邮箱地址注册</span> <img src="/huawei-project/vmall/pages/static/img/youxiang.png"
				class="youxiangtubiao" />
		</div>
		<!--中间 -->
		<div class="hwid-reg-detail">
			<span>华为账号注册</span>

		</div>
		<span id="center_head">已有账号,</span> <a id="center_a" href="login.jsp">去登录></a>


		<!--国家框 -->
		<img class="xiala" src="/huawei-project/vmall/pages/static/img/icon-test.png" />

		<div class="input_guojia">
			<span>国家/地区</span> <span class="xuanzeguojia">中国</span>
			<dl class="guojia">
				<dt>中国</dt>
				<dt>日本</dt>
				<dt>韩国</dt>
				<dt>美国</dt>
			</dl>

		</div>
		<span id="code">+86(中国)</span> <img id="test2"
			src="/huawei-project/vmall/pages/static/img/icon-test.png" />
		<!-- 表单 -->
		<form id="myform" action="/huawei-project/UserServlet" method="post">
			<input type="hidden" name="action" value="rejister" /> 
			<input type="tel" name="userphone" class="inphone" placeholder="请输入手机号" value="${userphone }" />&nbsp;&nbsp;<span class="msg" style="color: red"></span><br> 
			<input type="text" name="captcha" class="captcha" placeholder="短信验证码" />
			<!-- <li>60</li> -->
			<!-- <span class="huoquyanzhengma" >获取验证码</span> -->
			<div id="b">
				<input type="button" value="发送验证码" id="sendbtn" onclick="sendsms()" disabled="disabled"/>&nbsp;&nbsp;<span class="msg5" style="color: red"></span>
			</div>
			<input type="password" name="password" class="password" id="password" placeholder="密码" />&nbsp;&nbsp;<span class="msg2" style="color: red"></span>
			<img class="yanjing" src="/huawei-project/vmall/pages/static/img/yanjing.png">
			<input class="agin_password" type="password" placeholder="确认密码" name="agin_password" />&nbsp;&nbsp;<span class="msg3" style="color: red"></span> 
			<img class="yanjing1" src="/huawei-project/vmall/pages/static/img/yanjing.png"> 
			<input type="text" class="emil" name="emil" placeholder="邮箱地址" id="emil" value="${emil }" />&nbsp;&nbsp;<span class="msg4" style="color: red"></span> 
			<input type="submit" id="submit" value="注册" />
		</form>

		<!-- 底部 -->
		<div id="dibu">
			<span class="yunkongjian">华为账户与云空间用户协议</span> 
			<span class="yinsi">关于华为账户与云空间隐私的声明</span>
			<span class="wenti">常见问题</span> 
			<span class="cookie">Cookies</span> 
			<span class="huaweigongsi">Copyright ? 2011-2020 华为软件技术有限公司 版权所有保留一切权利 苏B2-20070200号 | 苏ICP备09062682号-9</span>
		</div>
	</div>
</body>

<script type="text/javascript">
	$(function() {
		
		var v1=false;//手机验证是否通过
		var v2=false;//手机号是否存在
		var v3=false;//密码验证是否通过
		var v4=false;//确认密码是否通过
		var v5=false;//邮箱验证是否通过
		
		$(".inphone").blur(function() {
			var userphone = $(".inphone").val();
			//判断手机号是否为空
			if(userphone==""){
				$(".msg").html("手机号不能为空");
				return false;
			}else{
				//1 先获取用户名输入框中的内容
				var userphoneText = $(".inphone").val();
				//2 创建正则表达式对象
				var userphonePatt = /^1[3|4|5|7|8][0-9]{9}$/;
				//3 调用test方法验证结果
				if (!userphonePatt.test(userphoneText)) {
					//4 如果不合法，要提示用户，并阻止提交。
					$(".msg").text("手机号格式不合法!");
					$("#sendbtn").attr("disabled", true);
					v1=false;
					return false;
				} else {
					$(".msg").text("");
					$.post("/huawei-project/ZhuCeServlet", {userphone : userphone}, function(data) {
						// res 等于0，说明用户名不存在{result:0}
						if (data.res == 0) {
							$(".msg").html("");
								$("#sendbtn").attr("disabled", false);
								//验证手机号码：根据电信，移动，联通目前发行的号码来验证
								return true;
						}
						// res 等于1，说明用户名存在
						else if (data.res == 1) {
							$(".msg").html("手机号已存在，请重新输入!");
							return false;
						}
					}, "JSON");
					v1=true;
					return true;
				}
				return true;
			}
			
		})

		//$(".inphone").blur(function(){
		//			验证手机号码：根据电信，移动，联通目前发行的号码来验证
		//1 先获取用户名输入框中的内容
		//var userphoneText = $(".inphone").val();
		//2 创建正则表达式对象
		//var userphonePatt = /^1[3|4|5|7|8][0-9]{9}$/;
		//3 调用test方法验证结果
		//if ( !userphonePatt.test(userphoneText) ) {
		//4 如果不合法，要提示用户，并阻止提交。
		//$(".msg").text("手机号格式不合法!");
		//return false;
		//}else{
		//	$(".msg").text("");
		//	return true;
		//}	
		//});

		$(".password").blur(function() {
			//			验证密码：必须由字母，数字下划线组成，并且长度为6到12位
			//1 先获取密码输入框中的内容
			var passwordText = $(".password").val();
			//2 创建正则表达式对象
			var passwodPatt = /^\w{5,12}$/;
			//3 调用test方法验证结果
			if (!passwodPatt.test(passwordText)) {
				//4 如果不合法，要提示用户，并阻止提交。
				$(".msg2").text("密码不合法,必须为6-12个字符!");
				v3=false;
				return false;
				
			} else {
				$(".msg2").text("");
				v3=true;
				return true;
				
			}
		});

		$(".agin_password").blur(function() {
			//			验证确认密码：和密码相同
			// 1 获取确认密码内容
			var repwdText = $(".agin_password").val();
			// 2 比较确认密码和密码是否一致
			if (repwdText != $(".password").val()) {
				// 3 不一致就要提示用户，并阻止提交
				$(".msg3").text("密码和确认密码不一致!");
				v4=false;
				return false;	
			} else {
				$(".msg3").text("");
				v4=true;
				return true;	
			}
		});

		$(".emil").blur(
						function() {
							//			邮箱验证：xxxxx@xxx.com
							// 1 先获取邮箱内容
							var emailText = $(".emil").val();
							// 2 创建邮箱正则表达式
							var emailPatt = /^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;
							// 3 使用test方法验证结果
							if (!emailPatt.test(emailText)) {
								// 4 不合法时提示用户，阻止提交
								$(".msg4").text("邮箱格式不合法!");
								v5=false;
								return false;
								
							} else {
								$(".msg4").text("");
								v5=true;
								return true;
								
							}
						});


		$(".captcha").blur(function() {
			var code = $('.captcha').val();
			if (code == "") {
				$(".msg5").text("验证码不能为空!");
				return false;
			}else{
				$(".msg5").text("");
				
				
			$.post("/huawei-project/ZCYZServlet", {captcha : code}, function(data) {
				if (data.Message == "OK") {
					v2=true;
					return true;
				} else {
					v2=false;
					return false;
				}
			}, "JSON");
			}
		})
		
		$("form").submit(function() {
					var phone = $(".inphone").val();
					var captcha = $(".captcha").val();
					var password = $(".password").val();
					var apassword = $(".agin_password").val();
					var emil = $(".emil").val();
					
					if (phone == "" || captcha == "" || password == "" || apassword == "" || emil == "") {
						alert("请将信息填写完整!!!");
						return false;
					}
					
					if(v1==false){
						$(".msg").text("手机号不存在或已注册!");
						return false;
					}
					if(v2==false){
						$(".msg5").text("验证密码不正确!");
						return false;
					}
					if(v3==false){
						$(".msg2").text("密码格式不正确,必须为6-12个字符!");
						return false;
					}
					if(v4==false){
						$(".msg3").text("确认密码与密码不一致!");
						return false;
					}
					if(v5==false){
						$(".msg4").text("邮箱格式不正确!");
						return false;
					}
					
					
					//if(v1===false||v2===false||v3===false||v4===false||v5===false){
					//	alert("验证码或手机号不存在!!!");
					//	return false;
					//}	
					return true;
		})

		// 切换密码的可见性
		var flag = true;
		$(".yanjing").click(function() {
			if (flag) {
				$(".yanjing").attr("src","/huawei-project/vmall/pages/static/img/眼睛.png");

				$("#password").attr("type", "text");

				flag = false;
			} else {
				 $(".yanjing").attr("src","/huawei-project/vmall/pages/static/img/yanjing.png");
				$("#password").attr("type", "password");
				flag = true;
			}

		});

		// 切换二次密码的可见性
		$(".yanjing1").click(function() {
					var src = $(".yanjing1").attr("src")
					if (flag) {
						$(".yanjing1").attr("src","/huawei-project/vmall/pages/static/img/眼睛.png");
						$(".agin_password").attr("type", "text");
						flag=false;
					} else {
						$(".yanjing1").attr("src","/huawei-project/vmall/pages/static/img/yanjing.png");
						$(".agin_password").attr("type", "password");
						flag=true;
					}
				});

		// 切换国家下拉列表 显示和隐藏
		$(".xuanzeguojia").click(function() {
			$(".guojia").toggle()
		})
		$(".xiala").click(function() {
			$(".guojia").toggle()
		})

		// 选择国家
		$(".guojia>dt").click(function() {
			$(".xuanzeguojia").text($(this).text())

		})
		$(".guojia>dt").click(function() {
			$(".guojia").toggle()

		})
		$(".guojia>dt").click(function() {

			if ($(".xuanzeguojia").text() == "日本") {
				$("#code").text("+81(日本)")
			} else if ($(".xuanzeguojia").text() == "中国") {
				$("#code").text("+86(中国)")
			} else if ($(".xuanzeguojia").text() == "韩国") {
				$("#code").text("+44(韩国)")
			} else if ($(".xuanzeguojia").text() == "美国") {
				$("#code").text("+1(美国)")
			}

		})

	});

	var s = 0;
	var n = 60;

	function sendsms() {
		var phone = $('.inphone').val();
		$('#sendbtn').attr('disabled', true);
		//發送請求
		$.post("/huawei-project/Send2Servlet", {
			userphone : phone
		}, function(data) {
			if (data.Message == "OK") {
				alert('验证码发送成功');
			} else {
				alert(data.Message);
			}
		}, "JSON");
		//启动定时器
		s = setInterval("jishi()", 1000);
	}
	function jishi() {
		n -= 1;
		if (n == 0) {
			$('#sendbtn').val("重新获取");
			$('#sendbtn').removeAttr("disabled");
			n = 60;
			//停止计时
			clearInterval(s);
		} else {
			$('#sendbtn').val(n + 's后,重新发送');
		}
	}

	function login() {
		var code = $('.captcha').val();
		if (code == "") {
			alert('验证码不能为空！');
			return;
		} 	
		$.post("/huawei-project/ZCYZServlet", {captcha : code}, function(data) {
			if (data.Message == "OK") {
				v2=true;
				alert(222);
			} else {
				v2=false;
				alert(data.Message);
			}
		}, "JSON");
	}
</script>
</html>