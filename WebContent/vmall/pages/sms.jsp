<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="../css/base.css">
  <link rel="stylesheet" href="../css/reglogin.css">
</head>
<body>
    <header>
      <div class="container">
        <img src="../images/HUAWEI.svg" alt="">
        <em></em>
        <h3>华为商城</h3>
      </div>
    </header>
    <main>
      <div class="login-title">
        <span>华为账号登录</span>
      </div>
      <div class="login-side clearfix">
        <div class="login-left-side">
          <img src="../images/loginer.png" alt="">
          <p>若您使用华为手机，请进入“设置”>“华为帐号”扫码登录。</p>
        </div>
        <span class="login-pipe"></span>
        <div class="login-right-side clearfix">
          <div class="login-input">
            <div class="reg-content">
              <div class="reg-error" id="tele-error"><i class="error-tips"></i><span></span></div>
              <div class="login-userName">
                <div class="input-container">
                  <input type="text" name="userName" class="reg-input" placeholder="手机号" id="userName">
                </div>
              </div>
              
            </div>
            <div class="reg-content">
              <div class="login-userPwd">
                <div class="input-container">
                  <input type="password" name="userPwd" class="reg-input" placeholder="验证码" id="userPwd">
                </div>
                <i class="pwd-display"></i>
              </div>
              <div class="reg-error"><i class="error-tips"></i><span></span></div>
            </div>
          
          </div>
          <div class="login-btn" id="login-btn">登录</div>
          <div class="login-link">
            <span id="login-reg">注册</span>|
            <span>忘记密码</span>|
            <span>遇到问题</span>
          </div>
          <div class="login-list clearfix">
            <span></span>
            <span></span>
            <span></span>
          </div>
        </div>
      </div>
    </main>
    <div class="hr-5"></div>
    <footer>
      <div>
        <p>华为帐号与云空间用户协议 | 关于华为帐号与云空间隐私的声明 | 常见问题 |Cookies</p> <br>
        <p>华为帐号 版权所有 © 2011-2020</p>
      </div>
      
    </footer>
    <div class="banner-box">
      本网站使用 Cookie 功能，为您提供最佳的用户体验。<a href="https://consumer.huawei.com/cn/legal/cookie-policy/" class="rule"
        target="_blank">了解更多</a>
      <span></span>
    </div>
</body>
</html>
<script src="../js/jQuery.js"></script>
<script src="../js/jquery.cookie-1.4.1.min.js"></script>
<script>
  $(function(){
    // 密码的隐藏显示
    let tg = 0;
    $(".pwd-display").click(function(){
      if(tg == 0){
        $(this).css("backgroundImage","url(../images/password_eyeon.svg)");
        $("#userPwd").attr("type","text");
        tg = 1;
      }else{
        $(this).css("backgroundImage", "url(../images/password_eyeoff.svg)");
        $("#userPwd").attr("type", "password");
        tg = 0;
      }
    });
    $("#login-reg").click(function(){
      location.href = "../pages/register.html";
    });
    //登录手机号的判定
    let flag = false;
    $("#userName").blur(function(){
      if($("#userName").val() == ""){
        $("#tele-error").show().find("span").text("手机号不能为空");
        flag = false;
      }else if($("#userName").val().length < 8){
        $("#tele-error").show().find("span").text("手机号格式不正确");
        flag = false;
      }else{
        $("#tele-error").hide();
        flag = true;
      }
    });
    //登录按钮的判定
    $("#login-btn").click(function(){
      $.ajax({
        type:"post",
        url:"../php/login.php",
        data:"userName=" + $("#userName").val() + "&userPwd=" + $("#userPwd").val(),
        success:function(resText){
          console.log(resText);
          if(resText != 0){
            $.cookie("userName", $("#userName").val(),{ expires: 7,path:'/'});
            $.cookie("userPwd", $("#userPwd").val(),{ expires: 7,path:'/'});
            $.cookie("userid",resText, { expires: 7, path: '/' });
            location.href = "../index.html";
          }else{
            $("#tele-error").show().find("span").text("用户名或密码错误");
          }
        }
      });
    });
  });
</script>
