<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="css/base.css">
  <!-- <link rel="stylesheet" href="css/common.css"> -->
  <link rel="stylesheet" href="css/reglogin.css">
  <link rel="stylesheet" href="css/pay.css">
</head>
<body>
  <div class="container">
    <div class="contentArea clearfix">
      <div class="logo-name">
        <a href="index.html"><img src="images/logo.png" alt=""></a>
        <span>收银台</span>
      </div>
      <div class="cashier_order_area clearfix">
        <div class="cashier_orderInfo clearfix">
          <img src="images/success_icon.png" alt="">
          <div class="orderInfo_words">
            <div class="orderWords01 clearfix">
              <h4>订单提交成功，只差付款了~</h4><span>订单号：${order.orderId }</span>
              <div class="payNum">订单金额：<span>¥${order.totalMoney }</span></div>
            </div>
            <h5>请您在15分钟内完成支付，否则本次支付将自动取消。</h5>
            <p>订单含付款减库存商品，请尽快完成付款，库存不足时系统会自动取消未支付（含正在支付进行中）的订单</p>
          </div>
        </div>
        <ul class="order-nav clearfix">
          <li class="current">常用</li>
          <li>平台支付</li>
          <li>分期支付</li>
          <li>网银支付</li>
        </ul>
        <div class="tab-content">
          <ul class="active pay-type">
            <li class="selected">
              <div class="pay_typeIco"><img src="images/ALIPAY.png" alt=""><i></i></div>
            </li>
            <li>
              <div class="pay_typeIco"><img src="images/WXPAY.png" alt=""><i></i></div>
            </li>
           
          </ul>
          <ul>
            很抱歉呢，这里没有东西哦！
          </ul>
          <ul>
            哈哈，再加载一次吧。。。
          </ul>
          <ul>
            The End,thank you for watching.Please give me a good grade!
          </ul>
        </div>
      </div>
      <div class="paybtn clearfix">
        <a href="/huawei-project/pay?id=${order.orderId }&money=${order.totalMoney }"><span id="id001">确认支付</span></a>
      </div>
    </div>
  </div>
  <footer>
    <div>
      <p>华为帐号与云空间用户协议 | 关于华为帐号与云空间隐私的声明 | 常见问题 |Cookies</p> <br>
      <p>华为帐号 版权所有 © 2011-2020</p>
    </div>
  </footer>
</body>
</html>
<script src="js/jQuery.js"></script>
<script>
  $(".order-nav li").click(function () {
    $(this).addClass("current").siblings().removeClass("current");
    $(".tab-content ul").eq($(this).index()).addClass("active").siblings().removeClass("active");
  });
  $(".tab-content .pay-type li").click(function () {
    $(this).addClass("selected").siblings().removeClass("selected");
  });
  
  $("#id001").click(function(){
	  location.herf="";
  })
  
</script>
