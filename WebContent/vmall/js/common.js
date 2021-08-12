$(function () {
  // 头部hover变色
  $(".shortcut ul .s-down").bind({
    "mouseover": function () {
      $(this).css("backgroundColor", "#fff");
      $(this).find(".s-dropdown").show();
      $(this).find(".more").css("color", "#cb242b");
    }, "mouseout": function () {
      $(this).css("backgroundColor", "#2e2828");
      $(this).find(".s-dropdown").hide();
      $(this).find(".more").css("color", "#afafaf");
    }
  });
  $(".s-dropdown .dropdown-more dt a").on({
    "mouseover": function () {
      $(this).css("color", "#cb242b");
    }, "mouseout": function () {
      $(this).css("color", "#3a3a3a");
    }
  });
});


$(function () {
  //判断是否登录
  if ($.cookie("userName")) {
    $(".s-main ul li.already-login").show().css("display", "inline-block");
    $(".s-main ul li.reg-login").hide();
    $("#top-loginName").text($.cookie("userName"));
  } else {
    $(".s-main ul li.already-login").hide();
    $(".s-main ul li.reg-login").show();
  }
  //退出登录
  $("#login-out").click(function (e) {
    e.preventDefault();
    $.removeCookie("userName", { path: '/' });
    $.removeCookie("userPwd", { path: '/' });
    $.removeCookie("userid", { path: '/' })
    $(".minicart-empty").show();
    $(".minicart-list").hide();
    $(".minicart-good-list").html("");
    sessionStorage.clear();
    location.reload();
  });
});

$("#s-mimicart").click(function(){
  if($.cookie("userName")){
    location.href = "../vmall/cart.html";
  }else{
    location.href = "../vmall/pages/login.html";
  }
})
