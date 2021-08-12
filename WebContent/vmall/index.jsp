<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>华为商城</title>
  <link rel="stylesheet" href="/huawei-project/vmall/css/base.css">
  <link rel="stylesheet" href="/huawei-project/vmall/css/header.css">
  <link rel="stylesheet" href="/huawei-project/vmall/css/footer.css">
  <link rel="stylesheet" href="/huawei-project/vmall/css/common.css">
  <link rel="stylesheet" href="/huawei-project/vmall/css/index.css">
  <script src="/huawei-project/vmall/js/jQuery.js"></script>
  <script src="/huawei-project/vmall/js/jquery.cookie-1.4.1.min.js"></script>
  <script src="/huawei-project/vmall/js/index.js"></script>


<!-- 尾部样式 -->
  <link rel="stylesheet" href="/huawei-project/vmall/css/index01.css">
  <link rel="stylesheet" href="/huawei-project/vmall/css/common01.css">

</head>
<body>
  <!-- 头部 -->
  <%@ include file="/vmall/pages/header2.jsp"%>
  <div class="top-header"></div>
  <!-- 主页头部 -->
  <header>
    <div class="container">
      <div class="left">
        <a href="index.html" class="logo"><img src="/huawei-project/vmall/images/logo.png" height="36" alt=""></a>
        <nav>
          <ul class="clearfix">
            <li class="img"><a href=""><img src="/huawei-project/vmall/images/huaweizhuanqu.png" alt=""></a></li>
            <li><a href="">莫塞尔专区</a></li>
            <li><a href="">华为智选</a></li>
            <li><a href="">鸿蒙智联</a></li>
            <li><a href="">福利中心</a></li>
          </ul>
        </nav>
      </div>
      <div class="right">
        <div class="search-area">
          <div class="search-form">
            <input type="text" class="input-key">
          </div>
          <div class="search-key">
            <a href="#">Mate40系列</a><a href="#">Watch Fit</a>
          </div>
        </div>
      </div>
    </div>
  </header>
  <!-- 导航栏 -->
  <div class="nav-main">
    <div class="container">
      <div class="nav-main-vertical">
        <ol class="nav-list">
          <li class="nav-list-item"><a href="#">手机</a>
            <div class="nav-pannel nav-pannel-2 nav-pannel-none">
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="/huawei-project/TotalProductServlet?action=page"><img src="/huawei-project/vmall/upload/mate40.png" alt=""><span>HUAWEI Mate系列</span></a></li>
                <li class="nav-list-item2"><a href="/huawei-project/ProductsItemsServlet?action=selectById&id=2"><img src="/huawei-project/vmall/upload/p40.png" alt=""><span>HUAWEI P系列</span></a></li>
                <li class="nav-list-item2"><a href="/huawei-project/ProductsItemsServlet?action=selectById&id=3"><img src="/huawei-project/vmall/upload/HUAWEInova.png" alt=""><span>HUAWEI nova系列</span></a></li>
                <li class="nav-list-item2"><a href="/huawei-project/ProductsItemsServlet?action=selectById&id=4"><img src="/huawei-project/vmall/upload/huaweicx.png" alt=""><span>华为畅享系列</span></a></li>
                <li class="nav-list-item2"><a href="/huawei-project/ProductsItemsServlet?action=selectById&id=5"><img src="/huawei-project/vmall/upload/huaweimm.png" alt=""><span>HUAWEI 麦芒系列</span></a></li>
              </ul>
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/honor40.png" alt=""><span>荣耀V系列</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/honorx.png" alt=""><span>荣耀 X系列</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/honor8t.png" alt=""><span>荣耀 HONOR系列</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/honorplay.png" alt=""><span>荣耀 Play系列</span></a></li>
                <li class="nav-list-btn"><a href="#">查看全部</a></li>
              </ul>
              
            </div>
          </li>
          <li class="nav-list-item"><a href="#">笔记本</a>
            <div class="nav-pannel nav-pannel-2 nav-pannel-none"> 
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>华为MateBook X系列</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>华为MateBook系列</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>华为MateBook D系列</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>华为显示器系列</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>华为MateBook B系列</span></a></li>
                </ul>
                <ul class="nav-list2 clearfix">
                  <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>华为商用电脑系列</span></a></li>
                  <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>华为台式机</span></a></li>
                  <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>个人电脑配件</span></a></li>
                  <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>电脑包</span></a></li>
                  <li class="nav-list-btn"><a href="#">查看全部</a></li>
                </ul>
            </div>
          </li>
          <li class="nav-list-item"><a href="#">平板</a>
            <div class="nav-pannel nav-pannel-2 nav-pannel-none">
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matepad.png" alt=""><span>华为MatePad 系列</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matepad.png" alt=""><span>华为M系列</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matepad.png" alt=""><span>华为畅享 系列</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matepad.png" alt=""><span>平板配件</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matepad.png" alt=""><span>华为MatePad 系列</span></a></li>
              </ul>
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matepad.png" alt=""><span>华为MatePad 系列</span></a></li>
                <li class="nav-list-btn"><a href="#">查看全部</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-list-item"><a href="#">智能穿戴&VR</a>
            <div class="nav-pannel nav-pannel-2 nav-pannel-none">
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiwatch.png" alt=""><span>智能手表</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiwatch.png" alt=""><span>儿童手表</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiwatch.png" alt=""><span>智能手环</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiwatch.png" alt=""><span>VR</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiwatch.png" alt=""><span>智能体脂称</span></a></li>
              </ul>
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiwatch.png" alt=""><span>穿戴配件</span></a></li>
                <li class="nav-list-btn"><a href="#">查看全部</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-list-item"><a href="#">智能家居</a>
            <div class="nav-pannel nav-pannel-2 nav-pannel-none">
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiluyou.png" alt=""><span>智能路由</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiluyou.png" alt=""><span>空调/冰箱</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiluyou.png" alt=""><span>电风扇</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiluyou.png" alt=""><span>净水器</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiluyou.png" alt=""><span>扫地清洁</span></a></li>
              </ul>
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiluyou.png" alt=""><span>热水器由</span></a></li>
                <li class="nav-list-btn"><a href="#">查看全部</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-list-item"><a href="#">智慧屏</a>
            <div class="nav-pannel nav-pannel-1 nav-pannel-none">
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweitv.png" alt=""><span>华为智慧屏SE系列</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweitv.png" alt=""><span>华为智慧屏V系列</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweitv.png" alt=""><span>华为智慧屏S系列</span></a></li>
                <li class="nav-list-btn"><a href="#">查看全部</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-list-item"><a href="#">耳机音箱</a>
            <div class="nav-pannel nav-pannel-2 nav-pannel-none">
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweierji.png" alt=""><span>真无线耳机</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweierji.png" alt=""><span>有线耳机</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweierji.png" alt=""><span>蓝牙耳机</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweierji.png" alt=""><span>蓝牙音箱</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweierji.png" alt=""><span>智能眼睛</span></a></li>
              </ul>
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweierji.png" alt=""><span>智能音箱</span></a></li>
                <li class="nav-list-btn"><a href="#">查看全部</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-list-item"><a href="#">配件</a>
            <div class="nav-pannel nav-pannel-3 nav-pannel-none">
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png" alt=""><span>充电器/线材</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png" alt=""><span>移动电源</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png" alt=""><span>自拍杆/支架</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png" alt=""><span>摄像机/镜头</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png" alt=""><span>智能硬件</span></a></li>
              </ul>
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png" alt=""><span>保护壳</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png" alt=""><span>保护套</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png" alt=""><span>贴膜</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png" alt=""><span>个人电脑配件</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png" alt=""><span>电脑包</span></a></li>
              </ul>
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png" alt=""><span>平板配件</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png" alt=""><span>智慧屏配件</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png" alt=""><span>穿戴配件</span></a></li>
                <li class="nav-list-btn"><a href="#">查看全部</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-list-item"><a href="#">生态产品</a>
            <div class="nav-pannel nav-pannel-3 nav-pannel-none">
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png" alt=""><span>智能灯光</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png" alt=""><span>智能灯光</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png" alt=""><span>智能灯光</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png" alt=""><span>智能灯光</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png" alt=""><span>智能灯光</span></a></li>
              </ul>
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png" alt=""><span>智能灯光</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png" alt=""><span>智能灯光</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png" alt=""><span>智能灯光</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png" alt=""><span>智能灯光</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png" alt=""><span>智能灯光</span></a></li>
              </ul>
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png" alt=""><span>智能灯光</span></a></li>
                <li class="nav-list-btn"><a href="#">查看全部</a></li>
              </ul>
            </div>
          </li>
          <li class="nav-list-item"><a href="#">增值服务&其他</a>
            <div class="nav-pannel nav-pannel-2 nav-pannel-none">
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicard.png" alt=""><span>华为视频卡</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicard.png" alt=""><span>华为视频卡</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicard.png" alt=""><span>华为视频卡</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicard.png" alt=""><span>华为视频卡</span></a></li>
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicard.png" alt=""><span>华为视频卡</span></a></li>
              </ul>
              <ul class="nav-list2 clearfix">
                <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicard.png" alt=""><span>华为视频卡</span></a></li>
                <li class="nav-list-btn"><a href="#">查看全部</a></li>
              </ul>
          </li>
        </ol>
      </div>
    </div>
  </div>
  <!-- banner栏 -->
  <div class="hot-board">
    <div class="banner">
      <div class="banner-tool">
        <div class="page">
          <span class="current"></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <span></span>
        </div>
        <div class="banner-prev"></div>
        <div class="banner-next"></div>
      </div>
      <ul class="box">
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
      </ul>
    </div>
    <div class="mask">
      <span></span>
    </div>
  </div>
  <!-- 主页推荐 -->
  <div class="home-menu">
    <div class="container">
      <div class="floor-1">
        <!-- banner图下工具栏 -->
        <div class="home-menu-main">
          <ul class="home-main clearfix">
            <li class="hm1">
              <div id="gg-unlogin" class="gg-unlogin">
                <div class="w-name">
                  <img src="/huawei-project/vmall/images/unlogin.png" alt="">
                </div>
                <div class="left">
                  <div class="welcome welcome-unlogin">
                     <a href="" class="login">欢迎您,${lophone}</a><span> / </span><a href="" class="register">注册</a>
                  </div>
                  <div class="welcome welcome-login">
                   <span id="gg-loginName"></span>
                  </div>
                  <div class="w-btn">
                    <a href="" class="new">新人福利</a><a href="">会员频道</a>
                  </div>
                </div>
              </div>
            </li>
            <li class="hm2">
              <ul class="clearfix">
                <li>
                  <a href="">
                    <div class="p-img"><img src="icon/img0.png" alt="" class="img0"></div>
                    <div class="p-dec">企业购特惠</div>
                  </a>
                </li>
                <li>
                  <a href="">
                    <div class="p-img"><img src="icon/img0.png" alt="" class="img1"></div>
                    <div class="p-dec">会员领券</div>
                  </a>
                </li>
                <li>
                  <a href="">
                    <div class="p-img"><img src="icon/img0.png" alt="" class="img2"></div>
                    <div class="p-dec">以旧换新</div>
                  </a>
                </li>
                <li>
                  <a href="">
                    <div class="p-img"><img src="icon/img0.png" alt="" class="img3"></div>
                    <div class="p-dec">Mate40系列</div>
                  </a>
                </li>
                <li>
                  <a href="">
                    <div class="p-img"><img src="icon/img0.png" alt="" class="img4"></div>
                    <div class="p-dec">华为数码</div>
                  </a>
                </li>
                <li>
                  <a href="">
                    <div class="p-img"><img src="icon/img0.png" alt="" class="img5"></div>
                    <div class="p-dec">荣耀数码</div>
                  </a>
                </li>
              </ul>
            </li>
            <li class="hm3">
              <div class="p-notice">
                <h4>公告</h4>
                <div class="notice">特美刻智能保温杯众测中奖名单</div>
              </div>
              <div class="p-info">
                <ul class="clearfix">
                  <li><a href="#"><span><img src="icon/img0.png" alt="" class="img0"></span>优购码</a></li>
                  <li><a href="#"><span><img src="icon/img0.png" alt="" class="img1"></span>更换电池</a></li>
                  <li><a href="#"><span><img src="icon/img0.png" alt="" class="img2"></span>补购保障</a></li>
                </ul>
              </div>
            </li>
          </ul>
        </div>
        <!-- 新品上市 -->
        <div class="new clearfix">
          <ul class="new-list">
            <li><a href="phone.html?id=1"><img src="/huawei-project/vmall/upload/mate40lg.png" alt=""></a></li>
            <li><a href="phone.html?id=2"><img src="/huawei-project/vmall/upload/nova8.jpg" alt=""></a></li>
            <li><a href="phone.html?id=3"><img src="/huawei-project/vmall/upload/mate40m.jpg" alt=""></a></li>
            <li><a href="phone.html?id=4"><img src="/huawei-project/vmall/upload/honor30.jpg" alt=""></a></li>
          </ul>
        </div>
        <!-- 热销单品 -->
        <div class="hot-sell">
          <h2>热销单品</h2>
          <div class="hot-sell-list clearfix">
            <div class="div-232 left">
              <a href="" class="hot-sell-item"><img src="/huawei-project/vmall/upload/mate40rs.png" alt=""></a>
            </div>
            <div class="left div-968">
              <ul class="">
                <li class="hot-sell-item hot-sell-item1">
                  <a href="">
                    <p class="grid-img"><img src="/huawei-project/vmall/upload/nova8pro.png" alt=""></p>
                    <p class="grid-title">HUAWEI nova 8 Pro</p>
                    <p class="grid-desc">50元订金抵100元</p>
                    <p class="grid-price">¥3999</p>
                    <p class="grid-tips">
                      <em>
                        <span>新品上市</span>
                      </em>
                    </p>
                  </a>
                </li>
                <li class="hot-sell-item hot-sell-item1">
                  <a href="">
                    <p class="grid-img"><img src="/huawei-project/vmall/upload/nova8pro.png" alt=""></p>
                    <p class="grid-title">HUAWEI nova 8 Pro</p>
                    <p class="grid-desc">50元订金抵100元</p>
                    <p class="grid-price">¥3999</p>
                    <p class="grid-tips">
                      <em>
                        <span>新品上市</span>
                      </em>
                    </p>
                  </a>
                </li>
                <li class="hot-sell-item hot-sell-item1">
                  <a href="">
                    <p class="grid-img"><img src="/huawei-project/vmall/upload/nova8pro.png" alt=""></p>
                    <p class="grid-title">HUAWEI nova 8 Pro</p>
                    <p class="grid-desc">50元订金抵100元</p>
                    <p class="grid-price">¥3999</p>
                  </a>
                </li>
                <li class="hot-sell-item hot-sell-item1">
                  <a href="">
                    <p class="grid-img"><img src="/huawei-project/vmall/upload/nova8pro.png" alt=""></p>
                    <p class="grid-title">HUAWEI nova 8 Pro</p>
                    <p class="grid-desc">50元订金抵100元</p>
                    <p class="grid-price">¥3999</p>
                  </a>
                </li>
                <li class="hot-sell-item hot-sell-item1">
                  <a href="">
                    <p class="grid-img"><img src="/huawei-project/vmall/upload/nova8pro.png" alt=""></p>
                    <p class="grid-title">HUAWEI nova 8 Pro</p>
                    <p class="grid-desc">50元订金抵100元</p>
                    <p class="grid-price">¥3999</p>
                  </a>
                </li>
                <li class="hot-sell-item hot-sell-item1">
                  <a href="">
                    <p class="grid-img"><img src="/huawei-project/vmall/upload/nova8pro.png" alt=""></p>
                    <p class="grid-title">HUAWEI nova 8 Pro</p>
                    <p class="grid-desc">50元订金抵100元</p>
                    <p class="grid-price">¥3999</p>
                  </a>
                </li>
                <li class="hot-sell-item hot-sell-item1">
                  <a href="">
                    <p class="grid-img"><img src="/huawei-project/vmall/upload/nova8pro.png" alt=""></p>
                    <p class="grid-title">HUAWEI nova 8 Pro</p>
                    <p class="grid-desc">50元订金抵100元</p>
                    <p class="grid-price">¥3999</p>
                  </a>
                </li>
                <li class="hot-sell-item hot-sell-item1">
                  <a href="">
                    <p class="grid-img"><img src="/huawei-project/vmall/upload/nova8pro.png" alt=""></p>
                    <p class="grid-title">HUAWEI nova 8 Pro</p>
                    <p class="grid-desc">50元订金抵100元</p>
                    <p class="grid-price">¥3999</p>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <!-- 精品推荐 -->
        <div class="good-recommend clearfix">
          <h2>精品推荐</h2>
          <div class="good-recommend-list">
            <ul class="clearfix">
              <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/huaweitvv.png" alt="">
                  <p class="grid-desc">预订最高省300</p>
                </div>
                <p class="grid-title">华为智慧屏S65</p>
                <p class="grid-price">¥3299</p>
              </a></li>
              <li><a href="#">
                  <div class="grid-info">
                    <img src="/huawei-project/vmall/upload/huaweiwatch1.png" alt="">
                    <p class="grid-desc">预订最高省50元</p>
                  </div>
                  <p class="grid-title">HUAWEI WATCH FIT</p>
                  <p class="grid-price">¥799</p>
                  <p class="grid-tips">
                    <em><span>新品上市</span></em>
                  </p>
                </a>
              </li>
              <li><a href="#">
                  <div class="grid-info">
                    <img src="/huawei-project/vmall/upload/huaweitvv.png" alt="">
                    <p class="grid-desc">预订最高省300</p>
                  </div>
                  <p class="grid-title">华为智慧屏S65</p>
                  <p class="grid-price">¥3299</p>
                </a></li>
              <li><a href="#">
                  <div class="grid-info">
                    <img src="/huawei-project/vmall/upload/huaweiwatch1.png" alt="">
                    <p class="grid-desc">预订最高省50元</p>
                  </div>
                  <p class="grid-title">HUAWEI WATCH FIT</p>
                  <p class="grid-price">¥799</p>
                  <p class="grid-tips">
                    <em><span>新品上市</span></em>
                  </p>
                </a>
              </li>
              <li><a href="#">
                  <div class="grid-info">
                    <img src="/huawei-project/vmall/upload/huaweitvv.png" alt="">
                    <p class="grid-desc">预订最高省300</p>
                  </div>
                  <p class="grid-title">华为智慧屏S65</p>
                  <p class="grid-price">¥3299</p>
                </a></li>
              <li><a href="#">
                  <div class="grid-info">
                    <img src="/huawei-project/vmall/upload/huaweiwatch1.png" alt="">
                    <p class="grid-desc">预订最高省50元</p>
                  </div>
                  <p class="grid-title">HUAWEI WATCH FIT</p>
                  <p class="grid-price">¥799</p>
                  <p class="grid-tips">
                    <em><span>新品上市</span></em>
                  </p>
                </a>
              </li>
              <li><a href="#">
                  <div class="grid-info">
                    <img src="/huawei-project/vmall/upload/huaweitvv.png" alt="">
                    <p class="grid-desc">预订最高省300</p>
                  </div>
                  <p class="grid-title">华为智慧屏S65</p>
                  <p class="grid-price">¥3299</p>
                </a></li>
              <li><a href="#">
                  <div class="grid-info">
                    <img src="/huawei-project/vmall/upload/huaweiwatch1.png" alt="">
                    <p class="grid-desc">预订最高省50元</p>
                  </div>
                  <p class="grid-title">HUAWEI WATCH FIT</p>
                  <p class="grid-price">¥799</p>
                  <p class="grid-tips">
                    <em><span>新品上市</span></em>
                  </p>
                </a>
              </li>
              <li><a href="#">
                  <div class="grid-info">
                    <img src="/huawei-project/vmall/upload/huaweitvv.png" alt="">
                    <p class="grid-desc">预订最高省300</p>
                  </div>
                  <p class="grid-title">华为智慧屏S65</p>
                  <p class="grid-price">¥3299</p>
                </a></li>
              <li><a href="#">
                  <div class="grid-info">
                    <img src="/huawei-project/vmall/upload/huaweiwatch1.png" alt="">
                    <p class="grid-desc">预订最高省50元</p>
                  </div>
                  <p class="grid-title">HUAWEI WATCH FIT</p>
                  <p class="grid-price">¥799</p>
                  <p class="grid-tips">
                    <em><span>新品上市</span></em>
                  </p>
                </a>
              </li>
              <li><a href="#">
                  <div class="grid-info">
                    <img src="/huawei-project/vmall/upload/huaweitvv.png" alt="">
                    <p class="grid-desc">预订最高省300</p>
                  </div>
                  <p class="grid-title">华为智慧屏S65</p>
                  <p class="grid-price">¥3299</p>
                </a></li>
              <li><a href="#">
                  <div class="grid-info">
                    <img src="/huawei-project/vmall/upload/huaweiwatch1.png" alt="">
                    <p class="grid-desc">预订最高省50元</p>
                  </div>
                  <p class="grid-title">HUAWEI WATCH FIT</p>
                  <p class="grid-price">¥799</p>
                  <p class="grid-tips">
                    <em><span>新品上市</span></em>
                  </p>
                </a>
              </li>
              <li><a href="#">
                  <div class="grid-info">
                    <img src="/huawei-project/vmall/upload/huaweitvv.png" alt="">
                    <p class="grid-desc">预订最高省300</p>
                  </div>
                  <p class="grid-title">华为智慧屏S65</p>
                  <p class="grid-price">¥3299</p>
                </a></li>
              <li><a href="#">
                  <div class="grid-info">
                    <img src="/huawei-project/vmall/upload/huaweiwatch1.png" alt="">
                    <p class="grid-desc">预订最高省50元</p>
                  </div>
                  <p class="grid-title">HUAWEI WATCH FIT</p>
                  <p class="grid-price">¥799</p>
                  <p class="grid-tips">
                    <em><span>新品上市</span></em>
                  </p>
                </a>
              </li>
              <li><a href="#">
                  <div class="grid-info">
                    <img src="/huawei-project/vmall/upload/huaweitvv.png" alt="">
                    <p class="grid-desc">预订最高省300</p>
                  </div>
                  <p class="grid-title">华为智慧屏S65</p>
                  <p class="grid-price">¥3299</p>
                </a>
              </li>
            </ul>
            <div class="grid-btn-prev grid-btn-none"></div>
            <div class="grid-btn-next"></div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- 首页下方轮播 -->
  <div class="s-banner">
    <div class="container">
      <div class="banner-box">
        <img src="/huawei-project/vmall/images/s-banner0.jpg" alt="">
        <img src="/huawei-project/vmall/images/s-banner1.jpg" alt="">
        <img src="/huawei-project/vmall/images/s-banner2.jpg" alt="">
        <img src="/huawei-project/vmall/images/s-banner3.jpg" alt="">
        <ul class="s-page1">
          <li class="current"></li>
          <li></li>
          <li></li>
          <li></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- 商品列表 -->
  <div class="goods-list">
    <div class="container">
      <!-- 手机 -->
      <div class="phone clearfix" id="phone">
        <div class="title">
          <h2>手机</h2>
          <ul>
            <li><a href="">HUAWEI Mate系列</a></li>
            <li><a href="">HUAWEI P系列</a></li>
            <li><a href="">HUAWEI nova系列</a></li>
            <li><a href="">华为畅享系列</a></li>
            <li><a href="">荣耀V系列</a></li>
            <li><a href="">荣耀HONOR系列</a></li>
            <li><a href="">荣耀X系列</a></li>
            <li><a href="">荣耀play系列</a></li>
          </ul>
          <div class="more">
            <a href="">查看更多</a>
          </div>
        </div>
        <div class="goods-list-list">
          <ul class="grid-list">
            <li class="md"><a href=""><img src="/huawei-project/vmall/upload/huaweiz.png" alt=""></a></li>
            <li><a href="">
              <p class="grid-img"><img src="/huawei-project/vmall/upload/huaweirs.png" alt=""></p>
              <p class="grid-title">HUAWEI Mate 30 RS 保时捷设计</p>
              <p class="grid-desc">致敬时代</p>
              <p class="grid-price">¥12999</p>
            </a></li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/huaweirs.png" alt=""></p>
                <p class="grid-title">HUAWEI Mate 30 RS 保时捷设计</p>
                <p class="grid-desc">致敬时代</p>
                <p class="grid-price">¥12999</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/huaweirs.png" alt=""></p>
                <p class="grid-title">HUAWEI Mate 30 RS 保时捷设计</p>
                <p class="grid-desc">致敬时代</p>
                <p class="grid-price">¥12999</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/huaweirs.png" alt=""></p>
                <p class="grid-title">HUAWEI Mate 30 RS 保时捷设计</p>
                <p class="grid-desc">致敬时代</p>
                <p class="grid-price">¥12999</p>
              </a>
            </li>
          </ul>
        </div>
      </div>
      <!-- 电脑 -->
      <div class="phone clearfix" id="computer">
        <div class="title">
          <h2>笔记本电脑</h2>
          <ul>
            <li><a href="">华为MateBook X系列</a></li>
            <li><a href="">华为MateBook系列</a></li>
            <li><a href="">华为MateBook D系列</a></li>
            <li><a href="">华为MateBook E系列</a></li>
            <li><a href="">华为商用电脑系列</a></li>
            <li><a href="">荣耀MagicBook系列</a></li>
          </ul>
          <div class="more">
            <a href="">查看更多</a>
          </div>
        </div>
        <div class="goods-list-list">
          <ul class="grid-list">
            <li class="md"><a href=""><img src="/huawei-project/vmall/upload/matebookx1.png" alt=""></a></li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matebookd.png" alt=""></p>
                <p class="grid-title">HUAWEI MateBook D 14 2021款</p>
                <p class="grid-desc">预订省100+鼠标+3期免息</p>
                <p class="grid-price">¥4999</p>
              </a></li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matebookd.png" alt=""></p>
                <p class="grid-title">HUAWEI MateBook D 14 2021款</p>
                <p class="grid-desc">预订省100+鼠标+3期免息</p>
                <p class="grid-price">¥4999</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matebookd.png" alt=""></p>
                <p class="grid-title">HUAWEI MateBook D 14 2021款</p>
                <p class="grid-desc">预订省100+鼠标+3期免息</p>
                <p class="grid-price">¥4999</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matebookd.png" alt=""></p>
                <p class="grid-title">HUAWEI MateBook D 14 2021款</p>
                <p class="grid-desc">预订省100+鼠标+3期免息</p>
                <p class="grid-price">¥4999</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matebookd.png" alt=""></p>
                <p class="grid-title">HUAWEI MateBook D 14 2021款</p>
                <p class="grid-desc">预订省100+鼠标+3期免息</p>
                <p class="grid-price">¥4999</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matebookd.png" alt=""></p>
                <p class="grid-title">HUAWEI MateBook D 14 2021款</p>
                <p class="grid-desc">预订省100+鼠标+3期免息</p>
                <p class="grid-price">¥4999</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matebookd.png" alt=""></p>
                <p class="grid-title">HUAWEI MateBook D 14 2021款</p>
                <p class="grid-desc">预订省100+鼠标+3期免息</p>
                <p class="grid-price">¥4999</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matebookd.png" alt=""></p>
                <p class="grid-title">HUAWEI MateBook D 14 2021款</p>
                <p class="grid-desc">预订省100+鼠标+3期免息</p>
                <p class="grid-price">¥4999</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matebookd.png" alt=""></p>
                <p class="grid-title">HUAWEI MateBook D 14 2021款</p>
                <p class="grid-desc">预订省100+鼠标+3期免息</p>
                <p class="grid-price">¥4999</p>
              </a>
            </li>
          </ul>
        </div>
      </div>
      <!-- 平板 -->
      <div class="phone clearfix" id="ipad">
        <div class="title">
          <h2>精品平板</h2>
          <ul>
            <li><a href="">华为MatePad 系列</a></li>
            <li><a href="">荣耀 V系列</a></li>
            <li><a href="">荣耀数字系列</a></li>
            <li><a href="">华为畅享 系列</a></li>
            <li><a href="">荣耀 X系列</a></li>
            <li><a href="">荣耀平板 V系列</a></li>
          </ul>
          <div class="more">
            <a href="">查看更多</a>
          </div>
        </div>
        <div class="goods-list-list">
          <ul class="grid-list">
            <li class="md"><a href=""><img src="/huawei-project/vmall/upload/matepad5g.jpg" alt=""></a></li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matepad10.8.png" alt=""></p>
                <p class="grid-title">HUAWEI MatePad 10.8</p>
                <p class="grid-desc">预订立省50元</p>
                <p class="grid-price">¥2399</p>
              </a></li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matepad10.8.png" alt=""></p>
                <p class="grid-title">HUAWEI MatePad 10.8</p>
                <p class="grid-desc">预订立省50元</p>
                <p class="grid-price">¥2399</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matepad10.8.png" alt=""></p>
                <p class="grid-title">HUAWEI MatePad 10.8</p>
                <p class="grid-desc">预订立省50元</p>
                <p class="grid-price">¥2399</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matepad10.8.png" alt=""></p>
                <p class="grid-title">HUAWEI MatePad 10.8</p>
                <p class="grid-desc">预订立省50元</p>
                <p class="grid-price">¥2399</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matepad10.8.png" alt=""></p>
                <p class="grid-title">HUAWEI MatePad 10.8</p>
                <p class="grid-desc">预订立省50元</p>
                <p class="grid-price">¥2399</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matepad10.8.png" alt=""></p>
                <p class="grid-title">HUAWEI MatePad 10.8</p>
                <p class="grid-desc">预订立省50元</p>
                <p class="grid-price">¥2399</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matepad10.8.png" alt=""></p>
                <p class="grid-title">HUAWEI MatePad 10.8</p>
                <p class="grid-desc">预订立省50元</p>
                <p class="grid-price">¥2399</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matepad10.8.png" alt=""></p>
                <p class="grid-title">HUAWEI MatePad 10.8</p>
                <p class="grid-desc">预订立省50元</p>
                <p class="grid-price">¥2399</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/matepad10.8.png" alt=""></p>
                <p class="grid-title">HUAWEI MatePad 10.8</p>
                <p class="grid-desc">预订立省50元</p>
                <p class="grid-price">¥2399</p>
              </a>
            </li>
          </ul>
        </div>
      </div>
      <!-- 智能穿戴 -->
      <div class="phone clearfix" id="watch">
        <div class="title">
          <h2>智能穿戴</h2>
          <ul>
            <li><a href="">智能手表</a></li>
            <li><a href="">儿童手表</a></li>
            <li><a href="">智能手环</a></li>
            <li><a href="">智能体脂秤</a></li>
            <li><a href="">VR</a></li>
          </ul>
          <div class="more">
            <a href="">查看更多</a>
          </div>
        </div>
        <div class="goods-list-list">
          <ul class="grid-list">
            <li class="ld"><a href=""><img src="/huawei-project/vmall/upload/huaweigt2.png" alt=""></a></li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/watchfit.png" alt=""></p>
                <p class="grid-title">HUAWEI WATCH FIT</p>
                <p class="grid-desc">新品预订省50元</p>
                <p class="grid-price">¥799</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/watchfit.png" alt=""></p>
                <p class="grid-title">HUAWEI WATCH FIT</p>
                <p class="grid-desc">新品预订省50元</p>
                <p class="grid-price">¥799</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/watchfit.png" alt=""></p>
                <p class="grid-title">HUAWEI WATCH FIT</p>
                <p class="grid-desc">新品预订省50元</p>
                <p class="grid-price">¥799</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/watchfit.png" alt=""></p>
                <p class="grid-title">HUAWEI WATCH FIT</p>
                <p class="grid-desc">新品预订省50元</p>
                <p class="grid-price">¥799</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/watchfit.png" alt=""></p>
                <p class="grid-title">HUAWEI WATCH FIT</p>
                <p class="grid-desc">新品预订省50元</p>
                <p class="grid-price">¥799</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/watchfit.png" alt=""></p>
                <p class="grid-title">HUAWEI WATCH FIT</p>
                <p class="grid-desc">新品预订省50元</p>
                <p class="grid-price">¥799</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/watchfit.png" alt=""></p>
                <p class="grid-title">HUAWEI WATCH FIT</p>
                <p class="grid-desc">新品预订省50元</p>
                <p class="grid-price">¥799</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/watchfit.png" alt=""></p>
                <p class="grid-title">HUAWEI WATCH FIT</p>
                <p class="grid-desc">新品预订省50元</p>
                <p class="grid-price">¥799</p>
              </a>
            </li>
          </ul>
        </div>
        <div class="goods-content">
          <ul class="clearfix">
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/huaweiluyou2.png" alt="">
                  <p class="grid-desc">一碰连网 上网保护</p>
                </div>
                <p class="grid-title">华为路由A2</p>
                <p class="grid-price">¥399</p>
              </a></li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honorluyou.png" alt="">
                  <p class="grid-desc">现货速发</p>
                </div>
                <p class="grid-title">【新品上市】荣耀路由3 Wifi6+智能分频 凌霄双核3000Mbps 多穿一堵墙 儿童保护+加</p>
                <p class="grid-price">¥209</p>
              </a>
            </li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/huaweiluyou2.png" alt="">
                  <p class="grid-desc">一碰连网 上网保护</p>
                </div>
                <p class="grid-title">华为路由A2</p>
                <p class="grid-price">¥399</p>
              </a></li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honorluyou.png" alt="">
                  <p class="grid-desc">现货速发</p>
                </div>
                <p class="grid-title">【新品上市】荣耀路由3 Wifi6+智能分频 凌霄双核3000Mbps 多穿一堵墙 儿童保护+加</p>
                <p class="grid-price">¥209</p>
              </a>
            </li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/huaweiluyou2.png" alt="">
                  <p class="grid-desc">一碰连网 上网保护</p>
                </div>
                <p class="grid-title">华为路由A2</p>
                <p class="grid-price">¥399</p>
              </a></li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honorluyou.png" alt="">
                  <p class="grid-desc">现货速发</p>
                </div>
                <p class="grid-title">【新品上市】荣耀路由3 Wifi6+智能分频 凌霄双核3000Mbps 多穿一堵墙 儿童保护+加</p>
                <p class="grid-price">¥209</p>
              </a>
            </li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/huaweiluyou2.png" alt="">
                  <p class="grid-desc">一碰连网 上网保护</p>
                </div>
                <p class="grid-title">华为路由A2</p>
                <p class="grid-price">¥399</p>
              </a></li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honorluyou.png" alt="">
                  <p class="grid-desc">现货速发</p>
                </div>
                <p class="grid-title">【新品上市】荣耀路由3 Wifi6+智能分频 凌霄双核3000Mbps 多穿一堵墙 儿童保护+加</p>
                <p class="grid-price">¥209</p>
              </a>
            </li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/huaweiluyou2.png" alt="">
                  <p class="grid-desc">一碰连网 上网保护</p>
                </div>
                <p class="grid-title">华为路由A2</p>
                <p class="grid-price">¥399</p>
              </a></li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honorluyou.png" alt="">
                  <p class="grid-desc">现货速发</p>
                </div>
                <p class="grid-title">【新品上市】荣耀路由3 Wifi6+智能分频 凌霄双核3000Mbps 多穿一堵墙 儿童保护+加</p>
                <p class="grid-price">¥209</p>
              </a>
            </li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/huaweiluyou2.png" alt="">
                  <p class="grid-desc">一碰连网 上网保护</p>
                </div>
                <p class="grid-title">华为路由A2</p>
                <p class="grid-price">¥399</p>
              </a></li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honorluyou.png" alt="">
                  <p class="grid-desc">现货速发</p>
                </div>
                <p class="grid-title">【新品上市】荣耀路由3 Wifi6+智能分频 凌霄双核3000Mbps 多穿一堵墙 儿童保护+加</p>
                <p class="grid-price">¥209</p>
              </a>
            </li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/huaweiluyou2.png" alt="">
                  <p class="grid-desc">一碰连网 上网保护</p>
                </div>
                <p class="grid-title">华为路由A2</p>
                <p class="grid-price">¥399</p>
              </a></li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honorluyou.png" alt="">
                  <p class="grid-desc">现货速发</p>
                </div>
                <p class="grid-title">【新品上市】荣耀路由3 Wifi6+智能分频 凌霄双核3000Mbps 多穿一堵墙 儿童保护+加</p>
                <p class="grid-price">¥209</p>
              </a>
            </li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/huaweiluyou2.png" alt="">
                  <p class="grid-desc">一碰连网 上网保护</p>
                </div>
                <p class="grid-title">华为路由A2</p>
                <p class="grid-price">¥399</p>
              </a></li>
          </ul>
          <div class="grid-btn-prev grid-btn-none grid-btn-prev1"></div>
          <div class="grid-btn-next grid-btn-next1"></div>
        </div>
      </div>
      <!-- 热销配件 -->
      <div class="phone clearfix" id="parts">
        <div class="title">
          <h2>热销配件</h2>
          <ul>
            <li><a href="">移动电源</a></li>
            <li><a href="">充电器/线材</a></li>
            <li><a href="">自拍杆/支架</a></li>
            <li><a href="">摄像机/镜头</a></li>
            <li><a href="">智能硬件</a></li>
            <li><a href="">生活周边</a></li>
            <li><a href="">其他</a></li>
            <li><a href="">保护壳</a></li>
            <li><a href="">保护套</a></li>
            <li><a href="">贴膜</a></li>
            <li><a href="">个人电脑配件</a></li>
            <li><a href="">电脑包</a></li>
          </ul>
          <div class="more">
            <a href="">查看更多</a>
          </div>
        </div>
        <div class="goods-list-list">
          <ul class="grid-list">
            <li class="ld"><a href=""><img src="/huawei-project/vmall/upload/freebuds.png" alt=""></a></li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/flybuds3.png" alt=""></p>
                <p class="grid-title">荣耀 FlyPods 3真无线耳机</p>
                <p class="grid-desc">享6期免息</p>
                <p class="grid-price">¥599</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/flybuds3.png" alt=""></p>
                <p class="grid-title">荣耀 FlyPods 3真无线耳机</p>
                <p class="grid-desc">享6期免息</p>
                <p class="grid-price">¥599</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/flybuds3.png" alt=""></p>
                <p class="grid-title">荣耀 FlyPods 3真无线耳机</p>
                <p class="grid-desc">享6期免息</p>
                <p class="grid-price">¥599</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/flybuds3.png" alt=""></p>
                <p class="grid-title">荣耀 FlyPods 3真无线耳机</p>
                <p class="grid-desc">享6期免息</p>
                <p class="grid-price">¥599</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/flybuds3.png" alt=""></p>
                <p class="grid-title">荣耀 FlyPods 3真无线耳机</p>
                <p class="grid-desc">享6期免息</p>
                <p class="grid-price">¥599</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/flybuds3.png" alt=""></p>
                <p class="grid-title">荣耀 FlyPods 3真无线耳机</p>
                <p class="grid-desc">享6期免息</p>
                <p class="grid-price">¥599</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/flybuds3.png" alt=""></p>
                <p class="grid-title">荣耀 FlyPods 3真无线耳机</p>
                <p class="grid-desc">享6期免息</p>
                <p class="grid-price">¥599</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/flybuds3.png" alt=""></p>
                <p class="grid-title">荣耀 FlyPods 3真无线耳机</p>
                <p class="grid-desc">享6期免息</p>
                <p class="grid-price">¥599</p>
              </a>
            </li>
          </ul>
        </div>
        <div class="goods-content">
          <ul class="clearfix">
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honorcheng.png" alt="">
                  <p class="grid-desc">运动健康好伴侣</p>
                </div>
                <p class="grid-title">荣耀智能体脂秤2</p>
                <p class="grid-price">¥99</p>
              </a></li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honoreye.png" alt="">
                  <p class="grid-desc">享12期免息</p>
                </div>
                <p class="grid-title">【HUAWEI X GM智能眼镜新品</p>
                <p class="grid-price">¥2499</p>
              </a>
            </li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honorcheng.png" alt="">
                  <p class="grid-desc">运动健康好伴侣</p>
                </div>
                <p class="grid-title">荣耀智能体脂秤2</p>
                <p class="grid-price">¥99</p>
              </a></li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honoreye.png" alt="">
                  <p class="grid-desc">享12期免息</p>
                </div>
                <p class="grid-title">【HUAWEI X GM智能眼镜新品</p>
                <p class="grid-price">¥2499</p>
              </a>
            </li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honorcheng.png" alt="">
                  <p class="grid-desc">运动健康好伴侣</p>
                </div>
                <p class="grid-title">荣耀智能体脂秤2</p>
                <p class="grid-price">¥99</p>
              </a></li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honoreye.png" alt="">
                  <p class="grid-desc">享12期免息</p>
                </div>
                <p class="grid-title">【HUAWEI X GM智能眼镜新品</p>
                <p class="grid-price">¥2499</p>
              </a>
            </li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honorcheng.png" alt="">
                  <p class="grid-desc">运动健康好伴侣</p>
                </div>
                <p class="grid-title">荣耀智能体脂秤2</p>
                <p class="grid-price">¥99</p>
              </a></li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honoreye.png" alt="">
                  <p class="grid-desc">享12期免息</p>
                </div>
                <p class="grid-title">【HUAWEI X GM智能眼镜新品</p>
                <p class="grid-price">¥2499</p>
              </a>
            </li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honorcheng.png" alt="">
                  <p class="grid-desc">运动健康好伴侣</p>
                </div>
                <p class="grid-title">荣耀智能体脂秤2</p>
                <p class="grid-price">¥99</p>
              </a></li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honoreye.png" alt="">
                  <p class="grid-desc">享12期免息</p>
                </div>
                <p class="grid-title">【HUAWEI X GM智能眼镜新品</p>
                <p class="grid-price">¥2499</p>
              </a>
            </li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honorcheng.png" alt="">
                  <p class="grid-desc">运动健康好伴侣</p>
                </div>
                <p class="grid-title">荣耀智能体脂秤2</p>
                <p class="grid-price">¥99</p>
              </a></li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honoreye.png" alt="">
                  <p class="grid-desc">享12期免息</p>
                </div>
                <p class="grid-title">【HUAWEI X GM智能眼镜新品</p>
                <p class="grid-price">¥2499</p>
              </a>
            </li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honorcheng.png" alt="">
                  <p class="grid-desc">运动健康好伴侣</p>
                </div>
                <p class="grid-title">荣耀智能体脂秤2</p>
                <p class="grid-price">¥99</p>
              </a></li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honoreye.png" alt="">
                  <p class="grid-desc">享12期免息</p>
                </div>
                <p class="grid-title">【HUAWEI X GM智能眼镜新品</p>
                <p class="grid-price">¥2499</p>
              </a>
            </li>
            <li><a href="#">
                <div class="grid-info">
                  <img src="/huawei-project/vmall/upload/honorcheng.png" alt="">
                  <p class="grid-desc">运动健康好伴侣</p>
                </div>
                <p class="grid-title">荣耀智能体脂秤2</p>
                <p class="grid-price">¥99</p>
              </a></li>
          </ul>
          <div class="grid-btn-prev grid-btn-none grid-btn-prev1"></div>
          <div class="grid-btn-next grid-btn-next1"></div>
        </div>
        <!-- 热销配件下方轮播 -->
        <div class="s-banner">
          <div class="container">
            <div class="banner-box">
              <img src="/huawei-project/vmall/upload/s-s-banner.jpg" alt="">
            </div>
          </div>
        </div>
      </div>
      <!-- 生态精品 -->
      <div class="phone clearfix" id="environment">
        <div class="title">
          <h2>生态精品</h2>
          <ul>
            <li><a href="">生活电器</a></li>
            <li><a href="">影音娱乐</a></li>
            <li><a href="">厨电卫浴</a></li>
            <li><a href="">智能灯光</a></li>
            <li><a href="">安防门锁</a></li>
            <li><a href="">数码周边</a></li>
            <li><a href="">环境卫士</a></li>
            <li><a href="">健康保健</a></li>
            <li><a href="">运动健身</a></li>
            <li><a href="">户外出行</a></li>
            <li><a href="">个护美妆</a></li>
          </ul>
          <div class="more">
            <a href="">查看更多</a>
          </div>
        </div>
        <div class="goods-list-list">
          <ul class="grid-list">
            <li class="ld"><a href=""><img src="/huawei-project/vmall/upload/yadushi.jpg" alt=""></a></li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/honorbei.png" alt=""></p>
                <p class="grid-title">荣耀亲选智能保温杯</p>
                <p class="grid-desc">秒测水质纯净度</p>
                <p class="grid-price">¥169</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/honorbei.png" alt=""></p>
                <p class="grid-title">荣耀亲选智能保温杯</p>
                <p class="grid-desc">秒测水质纯净度</p>
                <p class="grid-price">¥169</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/honorbei.png" alt=""></p>
                <p class="grid-title">荣耀亲选智能保温杯</p>
                <p class="grid-desc">秒测水质纯净度</p>
                <p class="grid-price">¥169</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/honorbei.png" alt=""></p>
                <p class="grid-title">荣耀亲选智能保温杯</p>
                <p class="grid-desc">秒测水质纯净度</p>
                <p class="grid-price">¥169</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/honorbei.png" alt=""></p>
                <p class="grid-title">荣耀亲选智能保温杯</p>
                <p class="grid-desc">秒测水质纯净度</p>
                <p class="grid-price">¥169</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/honorbei.png" alt=""></p>
                <p class="grid-title">荣耀亲选智能保温杯</p>
                <p class="grid-desc">秒测水质纯净度</p>
                <p class="grid-price">¥169</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/honorbei.png" alt=""></p>
                <p class="grid-title">荣耀亲选智能保温杯</p>
                <p class="grid-desc">秒测水质纯净度</p>
                <p class="grid-price">¥169</p>
              </a>
            </li>
            <li><a href="">
                <p class="grid-img"><img src="/huawei-project/vmall/upload/honorbei.png" alt=""></p>
                <p class="grid-title">荣耀亲选智能保温杯</p>
                <p class="grid-desc">秒测水质纯净度</p>
                <p class="grid-price">¥169</p>
              </a>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- 广告 -->
  <div class="ad1">
    <div class="container">
      <img src="/huawei-project/vmall/upload/ad1.png" alt="">
    </div>
  </div>
  <footer>
  </footer>
  <!-- 侧边工具栏 -->
  <div class="float-main"></div>
  <!-- 登录时弹出协议 -->
  <div class="login-pop">
    <div class="login-tips-1">
      <h4>- 华为商城服务 -</h4>
      <p>欢迎您使用华为商城，为了给您提供更好的服务，本网站在使用时需要获取网络、帐号及相关使用信息。我们将对您的个人数据予以充分保护。点击 “同意” ，表示您同意上述内容及<a href="">华为商城服务协议</a>、<a href="">关于华为商城与隐私的声明</a>。</p>
      <div class="hr16"></div>
      <p><input type="checkbox" class="receive-msg" checked>接收短信、邮件、系统通知发送的活动、优惠、中奖等消息。<a href="">了解详情</a></p>
      <div class="login-tips-btn">
        <span class="login-tips-cancel">取消</span><span class="login-tips-ok">同意</span>
      </div>
    </div>
    <div class="login-tips-2">
      <h4>尚未同意服务条款，是否退出帐号？</h4>
      <div class="login-tips-btn">
        <span class="login-tips-cancel">取消</span><span class="login-tips-ok">退出</span>
      </div>
    </div>
  </div>

  <!-- 尾部footer -->
<div class="footer">
  <div class="footerbox banxin">
      <div class="footer-top">
          <ul>
            <li><a href="">
              <i></i>
              <span>百强企业 品质保证</span>
            </a></li>
      
              <li><a href="">
                  <i style="background-position:-154px 0;"></i>
                  <span>7天退货  15天换货</span>
              </a></li>
      
                  <li><a href="">
                      <i style="background-position:-194px 0;"></i>
                      <span>48元起免运费</span>
                  </a></li>
              
                  <li><a href="">
                      <i style="background-position:-114px 0;"></i>
                      <span>2000家服务店 全国联保</span>
                  </a></li>
          </ul>
           <div class="banxin footer-xians"></div>
        </div>
      <div class="footer-bottom clearfix">
          <div class="left">
              <dl>
                  <dt>购物相关</dt>
                  <dd><a href="">购物指南</a></dd>
                  <dd><a href="">配送方式</a></dd>
                  <dd><a href="">支付方式</a></dd>
                  <dd><a href="">常见问题</a></dd>
                </dl>
    
                <dl>
                    <dt>保修与退换货</dt>
                    <dd><a href="">保修政策</a></dd>
                    <dd><a href="">退换货政策</a></dd>
                    <dd><a href="">退换货流程</a></dd>
                    <dd><a href="">保修状态查询</a></dd>
                    <dd><a href="">配件防伪查询</a></dd>
                </dl>
                <dl>
                    <dt>维修与技术支持</dt>
                    <dd><a href="">服务店</a></dd>
                    <dd><a href="">预约维修</a></dd>
                    <dd><a href="">手机寄修</a></dd>
                    <dd><a href="">备件价格查询</a></dd>
                    <dd><a href="">上门服务</a></dd>
                </dl>

                <dl>
                    <dt>特色服务</dt>
                    <dd><a href="">防伪查询</a></dd>
                    <dd><a href="">补购保障</a></dd>
                    <dd><a href="">退换货流程</a></dd>
                    <dd><a href="">以旧换新</a></dd>
                    <dd><a href="">礼品包装</a></dd>
                </dl>

                <dl>
                    <dt>关于我们</dt>
                    <dd><a href="">公司介绍</a></dd>
                    <dd><a href="">华为商场简介</a></dd>
                    <dd><a href="">华为零售店</a></dd>
                    <dd><a href="">荣耀零售店</a></dd>
                    <dd><a href="">商家中心</a></dd>
                </dl>

                <dl>
                    <dt>友情链接</dt>
                    <dd><a href="">华为集团</a></dd>
                    <dd><a href="">华为CBG官网</a></dd>
                    <dd><a href="">荣耀官网</a></dd>
                    <dd><a href="">花粉俱乐部</a></dd>
                    <dd><a href="">华为云</a></dd>
                </dl>
          </div>
          <div class="footer-xian left"></div>
          <div class="right footer-right">
           <h3>950805</h3>
           <p> 7x24小时客服热线（仅收市话费）</p>
           <div class="footer-man"><a href="">
             <span><i class="glyphicon glyphicon-headphones"></i>在线客服</span>
           </a></div>

           <div class="vmall">
             <p>关注Vmall:</p>
             <ul class="vmall-list clearfix">
               <li><a class="footer-ahover" href="" style="background-position:-126px 0 !important;"></a>
              <div class="footer-hover"><img src="/huawei-project/vmall/images/footer-wx.png" alt=""></div>
              </li>
               <li><a href=""  style="background-position: -150px -24px;"></a></a></li>
               <li><a href=""  style="background-position: -174px -24px;"></a></a></li>
               <li><a href=""  style="background-position: -24px -36px;"></a></a></li>
             </ul>
           </div>
          </div>
      </div>
      <div class="banxin footer-xians clearfix"></div>
      <div class="footer-footer clearfix">
        <p class="footer-logo left"><a href=""> <img src="/huawei-project/vmall/images/footer-logo.png" alt=""></a></p>
        <div class="left footer-footer-list"> 
          <ul class="clearfix">
            <li><a href="">华为集团</a><span>|</span></li>
            <li><a href="">华为CBG官网</a><span>|</span></li>
            <li><a href="">荣耀官网</a><span>|</span></li>
            <li><a href="">花粉俱乐部</a><span>|</span></li>
            <li><a href="">华为应用市场</a><span>|</span></li>
            <li><a href="">EMUI</a><span>|</span></li>
            <li><a href="">华为终端云空间</a><span>|</span></li>
            <li><a href="">开发者联盟</a><span>|</span></li>
            <li><a href="">华为商场手机版</a><span>|</span></li>
            <li><a href="">网站地图</a></li>
          </ul>
          <a href="">隐私声明</a>
          <a href="">服务协议</a>
          <a href=""> Copyright © 2012-</a>
          <a href=""> 华为终端有限公司 版权所有 </a>

          <a href="">粤ICP备19015064号</a>
          <a href="">粤公网安备 44190002003939号</a>
          <br>
          <p>增值电信业务经营许可证：粤B2-20190762
            <span>|</span>
            备案主体编号：44201919072182</p>
    

        </div>

        <div class="right footer-img">
          <img src="/huawei-project/vmall/images/footer-img.png" alt="">
        </div>
      </div>
  </div>
 
</div>
</body>

</html>




