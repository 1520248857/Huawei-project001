<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/base.css">
  <link rel="stylesheet" href="../css/header.css">
</head>
<body>
    
<div class="shortcut">
    <div class="container">
      <div class="s-sub">
        <ul>
          <li><a href="../vmall/index.html">首页</a></li>|
          <li><a href="#">华为官网</a></li>|
          <li><a href="#">荣耀官网</a></li>|
          <li><a href="#">花粉俱乐部</a></li>|
          <li><a href="#">V码(优购码)</a></li>|
          <li><a href="#">企业购</a></li>|
          <li><a href="#">Select Region</a></li>|
          <li class="s-down"><a href="#" class="more">更多精彩</a>
            <div class="s-dropdown">
              <dl class="dropdown-more">
                <dt><a href="">EMUI</a></dt>
                <dt><a href="">应用市场</a></dt>
                <dt><a href="">华为终端云空间</a></dt>
                <dt><a href="">开发者联盟</a></dt>
              </dl>
            </div>
          </li>
        </ul>
      </div>
      <div class="s-main">
        <ul>
          <!-- 未登录 -->
          <li class="reg-login">
            <a href="/huawei-project/vmall/pages/user/login.jsp">请登录</a> <a href="/huawei-project/vmall/pages/user/rejist.jsp">注册</a>
          </li>
          <!-- 已登录 -->
          <li class="already-login s-down">
            <a href="" class="more" id="top-loginName"></a>
            <div class="s-dropdown">
              <div class="dropdrown-i-mall">
                <div class="i-mall-prompt">
                  <img src="images/img_logged_in.png" alt="">
                  <div class="user-info">
                    <div class="user-info-level">
                      <em></em>
                      <p></p>
                    </div>
                    <div class="user-info-msg">
                      <span>未实名</span><span>消息(3)</span>
                    </div>
                  </div>
                </div>
                <div class="i-mall-uc">
                  <div class="i-mall-uc-title">
                    <span>我的订单</span><em>更多 </em>
                  </div>
                  <div class="i-mall-uc-con">
                    <ul>
                      <li>待付款</li>
                      <li>待收货</li>
                      <li>待评价</li>
                      <li>退换货</li>
                      <li>旧机回收</li>
                    </ul>
                  </div>
                </div>
                <div class="i-mall-score">
                  <ul>
                    <li>
                      <p>0</p>
                      <p>积分</p>
                    </li>
                    <li>
                      <p>0</p>
                      <p>优惠券</p>
                    </li>
                    <li>
                      <p>0.00</p>
                      <p>代金券</p>
                    </li>
                  </ul>
                </div>
                <div class="i-mall-out"><a href="#" id="login-out">退出登录</a></div>
              </div>
            </div>
          </li>|
          <li><a href="">我的订单</a></li>|
          <li class="s-down"><a href="" class="more">客户服务</a>
            <div class="s-dropdown">
              <dl class="dropdown-more">
                <dt><a href="">服务中心</a></dt>
                <dt><a href="">联系客服</a></dt>
              </dl>
            </div>
          </li>|
          <li class="s-down"><a href="" class="more">网站导航</a>
            <div class="dropdown-navs s-dropdown">
              <a href="../index.html" class="dropdown-navs-icon">
                <span style="font-size: 0;"></span>
                商城首页
              </a>
              <div class="f1">
                <h5>频道</h5>
                <a href="">华为专区</a>
                <a href="">荣耀专区</a>
                <a href="">企业购</a>
              </div>
              <div class="f1">
                <h5>产品</h5>
                <a href="">手机</a>
                <a href="">笔记本</a>
                <a href="">平板</a>
                <a href="">智能穿戴</a>
                <a href="">智能家居</a>
                <a href="">智慧屏</a>
                <a href="">耳机音箱</a>
                <a href="">热销配件</a>
                <a href="">生态产品</a>
                <a href="">增值服务</a>
              </div>
              <div class="f1">
                <h5>增值服务</h5>
                <a href="">以旧换新</a>
                <a href="">补购保障</a>
                <a href="">一口价换电池</a>
              </div>
              <div class="f1">
                <h5>会员</h5>
                <a href="">会员频道</a>
              </div>
            </div>    
          </li>|
          <li class="s-down"><a href="" class="more">手机版</a>
            <div class="dropdown-code s-dropdown">
              <div class="dropdown-code-detail clearfix">
                <a href="">
                  <img src="images/vmallapp.png" alt="">
                </a>
                <div class="code-info">
                  <h2>华为商城APP</h2>
                  <p style="color: #cb242b;">新人专享好礼<br>最高5000积分</p>
                  <span class="icon-android"></span>
                  <span class="icon-ios"></span>
                  <span class="icon-wechat"></span>
                </div>
              </div>
              <div class="dropdown-code-detail clearfix">
                <a href="">
                  <img src="images/vmallgch.jpg" alt="">
                </a>
                <div class="code-info">
                  <h2>华为商城公众号</h2>
                  <p>微信扫一扫</p>
                  <span class="icon-wechat"></span>
                </div>
              </div>
              <div class="dropdown-code-detail clearfix">
                <a href="">
                  <img src="images/vmallxcx.jpg" alt="">
                </a>
                <div class="code-info">
                  <h2>微信小程序</h2>
                  <span class="icon-wechat"></span>
                </div>
              </div>
            </div>
          </li>
          <li class="s-down s-more-cart" id="s-mimicart"><a href="javascript:;" class="more more-cart">购物车(<span id="cart-total-num">0</span>)</a>
            <div class="minicart-content s-dropdown">
              <div class="dropdown-minicart">
                <div class="minicart-empty">
                    <p><span class="icon-minicart"></span></p>
                    <p>您的购物车是空的，赶紧选购吧~</p>
                </div>
                <!-- 购物车有数据 -->
                <div class="minicart-list">
                  <ul class="minicart-good-list clearfix">
                    <!-- <li class="clearfix">
                      <div class="pro-info clearfix">
                        <div class="pro-choose">
                          <i></i>
                        </div>
                        <div class="pro-img"><img src="upload/p40pro5g.png" alt=""></div>
                        <div class="pro-name">HUAWEI Mate 30E Pro 5G 全网通 8GB+256GB（翡冷翠）</div>
                        <div class="pro-desc"></div>
                        <div class="pro-status">
                          <div class="pro-price">¥<b>5799</b> X 1</div>
                        </div>
                      </div>
                    </li> -->
                  </ul>
                  <div class="minicart-settleUp">
                    <p>
                      <span>总计:</span>
                      <span id="minicart-total-price">¥ <em>5799</em></span>
                    </p>
                    <a href="javascript:;">结算</a>
                  </div>
                </div>
              </div>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
  
  <script src="js/jQuery.js"></script>
  <script src="js/jquery.cookie-1.4.1.min.js"></script>
  <script src="js/common.js"></script>
  
</body>
</html>