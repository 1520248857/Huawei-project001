$(function () {
  //加载头部
  $(".top-header").load("../vmall/pages/header.html", function () {
    $.ajax({
      type: "get",
      url: "php/getcart.php",
      data: "userid=" + $.cookie("userid"),
      success: function (msg) {
        console.log(msg);
        if (msg != "") {
          $(".minicart-empty").hide();
          $(".minicart-list").show();
          msg = msg.slice(0, msg.length - 1);
          let arrData = msg.split("&");
          let totalPrice = 0;
          $.each(arrData, function (i, val) {
            let arrPhone = val.split(";");
            let oLi = `<li class="clearfix">
                    <div class="pro-info clearfix">
                      <div class="pro-choose">
                        <i></i>
                      </div>
                      <div class="pro-img"><img src="${arrPhone[5]}" alt=""></div>
                      <div class="pro-name">${arrPhone[0]} ${arrPhone[1]} ${arrPhone[3]}（${arrPhone[2]}）</div>
                      <div class="pro-desc"></div>
                      <div class="pro-status">
                        <div class="pro-price">¥<b>${arrPhone[4]}</b> X ${arrPhone[6]}</div>
                      </div>
                    </div>
                  </li>`;
            $(".minicart-good-list").append(oLi);
            totalPrice += arrPhone[4] * arrPhone[6];
          });
          $("#minicart-total-price em").text(totalPrice);
        }
      }
    });
  });
  //加载尾部
  $("footer").load("../vmall/pages/footer.html");
  //加载工具栏
  $(".float-main").load("../vmall/pages/tool.html");
  //加载banner图
  $(".banner .box li").each(function (i, el) {
    $(el).css({
      background: "url(/huawei-project/vmall/upload/" + i + ".jpg) no-repeat",
      backgroundPosition: "50% 0px",
      backgroundSize: "100% 550px"
    });
  });
});
//轮播图
$(function () {
  let _time;
  let index = 0;
  function fun() {
    index++;
    if (index > 5) {
      index = 0;
    }
    setPic();
  }
  function setPic() {
    $(".banner .box li").eq(index).stop().fadeIn(1000).siblings().stop().fadeOut(1000);
    $(".banner-tool .page span").eq(index).addClass("current").siblings().removeClass("current");
  }
  function setTime() {
    clearInterval(_time);
    _time = setInterval(fun, 2000);
  }

  setPic();
  setTime();

  $(".banner-tool .page span").mouseover(function () {
    clearInterval(_time);
    index = $(this).index();
    setPic();
  });
  $(".banner-tool .page span").mouseout(function () {
    index = $(this).index();
    setTime();
  });
  $(".banner-prev").click(function () {
    clearInterval(_time);
    index--;
    if (index < 0) {
      index = 5;
    }
    setPic();
    setTime();
  });
  $(".banner-next").click(function () {
    clearInterval(_time);
    index++;
    if (index > 5) {
      index = 0;
    }
    setPic();
    setTime();
  });
});
//导航栏选中
$(function () {
  $(".nav-list .nav-list-item").mouseover(function () {
    $(this).addClass("nav-list-active").siblings().removeClass("nav-list-active");
    $(this).find(".nav-pannel").removeClass("nav-pannel-none");
  }).mouseout(function () {
    $(this).removeClass("nav-list-active");
    $(this).find(".nav-pannel").addClass("nav-pannel-none");
  });

  $(".nav-list-item2 a").mouseover(function () {
    $(this).addClass("nav-list-item2-active").siblings().removeClass(".nav-list-item2-active");
  }).mouseout(function () {
    $(this).removeClass("nav-list-item2-active");
  });
});
//热销单品选中
$(function () {
  $(".hot-sell-item").mouseover(function () {
    $(this).addClass("hot-sell-item-current").siblings().removeClass("hot-sell-item-current");
  }).mouseout(function () {
    $(this).removeClass("hot-sell-item-current");
  });
});
//精品推荐滚动
$(function () {
  $(".good-recommend-list .grid-btn-next").click(function () {
    let l = $(".good-recommend-list ul").css("marginLeft");
    l = Number(l.slice(0, l.length - 2));
    l -= 1210;
    $(".good-recommend-list ul").css("marginLeft", l + "px");
    $(".good-recommend-list .grid-btn-prev").removeClass("grid-btn-none");
    if (l == -2420) {
      $(this).addClass("grid-btn-none");
    }
  });
  $(".good-recommend-list .grid-btn-prev").click(function () {
    let l = $(".good-recommend-list ul").css("marginLeft");
    l = Number(l.slice(0, l.length - 2));
    l += 1210;
    $(".good-recommend-list ul").css("marginLeft", l + "px");
    $(".good-recommend-list .grid-btn-next").removeClass("grid-btn-none");
    if (l == 0) {
      $(this).addClass("grid-btn-none");
    }
  });
});
//首页下方轮播
$(function () {
  let _time1 = null;
  let index1 = 0;
  function fun1() {
    index1++;
    if (index1 > 3) {
      index1 = 0;
    }
    setPic1();
  }
  function setPic1() {
    $(".s-banner .s-page1 li").eq(index1).addClass("current").siblings().removeClass("current");
    $(".s-banner img").eq(index1).stop().fadeIn(1000).siblings("img").stop().fadeOut(1000);
  }
  function setTime1() {
    clearInterval(_time1);
    _time1 = setInterval(fun1, 2000);
  }
  setTime1();
  $(".s-banner .s-page1 li").mouseover(function () {
    clearInterval(_time1);
    index1 = $(this).index();
    setPic1();
  }).mouseout(function () {
    setTime1();
  });
});
//智能家居滚动
$(function () {
  $(".grid-btn-next1").click(function () {
    let l = $(".goods-content ul").css("marginLeft");
    l = Number(l.slice(0, l.length - 2));
    if (l == 0) {
      l = -1212;
      $(".grid-btn-prev1").removeClass("grid-btn-none");
    } else if (l == -1212) {
      l = -1818;
      $(this).addClass("grid-btn-none");
    }
    $(".goods-content ul").css("marginLeft", l + "px");
  });
  $(".grid-btn-prev1").click(function () {
    let l = $(".goods-content ul").css("marginLeft");
    l = Number(l.slice(0, l.length - 2));
    if (l == -1818) {
      l = -1212;
      $(".grid-btn-next1").removeClass("grid-btn-none");
    } else if (l == -1212) {
      l = 0;
      $(this).addClass("grid-btn-none");
    }
    $(".goods-content ul").css("marginLeft", l + "px");
  });
});


$(function () {
  //判断是否登录
  if ($.cookie("userName")) {
    $(".gg-unlogin .welcome-unlogin").hide();
    $(".gg-unlogin .welcome-login").show();
    $("#gg-loginName").text($.cookie("userName"));
  } else {
    $(".gg-unlogin .welcome-unlogin").show();
    $(".gg-unlogin .welcome-login").hide();
  }
  //判断是否从注册页面登录过来,同意协议
  if ($.cookie("userPwd2")) {
    $.removeCookie("userPwd2", { path: '/' });
    $(".login-pop").show();
    $(".login-tips-1").show();
    $(".login-tips-1 .login-tips-ok").click(function () {
      $(".login-pop").hide();
    });
    $(".login-tips-1 .login-tips-cancel").click(function () {
      $(".login-tips-1").hide();
      $(".login-tips-2").show();
    });
    $(".login-tips-2 .login-tips-cancel").click(function () {
      $(".login-tips-1").show();
      $(".login-tips-2").hide();
    });
    $(".login-tips-2 .login-tips-ok").click(function () {
      $.removeCookie("userName", { path: '/' });
      $.removeCookie("userPwd", { path: '/' });
      $.removeCookie("userid", { path: '/' })
      location.reload();
    });
  }
});

