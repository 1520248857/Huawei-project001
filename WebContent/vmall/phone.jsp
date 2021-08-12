<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>p40pro</title>
  <link rel="stylesheet" href="/huawei-project/vmall/css/base.css">
  <link rel="stylesheet" href="/huawei-project/vmall/css/header.css">
  <link rel="stylesheet" href="/huawei-project/vmall/css/footer.css">
  <link rel="stylesheet" href="/huawei-project/vmall/css/common.css">
  <link rel="stylesheet" href="/huawei-project/vmall/css/iconfont.css">
  <script type="text/javascript">
  $(function(){
	if($("input[class='color1']:checked").val()&&$("input[class='ram1']:checked").val()){
		location.href="/huawei-project/ConnectionServlet?action=selectConnectionIdByCodeId&codeId="+${codeId1};
	}
  })
  $(function(){
	if($("input[class='color1']:checked").val()&&$("input[class='ram2']:checked").val()){
		location.href="/huawei-project/ConnectionServlet?action=selectConnectionIdByCodeId&codeId="+${codeId2};
	}
  })
  $(function(){
	if($("input[class='color2']:checked").val()&&$("input[class='ram1']:checked").val()){
		location.href="/huawei-project/ConnectionServlet?action=selectConnectionIdByCodeId&codeId="+${codeId3};
	}
  })
  $(function(){
	if($("input[class='color2']:checked").val()&&$("input[class='ram2']:checked").val()){
		location.href="/huawei-project/ConnectionServlet?action=selectConnectionIdByCodeId&codeId="+${codeId4};
	}
  })
  $(function(){
	  var color = $("input[class='color1']:checked").val();
		var ram = $("input[class='ram1']:checked").val();
		$(".bread-button-01").click(function(){
			location.href="/huawei-project/CartServlet?action=AddItems&id="+${connectionId}+"&color="+${color1}+"&ram="+${ram1};
		})
  })
   $(function(){
	  var color = $("input[class='color1']:checked").val();
		var ram = $("input[class='ram2']:checked").val();
		$(".bread-button-01").click(function(){
			location.href="/huawei-project/CartServlet?action=AddItems&id="+${connectionId}+"&color="+${color1}+"&ram="+${ram2};
		})
  })
   $(function(){
	  var color = $("input[class='color2']:checked").val();
		var ram = $("input[class='ram1']:checked").val();
		$(".bread-button-01").click(function(){
			location.href="/huawei-project/CartServlet?action=AddItems&id="+${connectionId}+"&color="+${color2}+"&ram="+${ram1};
		})
  })
   $(function(){
	  var color = $("input[class='color2']:checked").val();
		var ram = $("input[class='ram2']:checked").val();
		$(".bread-button-01").click(function(){
			location.href="/huawei-project/CartServlet?action=AddItems&id="+${connectionId}+"&color="+${color2}+"&ram="+${ram2};
		})
  })
  </script>
</head>
<body>
  <div class="top-header"></div>
  <!-- 头部 -->
  <header>
    <div class="container">
      <div class="left">
        <a href="index.jsp" class="logo"><img src="/huawei-project/vmall/images/logo.png" height="36" alt=""></a>
        <!-- 全部商品分类 -->
        <div class="nav-class">
          <a href="#" class="link">全部商品分类</a>
          <div class="nav-main">
            <div class="container">
              <div class="nav-main-vertical">
                <ol class="nav-list">
                  <li class="nav-list-item"><a href="#">手机</a>
                    <div class="nav-pannel nav-pannel-2 nav-pannel-none">
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/mate40.png" alt=""><span>HUAWEI
                              Mate系列</span></a>
                        </li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/p40.png" alt=""><span>HUAWEI
                              P系列</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/HUAWEInova.png" alt=""><span>HUAWEI
                              nova系列</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicx.png"
                              alt=""><span>华为畅享系列</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweimm.png" alt=""><span>HUAWEI
                              麦芒系列</span></a>
                        </li>
                      </ul>
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/honor40.png"
                              alt=""><span>荣耀V系列</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/honorx.png" alt=""><span>荣耀
                              X系列</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/honor8t.png" alt=""><span>荣耀
                              HONOR系列</span></a>
                        </li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/honorplay.png" alt=""><span>荣耀
                              Play系列</span></a>
                        </li>
                        <li class="nav-list-btn"><a href="#">查看全部</a></li>
                      </ul>
                    </div>
                  </li>
                  <li class="nav-list-item"><a href="#">笔记本</a>
                    <div class="nav-pannel nav-pannel-2 nav-pannel-none">
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>华为MateBook
                              X系列</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>华为MateBook
                              X系列</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>华为MateBook
                              X系列</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>华为MateBook
                              X系列</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>华为MateBook
                              X系列</span></a></li>
                      </ul>
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>华为MateBook
                              X系列</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>华为MateBook
                              X系列</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>华为MateBook
                              X系列</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matebookx.png" alt=""><span>华为MateBook
                              X系列</span></a></li>
                        <li class="nav-list-btn"><a href="#">查看全部</a></li>
                      </ul>
                    </div>
                  </li>
                  <li class="nav-list-item"><a href="#">平板</a>
                    <div class="nav-pannel nav-pannel-2 nav-pannel-none">
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matepad.png" alt=""><span>华为MatePad
                              系列</span></a>
                        </li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matepad.png" alt=""><span>华为MatePad
                              系列</span></a>
                        </li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matepad.png" alt=""><span>华为MatePad
                              系列</span></a>
                        </li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matepad.png" alt=""><span>华为MatePad
                              系列</span></a>
                        </li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matepad.png" alt=""><span>华为MatePad
                              系列</span></a>
                        </li>
                      </ul>
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/matepad.png" alt=""><span>华为MatePad
                              系列</span></a>
                        </li>
                        <li class="nav-list-btn"><a href="#">查看全部</a></li>
                      </ul>
                    </div>
                  </li>
                  <li class="nav-list-item"><a href="#">智能穿戴&VR</a>
                    <div class="nav-pannel nav-pannel-2 nav-pannel-none">
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiwatch.png"
                              alt=""><span>智能手表</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiwatch.png"
                              alt=""><span>智能手表</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiwatch.png"
                              alt=""><span>智能手表</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiwatch.png"
                              alt=""><span>智能手表</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiwatch.png"
                              alt=""><span>智能手表</span></a></li>
                      </ul>
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiwatch.png"
                              alt=""><span>智能手表</span></a></li>
                        <li class="nav-list-btn"><a href="#">查看全部</a></li>
                      </ul>
                    </div>
                  </li>
                  <li class="nav-list-item"><a href="#">智能家居</a>
                    <div class="nav-pannel nav-pannel-2 nav-pannel-none">
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiluyou.png"
                              alt=""><span>智能路由</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiluyou.png"
                              alt=""><span>智能路由</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiluyou.png"
                              alt=""><span>智能路由</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiluyou.png"
                              alt=""><span>智能路由</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiluyou.png"
                              alt=""><span>智能路由</span></a></li>
                      </ul>
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweiluyou.png"
                              alt=""><span>智能路由</span></a></li>
                        <li class="nav-list-btn"><a href="#">查看全部</a></li>
                      </ul>
                    </div>
                  </li>
                  <li class="nav-list-item"><a href="#">智慧屏</a>
                    <div class="nav-pannel nav-pannel-1 nav-pannel-none">
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweitv.png"
                              alt=""><span>华为智慧屏</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweitv.png"
                              alt=""><span>华为智慧屏</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweitv.png"
                              alt=""><span>华为智慧屏</span></a></li>
                        <li class="nav-list-btn"><a href="#">查看全部</a></li>
                      </ul>
                    </div>
                  </li>
                  <li class="nav-list-item"><a href="#">耳机音箱</a>
                    <div class="nav-pannel nav-pannel-2 nav-pannel-none">
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweierji.png"
                              alt=""><span>真无线耳机</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweierji.png"
                              alt=""><span>真无线耳机</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweierji.png"
                              alt=""><span>真无线耳机</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweierji.png"
                              alt=""><span>真无线耳机</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweierji.png"
                              alt=""><span>真无线耳机</span></a></li>
                      </ul>
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweierji.png"
                              alt=""><span>真无线耳机</span></a></li>
                        <li class="nav-list-btn"><a href="#">查看全部</a></li>
                      </ul>
                    </div>
                  </li>
                  <li class="nav-list-item"><a href="#">配件</a>
                    <div class="nav-pannel nav-pannel-3 nav-pannel-none">
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png"
                              alt=""><span>充电器/线材</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png"
                              alt=""><span>充电器/线材</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png"
                              alt=""><span>充电器/线材</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png"
                              alt=""><span>充电器/线材</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png"
                              alt=""><span>充电器/线材</span></a></li>
                      </ul>
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png"
                              alt=""><span>充电器/线材</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png"
                              alt=""><span>充电器/线材</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png"
                              alt=""><span>充电器/线材</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png"
                              alt=""><span>充电器/线材</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png"
                              alt=""><span>充电器/线材</span></a></li>
                      </ul>
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png"
                              alt=""><span>充电器/线材</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png"
                              alt=""><span>充电器/线材</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png"
                              alt=""><span>充电器/线材</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicdq.png"
                              alt=""><span>充电器/线材</span></a></li>
                        <li class="nav-list-btn"><a href="#">查看全部</a></li>
                      </ul>
                    </div>
                  </li>
                  <li class="nav-list-item"><a href="#">生态产品</a>
                    <div class="nav-pannel nav-pannel-3 nav-pannel-none">
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png"
                              alt=""><span>智能灯光</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png"
                              alt=""><span>智能灯光</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png"
                              alt=""><span>智能灯光</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png"
                              alt=""><span>智能灯光</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png"
                              alt=""><span>智能灯光</span></a></li>
                      </ul>
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png"
                              alt=""><span>智能灯光</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png"
                              alt=""><span>智能灯光</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png"
                              alt=""><span>智能灯光</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png"
                              alt=""><span>智能灯光</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png"
                              alt=""><span>智能灯光</span></a></li>
                      </ul>
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweilight.png"
                              alt=""><span>智能灯光</span></a></li>
                        <li class="nav-list-btn"><a href="#">查看全部</a></li>
                      </ul>
                    </div>
                  </li>
                  <li class="nav-list-item"><a href="#">增值服务&其他</a>
                    <div class="nav-pannel nav-pannel-2 nav-pannel-none">
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicard.png"
                              alt=""><span>华为视频卡</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicard.png"
                              alt=""><span>华为视频卡</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicard.png"
                              alt=""><span>华为视频卡</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicard.png"
                              alt=""><span>华为视频卡</span></a></li>
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicard.png"
                              alt=""><span>华为视频卡</span></a></li>
                      </ul>
                      <ul class="nav-list2 clearfix">
                        <li class="nav-list-item2"><a href="#"><img src="/huawei-project/vmall/upload/huaweicard.png"
                              alt=""><span>华为视频卡</span></a></li>
                        <li class="nav-list-btn"><a href="#">查看全部</a></li>
                      </ul>
                  </li>
                </ol>
              </div>
            </div>
          </div>
        </div>
        <nav>
          <ul class="clearfix">
            <li class="img"><a href=""><img src="/huawei-project/vmall/images/huaweizhuanqu.png" alt=""></a></li>
            <li class="img"><a href=""><img src="/huawei-project/vmall/images/rongyaozhuanqu.png" alt=""></a></li>
            <li><a href="">P40系列</a></li>
            <li><a href="">荣耀30</a></li>
            <li><a href="">智能家居</a></li>
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
  <main>
    <!-- 商品页详细内容 -->
    <div class="container">
      <div class="bread-title">
        首页 > 手机 > <span id="bread-series">${param.name }</span> > <span id="bread-name">${param.seriesName } </span><span id="bread-title-type"> ${param.ram }</span>（<span id="bread-title-color">${param.color }</span>）
      </div>
      <div class="hr-10"></div>
      <div class="bread clearfix">
        <div class="left">
          <div class="bread-gallery">
            <!-- 放大镜 -->
            <div class="relative">
              <div class="bread-gallery-smallBox">
                <div class="bread-gallery-mask"></div>
              </div>
              <div class="bread-gallery-bigBox"></div>
            </div>
            <!-- 商品种类 -->
            <div class="bread-gallery-nav">
              <span class="bread-gallery-prev"></span>
              <div class="bread-gallery-thumb" id="lb">
                <ul >
                  <li  id="bread-img"><img src="/huawei-project/upload/${param.image1 }" alt=""></li>
                  <li ><img src="/huawei-project/upload/${param.image2 }" alt=""></li>
                  <li ><img src="/huawei-project/upload/${param.image3 }" alt=""></li>
                  <li ><img src="/huawei-project/upload/${param.image4 }" alt=""></li>
                   <li ><img src="/huawei-project/upload/${param.image2 }" alt=""></li>
                </ul>
              </div>
              <span class="bread-gallery-next"></span>
            </div>
          </div>
        </div>
        <div class="right">
          <div class="bread-property clearfix relative">
            <div class="bread-property-recommend">
              <div class="bread-meta">
                <h1 id="bread-name" class="bread-name"><span id="bread-meta-name">${param.productName }</span> <span id="bread-meta-type">${param.series } ${param.ram }</span>（<span id="bread-meta-color">${param.color }</span>）</h1>
                <p id="bread-keyWord" class="bread-keyWord">
                  <span>【2021 焕新年6.21-6.25】00:00限时开售</span>
                  <span>麒麟990 5G SoC芯片 5000万超感知徕卡四摄 50倍数字变焦 全网通5G手机</span>
                </p>
              </div>
              <div class="bread-info">
                <div class="bread-info-list clearfix">
                  <label>价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格</label>
                  <span class="bread-price-info"><em>¥</em><span id="bread-price">${param.price }</span> </span>
                </div>
                <div class="bread-info-list clearfix">
                  <label>促&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;销</label>
                  <div class="bread-prom">
                    <div class="bread-prom-git clearfix">
                      <em class="tag">赠品</em>
                      <a href="#">去选择 &gt;</a>
                    </div>
                    <div class="bread-prom-git clearfix">
                      <em class="tag">一站式换新</em>
                      <span>以旧换新最高补贴500元</span>
                    </div>
                    <div class="bread-prom-git clearfix">
                      <em class="tag">赠送积分</em>
                      <span>购买即赠商城积分，积分可抵现~</span>
                    </div>
                  </div>
                </div>
              </div>
              <div class="hr-20"></div>
              <div class="bread-pulldown clearfix">
                <label>服务说明</label>
                <ul>
                  <li><span class="iconfont icon-dui"></span>已满48元已免运费</li> 
                  <li><span class="iconfont icon-dui"></span>由华为商城负责发货，并提供售后服务</li> 
                </ul>
              </div>
              <div class="bread-discription clearfix">
                <label>商品编码</label>
                <span class="bread-code left">2601010188713</span>
              </div>
              <div class="line"></div>
              <div class="hr-16"></div>
              <div id="bread-skus">
                <div class="bread-choose clearfix bread-choose-pic">
                  <label>选择颜色</label>
                  <div class="bread-choose-detail" id="bread-choose-color">
                    <ul>
                       <li>
                        <a href="javascript:;"><img src="/huawei-project/vmall/upload/p40pro5g40_40.png" alt=""><input class="color1" type="radio" name="color" checked="checked" value="亮黑色">${param.color } </a>
                      </li>
                      <li>
                        <a href="javascript:;"><img src="/huawei-project/vmall/upload/p40pro5g40_40.png" alt=""><input class="color2" type="radio" name="color"  value="冰霜银">白色</a>
                      </li> 
                    </ul>
                  </div>
                </div>
                <div class="bread-choose clearfix">
                  <label>选择版本</label>
                  <div class="bread-choose-detail" id="bread-choose-type">
                    <ul>
                      <li><a href="javascript:;"><input class="ram1" type="radio" name="ram" checked="checked" value="5G全网通 8GB+128GB">${ param.ram}</a></li>
                      <li><a href="javascript:;"><input class="ram2" type="radio" name="ram" value="5G全网通 8GB+256GB">8GB+128GB</a></li>
                    </ul>
                  </div>
                </div>
                <div class="bread-choose clearfix">
                  <label>选择套餐</label>
                  <div class="bread-choose-detail">
                    <ul>
                      <li class="bread-choose-selected"><a href="javascript:;">官方标配</a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="bread-giftBuy bread-choose">
                <label>增值服务</label>
                <div class="bread-choose-detail">
                  <ul>
                    <li class="bread-choose-selected"><a href="javascript:;">无增值服务</a></li>
                    <li><a href="javascript:;">华为礼品包装服务（礼品封套+明信片）</a></li>
                  </ul>
                </div>
              </div>
              <div class="bread-service">
                <label>保障服务</label>
                <div class="bread-property-con clearfix">
                  <div class="bread-service-item">
                    <a href="javascript:;">华为无忧服务 ￥1299</a>
                    <div class="bread-service-item-detail">
                      <div>
                        <input type="checkbox"><span>华为无忧服务 ￥1299</span>
                      </div>
                    </div>
                  </div>
                  <div class="bread-service-item">
                    <a href="javascript:;">碎屏(含后盖)服务宝1年 ￥399</a>
                    <div class="bread-service-item-detail">
                      <div>
                        <input type="checkbox"><span>碎屏(含后盖)服务宝1年 ￥399</span>
                      </div>
                    </div>
                  </div>
                  <div class="bread-service-item">
                    <a href="javascript:;">延长服务宝1年 ￥368</a>
                    <div class="bread-service-item-detail">
                      <div>
                        <input type="checkbox"><span>延长服务宝1年 ￥368</span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="bread-recommend clearfix">
                <label>推荐</label>
                <div class="bread-choose-relation">
                  <ul class="clearfix">
                    <li><a href="#">华为智慧屏</a></li>
                    <li><a href="#">HUAWEI Sound</a></li>
                    <li><a href="#">HUAWEI P40 Pro+</a></li>
                    <li><a href="#">HUAWEI P40</a></li>
                  </ul>
                </div>
              </div>
              <div class="bread-operation clearfix">
                <div class="bread-operation-description clearfix">
                  <label>已选择商品:</label>
                  <div class="bread-select-sku">
                    <span id="bread-select-sku-color">${param.color }</span> / <span id="bread-select-sku-type">${param.ram }</span> / 官方标配<span class="gitBuy-selected">/ 无增值服务</span>
                  </div>
                </div>
                <div class="bread-intoCart clearfix">
                  <!-- <div class="bread-intoCart-nochange">
                    <input type="text" value="1" id="bread-num">
                    <p><a href="javascript:;" id="bread-add">+</a><a href="javascript:;" id="bread-min">-</a></p>
                  </div> -->
                  <div class="bread-buttonMain">
                    <a href="/huawei-project/CartServlet?action=AddItems&codeId=${param.codeId }" class="bread-button-01">加入购物车</a>
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="hr-20"></div>
    <div class="line"></div>
    <p class="bread-tab clearfix">
      <a href="javascript:;" class="selected" id="bread-t-1">商品详情<em></em></a>
      <a href="javascript:;" id="bread-t-2">规格参数<em></em></a>
      <a href="javascript:;" id="bread-t-3">包装与售后<em></em></a>
      <a href="javascript:;" id="bread-t-4">用户评价(4万+)<em></em></a>
    </p>
    <div class="bread-tab-content" id="bread-p-1">
      <img src="/huawei-project/vmall/upload/p40pro5gpic1.jpg" alt="">
      <img src="/huawei-project/vmall/upload/p40pro5gpic2.jpg" alt="">
    </div>
    <div class="hr-60"></div>
    <div class="bread-parameter">
      <div class="container clearfix">
        <!-- 规格参数 -->
        <h2 class="bread-p-title" id="bread-p-2">规格参数</h2>
        <div class="bread-parameter-main">
          <h2>主要参数</h2>
          <ul>
            <li class="clearfix">
              <label for="">传播名</label>
              <span>HUAWEI P40 Pro</span>
            </li>
            <li class="clearfix">
              <label for="">电池容量</label>
              <span>4200mAh（典型值）</span>
              <p>备注：电池额定容量为4100mAh。</p>
            </li>
            <li class="clearfix">
              <label for="">后置摄像头</label>
              <span>超感知徕卡四摄：5000万像素超感知摄像头（广角， f/1.9光圈，OIS光学防抖）+ 4000万像素电影摄像头（超广角，f/1.8光圈） + 1200万像素超感光长焦摄像头（f/3.4 光圈，OIS光学防抖） + 3D深感摄像头</span>
              <p>备注：不同模式的照片和视频的像素可能有差异，请以实际为准。</p>
            </li>
            <li class="clearfix">
              <label for="">前置摄像头</label>
              <span>3200万像素摄像头（f/2.2光圈，自动对焦）+ 景深摄像头</span>
              <p>备注：景深摄像头同时支持红外解锁功能，不同模式的照片和视频的像素可能有差异，请以实际为准。</p>
            </li>
            <li class="clearfix">
              <label for="">屏幕尺寸</label>
              <span>6.58英寸</span>
              <p>备注：显示屏采用圆角设计，按照标准矩形测量时，屏幕的对角线长度是6.58英寸（实际可视区域略小）。</p>
            </li>
            <li class="clearfix">
              <label for="">上市时间</label>
              <span>2020年4月</span>
              <p></p>
            </li>
            <li class="clearfix">
              <label for="">屏幕色彩</label>
              <span>1670万色，DCI-P3广色域</span>
              <p></p>
            </li>
            <li class="clearfix">
              <label for="">机身内存（ROM）</label>
              <span>512GB</span>
              <p>备注：可使用的内存容量小于此值，因为手机软件占用的空间。</p>
            </li>
            <li class="clearfix">
              <label for="">最大支持扩展</label>
              <span>256GB NM存储卡（非标配，需另行购买）</span>
              <p>备注：可使用的内存容量小于此值，因为手机软件占用的空间。</p>
            </li>
            <li class="clearfix">
              <label for="">分辨率</label>
              <span>2640 × 1200 像素</span>
              <p>备注：该分辨率对应标准矩形，实际屏幕有效像素略少。</p>
            </li>
            <li class="clearfix">
              <label for="">CPU型号</label>
              <span>HUAWEI Kirin 990 5G(麒麟990 5G)</span>
              <p></p>
            </li>
            <li class="clearfix">
              <label for="">CPU核数</label>
              <span>八核</span>
              <p></p>
            </li>
            <li class="clearfix">
              <label for="">双卡</label>
              <span>双卡双待</span>
              <p></p>
            </li>
          </ul>
        </div>

      </div>
      <!-- 主体参数 -->
      <div class="bread-paramter-detail">
        <div class="bread-paramter-shade">
          <p><a href="javascript:;">查看全部参数</a></p>
        </div>
        <div class="container clearfix">
          <h2>主体</h2>
          <ul>
            <li class="clearfix">
              <label for="">品牌</label>
              <span>华为 HUAWEI</span>
            </li>
            <li class="clearfix">
              <label for="">型号</label>
              <span>ELS-AN00</span>
            </li>
            <li class="clearfix">
              <label for="">传播名</label>
              <span>HUAWEI P40 Pro</span>
            </li>
            <li class="clearfix">
              <label for="">传播名</label>
              <span>HUAWEI P40 Pro</span>
            </li>
            <li class="clearfix">
              <label for="">上市时间</label>
              <span>2020年4月</span>
            </li>
            <li class="clearfix">
              <label for="">上市时间</label>
              <span>2020年4月</span>
            </li>
            <li class="clearfix">
              <label for="">外观设计</label>
              <span>直板</span>
            </li>
            <li class="clearfix">
              <label for="">操作系统</label>
              <span>EMUI 10.1（基于Android 10）</span>
            </li>
            <li class="clearfix">
              <label for="">外观设计</label>
              <span>直板</span>
            </li>
            <li class="clearfix">
              <label for="">外观设计</label>
              <span>直板</span>
            </li>
            <li class="clearfix">
              <label for="">外观设计</label>
              <span>直板</span>
            </li>
            <li><label>用户界面</label><span>EMUI 10.1</span></li>
            <li><label>CPU型号</label><span>HUAWEI Kirin 990 5G(麒麟990 5G)</span></li>
            <li><label>CPU核数</label><span>八核</span></li>
            <li><label>CPU主频</label><span>2*Cortex-A76 Based 2.86GHz + 2*Cortex-A76 Based 2.36GHz + 4*Cortex-A55 1.95GHz</span></li>
            <li><label>GPU</label><span>Mali-G76</span></li>
            <li><label>NPU</label><span>双大核NPU+微核NPU(神经网络处理单元)</span></li>
            <li><label>双卡</label><span>双卡双待</span></li>
            <li><label>输入方式</label><span>百度输入法华为版</span></li>
            <li><label>特色功能</label><span>隔空操控、AI信息保护、多屏协同、畅连通话、多彩灭屏显示、深色模式、智慧分屏、人脸解锁、
                智慧剪辑、智能截屏、小艺智慧语音、智慧视觉、情景智能、华为分享，无线投屏、支付保护中心、天际通、运动健康、 单手操作、皮套模式、 杂志锁屏、玩机技巧、应用锁、 应用分身、隐私空间、密码保险箱, 三重备份与恢复（云空间, 外部存储,
                华为手机助手）、手机克隆</span></li>
            <li><label>系统导航方式</label><span>手势导航、屏幕内三键导航、悬浮导航</span></li>
          </ul>
        </div>
      </div>
      <!-- 包装 -->
      <div class="container clearfix">
        <h2 class="bread-p-title" id="bread-p-3">包装</h2>
        <div class="bread-packing clearfix" style="">
          <div>
            <p><em>手机（含内置电池）X 1</em><em>华为SuperCharge充电器 X 1</em><em>Type-C 数据线 X 1</em><em>Type-C 数字耳机X 1</em><em>透明保护壳 X
            1</em><em>快速指南 X 1</em><em>取卡针 X 1</em><em>保修卡 X 1</em><em>（备注：最终以实物为准）</em>
            </p>
          </div>
        </div>
      </div>
      <!-- 售后 -->
      <div class="container clearfix">
        <h2 class="bread-p-title">售后服务</h2>
        <div class="bread-word-middle">
          <div>
            <p><span style="color: rgb(51,51,51);">本产品全国联保，享受三包服务，保修期：1年</span><br><span
                style="color: rgb(51,51,51);">如因质量问题或性能故障，凭华为客户服务中心出具的质量检测证明，享受7日内退货，15日内换货，15日以上在保修期内可享受免费维修等三包服务</span><br><span
                style="color: rgb(51,51,51);">华为消费者服务热线：950800</span><br><span
                style="color: rgb(51,51,51);">华为官方服务软件：服务App</span><br><span style="color: rgb(51,51,51);">华为消费者业务官网-服务与支持：
              </span>
            </p>
          </div>
        </div>
      </div>
    </div>
    <!-- 用户评价 -->
    <div class="bread-score"  id="bread-p-4">
      <div class="container">
        <div class="clearfix">
          <div class="bread-score-average">
            <p>99<em>%</em></p>
            <label>好评度</label>
          </div>
          <div class="bread-score-impress">
            <div class="bread-score-impress-info">
              <ul class="clearfix">
                <li><a href="javascript:;"><em>物流不错</em><span>6000+</span></a></li>
                <li><a href="javascript:;"><em>外观不错</em><span>4600+</span></a></li>
                <li><a href="javascript:;"><em>拍照不错</em><span>3400+</span></a></li>
                <li><a href="javascript:;"><em>手感好</em><span>3000+</span></a></li>
                <li><a href="javascript:;"><em>电池不错</em><span>1500+</span></a></li>
                <li><a href="javascript:;"><em>屏幕不错</em><span>970</span></a></li>
                <li><a href="javascript:;"><em>性价比高</em><span>761</span></a></li>
                <li><a href="javascript:;"><em>包装不错</em><span>428</span></a></li>
                <li><a href="javascript:;"><em>内存很好</em><span>375</span></a></li>
                <li><a href="javascript:;"><em>活动给力</em><span>338</span></a></li>
                <li><a href="javascript:;"><em>服务好</em><span>263</span></a></li>
                <li><a href="javascript:;"><em>信号不错</em><span>247</span></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- 用户评价内容 -->
    <div class="bread-comment">
      <div class="container clearfix">
        <div class="bread-comment-tab clearfix">
          <ul>
            <li class="current">最热门(3600+)</li>
            <li>有图(1万+)</li>
            <li>有视频(3)</li>
            <li>全部</li>
          </ul>
          <div class="bread-comment-sku">
            <input type="checkbox"><span>只看当前商品评价</span>
          </div>
        </div>
        <div class="bread-comment-content">
          <ul>
            <li class="clearfix">
              <div class="bread-comment-user">
                <p>
                  <img src="upload/_user_after.png" alt="">
                </p>
              </div>
              <div class="bread-user-comment">
                <div class="bread-user-comment-detial">
                  <div class="h clearfix" >
                    <div class="bread-star">
                      <span></span>
                    </div>
                    <div class="right bread-comment-time">
                      <span>2021-01-03 18:52:34</span>
                      <em>1</em>
                    </div>
                  </div>
                  <div class="bread-user-comment-word">自从用了华为手机就没用过其它手机了，用了几天，手机速度反应快，拍照清晰，</div>
                  <div class="user-comment-img">
                    <img src="/huawei-project/vmall/upload/comment1.jpg" alt="">
                    <img src="/huawei-project/vmall/upload/comment2.jpg" alt="">
                    <img src="/huawei-project/vmall/upload/comment3.jpg" alt="">
                  </div>
                  <div class="bread-user-comment-sku">冰霜银,5G全网通 8GB+256GB,官方标配</div>
                </div>
                <!-- 客服回复 -->
                <div class="bread-reply">
                  <div class="product-admin-reply clearfix">
                    <div class="admin-user-img">
                      <img src="/huawei-project/vmall/images/customer_service.png" alt="">
                    </div>
                    <dl>
                      <dt>华为商城客服</dt>
                      <dd>时光背后，隐藏着梦想，星空遥远，模糊了年少。曾见过的流星，来不及伸手，便已消逝。华为崛起，已经赶上，可以陪伴流星，撑起另一片天空。</dd>
                    </dl>
                  </div> 
                </div>
              </div>
            </li>
            <li class="clearfix">
              <div class="bread-comment-user">
                <p>
                  <img src="/huawei-project/vmall/upload/_user_after.png" alt="">
                </p>
              </div>
              <div class="bread-user-comment">
                <div class="bread-user-comment-detial">
                  <div class="h clearfix">
                    <div class="bread-star">
                      <span></span>
                    </div>
                    <div class="right bread-comment-time">
                      <span>2021-01-03 18:52:34</span>
                      <em>1</em>
                    </div>
                  </div>
                  <div class="bread-user-comment-word">自从用了华为手机就没用过其它手机了，用了几天，手机速度反应快，拍照清晰，</div>
                  <div class="user-comment-img">
                    <img src="/huawei-project/vmall/upload/comment1.jpg" alt="">
                    <img src="/huawei-project/vmall/upload/comment2.jpg" alt="">
                    <img src="/huawei-project/vmall/upload/comment3.jpg" alt="">
                  </div>
                  <div class="bread-user-comment-sku">冰霜银,5G全网通 8GB+256GB,官方标配</div>
                </div>
                <!-- 客服回复 -->
                <div class="bread-reply">
                  <div class="product-admin-reply clearfix">
                    <div class="admin-user-img">
                      <img src="images/customer_service.png" alt="">
                    </div>
                    <dl>
                      <dt>华为商城客服</dt>
                      <dd>时光背后，隐藏着梦想，星空遥远，模糊了年少。曾见过的流星，来不及伸手，便已消逝。华为崛起，已经赶上，可以陪伴流星，撑起另一片天空。</dd>
                    </dl>
                  </div>
                </div>
              </div>
            </li>
            <li class="clearfix">
              <div class="bread-comment-user">
                <p>
                  <img src="/huawei-project/vmall/upload/_user_after.png" alt="">
                </p>
              </div>
              <div class="bread-user-comment">
                <div class="bread-user-comment-detial">
                  <div class="h clearfix">
                    <div class="bread-star">
                      <span></span>
                    </div>
                    <div class="right bread-comment-time">
                      <span>2021-01-03 18:52:34</span>
                      <em>1</em>
                    </div>
                  </div>
                  <div class="bread-user-comment-word">自从用了华为手机就没用过其它手机了，用了几天，手机速度反应快，拍照清晰，</div>
                  <div class="user-comment-img">
                    <img src="/huawei-project/vmall/upload/comment1.jpg" alt="">
                    <img src="/huawei-project/vmall/upload/comment2.jpg" alt="">
                    <img src="/huawei-project/vmall/upload/comment3.jpg" alt="">
                  </div>
                  <div class="bread-user-comment-sku">冰霜银,5G全网通 8GB+256GB,官方标配</div>
                </div>
                <!-- 客服回复 -->
                <div class="bread-reply">
                  <div class="product-admin-reply clearfix">
                    <div class="admin-user-img">
                      <img src="/huawei-project/vmall/images/customer_service.png" alt="">
                    </div>
                    <dl>
                      <dt>华为商城客服</dt>
                      <dd>时光背后，隐藏着梦想，星空遥远，模糊了年少。曾见过的流星，来不及伸手，便已消逝。华为崛起，已经赶上，可以陪伴流星，撑起另一片天空。</dd>
                    </dl>
                  </div>
                </div>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- 确认加入购物车 -->
    <div class="buy-mask">
      <div class="buy-box">
        <p>HUAWEI P40 Pro 5G 全网通 8GB+256GB（亮黑色）成功加入购物车!</p>
        <div class="buy-btn">
          <a href="javascript:;" class="box-cancel">再逛逛</a>
          <a href="javascript:;" class="box-ok">去结算</a>
        </div>
      </div>
    </div>
  </main>
  <footer></footer>
  <div class="float-main"></div>
</body>
</html>
<script src="js/jQuery.js"></script>
<script src="js/jquery.cookie-1.4.1.min.js"></script>
<script src="js/common1.js"></script>
