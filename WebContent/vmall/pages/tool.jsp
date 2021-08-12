<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="toolBar">
  <div class="toolBar-event">
    <ul>
      <li><a href="">手机</a></li>
      <li><a href="">笔记本电脑</a></li>
      <li><a href="">精品平板</a></li>
      <li><a href="">智能穿戴</a></li>
      <li><a href="">热销配件</a></li>
      <li><a href="">生态精品</a></li>
    </ul>
  </div>
  <div class="toolBar-content">
    <div class="toolBar-content-1 clearfix">
      <a href="" class="toolBar-oldNew">以旧换新</a>
      <a href="" class="toolBar-buttonCode">二维码</a>
    </div>
    <a href="" class="toolBar-cart">购物车</a>
    <a href="" class="toolBar-service">在线客服</a>
    <a href="" class="toolBar-feedback">自助服务</a>
    <a href="#" class="toolBar-top">返回顶部</a>
  </div>
</div>
<script>
  //返回顶部出现
    $(function () {
      $(window).scroll(function () {
        if ($(window).scrollTop() > 1200) {
          $("a.toolBar-top").fadeIn(1000).css("display", "block");
        } else {
          $("a.toolBar-top").fadeOut(1000);
        }


        if ($("#phone")[0]) {
          if ($(window).scrollTop() > 1800) {
            $(".toolBar-event").show();
          }
          if ($(window).scrollTop() > $("#environment").offset().top + $("#environment").height() / 2 || $(window).scrollTop() < 1800) {
            $(".toolBar-event").hide();
          }
          let arrEle = [$("#phone")[0], $("#computer")[0], $("#ipad")[0], $("#watch")[0], $("#parts")[0], $("#environment")[0]];
          $.each(arrEle, function (index, value) {
            if ($(window).scrollTop() + $(value).height() / 2 > $(value).offset().top) {
              $(".toolBar-event li").eq(index).addClass("current").siblings().removeClass("current");
            }
          });
        }
      });
      // 返回顶端
      $("a.toolBar-top").click(function (event) {
        event.preventDefault();
        $(window).scrollTop(0);
      });
      //工具栏上点击事件
      for (let i = 0; i < $(".toolBar-event li").length; i++) {
        $(".toolBar-event li").eq(i).find("a").click(function (e) {
          e.preventDefault();
          $(window).scrollTop($(".goods-list .container .phone").eq(i).offset().top);
        });
      }
      // console.log($(".bread-comment")[0]);
      if ($(".bread-comment")[0]) {
        $(".toolBar-content-1").show();

      }
    });
</script>
