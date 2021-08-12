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
});

//获取url参数
$(function(){
  function getUrlParam(name) {
    var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
    var r = window.location.search.substr(1).match(reg);  //匹配目标参数
    if (r != null) return unescape(r[2]); return null; //返回参数值
  }
  $.ajax({
    type: "get",
    data: "id=" + getUrlParam("id"),
    url: "php/getdata1.php",
    success: function (msg) {
      let arrAll = msg.split("&");
      let arrName = arrAll[0].split(";");
      let arrImg = arrAll[1].split(";");
      let arrColor = arrAll[2].split(";");
      let arrStorage = arrAll[3].split(";");
      let arrPrice = arrAll[4].split(";");

      $("#bread-series").text(arrName[0]);
      $("#bread-name").text(arrName[1]);
      $("#bread-title-type").text(arrName[2] + " " + arrStorage[0]);
      $("#bread-title-color").text(arrColor[0]);
      $("#bread-meta-name").text(arrName[1]);
      $("#bread-meta-type").text(arrName[2] + " " + arrStorage[0]);
      $("#bread-meta-color").text(arrColor[0]);
      $("#bread-price").text(arrPrice[0]);
   
      
      $(".bread-gallery-smallBox").css("backgroundImage",`url(${arrImg[0]})`);
      $(".bread-gallery-thumb ul li").each(function(i,ele){
        $(ele).find("img").attr("src",arrImg[i]);
      });

      
      $.each(arrColor,function(i,val){
        if(val!=""){
          $("#bread-choose-color ul").append(`<li><a href="javascript:;"><img src="upload/p40pro5g40_40.png" alt="">${val}</a></li>`);
        }
      });
      $("#bread-choose-color ul li").eq(0).addClass("bread-choose-selected");
      $("#bread-select-sku-color").text(arrColor[0]);
      $("#bread-select-sku-type").text(arrName[2] + " " + arrStorage[0]);
      $.each(arrStorage,function(i,val){
        if(val!=""){
          $("#bread-choose-type ul").append(`<li><a href="javascript:;">${arrName[2]} ${val}</a></li>`);
        }
      });
      $("#bread-choose-type ul li").eq(0).addClass("bread-choose-selected");
      // 商品种类选中
      $(function () {
        $(".bread-gallery-thumb li").mouseover(function () {
          $(this).addClass("bread-gallery-thumb-current").siblings().removeClass("bread-gallery-thumb-current");
          $(".bread-gallery-smallBox").css("backgroundImage", "url(" + $(this).find("img").attr("src") + ")");
          $(".bread-gallery-bigBox").css("backgroundImage", "url(" + $(this).find("img").attr("src") + ")");
        });
        $(".bread-gallery-prev").click(function () {
          if ($(".bread-gallery-thumb ul").css("left") == "-148px") {
            $(".bread-gallery-thumb ul").css("left", "-74px");
          } else {
            $(".bread-gallery-thumb ul").css("left", "0px");
          }
        });
        $(".bread-gallery-next").click(function () {
          if ($(".bread-gallery-thumb ul").css("left") == "0px") {
            $(".bread-gallery-thumb ul").css("left", "-74px");
          } else {
            $(".bread-gallery-thumb ul").css("left", "-148px");
          }
        });
      });
      //手机颜色选中
      $(function () {
        $(".bread-choose li").click(function () {
          $(this).addClass("bread-choose-selected").siblings().removeClass("bread-choose-selected");
        });
        $(".bread-service-item-detail div").click(function () {
          if ($(this).children("input:checkbox").is(":checked")) {
            $(this).children("input:checkbox").prop("checked", false);
            $(this).parent().parent().removeClass("bread-service-item-selected");
          } else {
            $(this).children("input:checkbox").prop("checked", true);
            $(this).parent().parent().addClass("bread-service-item-selected");
          }
        });
        $(".bread-service-item").hover(function () {
          $(this).find(".bread-service-item-detail").show();
        }, function () {
          $(this).find(".bread-service-item-detail").hide();
        });
      });
      //查看全部参数
      $(function () {
        $(".bread-paramter-shade p a").click(function () {
          $(this).parent().parent().hide();
        });
      });
      //判断商品页参数标题栏的自动选择
      $(function () {
        if ($("#bread-t-1")[0]) {
          $(window).scroll(function () {
            let arrEle = [$("#bread-p-1")[0], $("#bread-p-2")[0], $("#bread-p-3")[0], $("#bread-p-4")[0]];
            $.each(arrEle, function (index, value) {
              if ($(window).scrollTop() > $(value).offset().top - 121) {
                $(".bread-tab a").eq(index).addClass("selected").siblings().removeClass("selected");
              }
            });
          });
          $(".bread-tab a").click(function () {
            let arrEle = [$("#bread-p-1")[0], $("#bread-p-2")[0], $("#bread-p-3")[0], $("#bread-p-4")[0]];
            $(window).scrollTop($(arrEle[$(this).index()]).offset().top - 120);
          });
        }
      });
      //判断选中版本
      $(function () {
        $("#bread-choose-color ul li").click(function () {
          let _color = $(this).find("a").text();
          $("#bread-title-color").text(_color);
          $("#bread-meta-color").text(_color);
          $("#bread-select-sku-color").text(_color);
        });
        $("#bread-choose-type ul li").click(function () {
          let _type = $(this).find("a").text();
          $("#bread-meta-type").text(_type);
          $("#bread-title-type").text(_type);
          $("#bread-select-sku-type").text(_type);
          let arrStorage = _type.split(" ");
          // 修改价格
          $("#bread-price").text(arrPrice[$(this).index()]);
          
          // $.getJSON("../vmall/phone.json", function (msg) {
          //   $.each(msg, function (i, val) {
          //     if ($("#bread-meta-name").text() == val["name"]) {
          //       $.each(val["storage"], function (j, value) {
          //         if (arrStorage[1] == value) {
          //           // console.log(val["price"][j]);
          //           $("#bread-price").text(val["price"][j]);
          //         }
          //       });
          //     }
          //   });
          // });
        });
      });

      //加入购物车
      $(function () {
        $(".bread-button-01").click(function () {
          if ($.cookie("userName")) {
            $(".buy-mask").show();
            $(".minicart-empty").hide();
            // sessionStorage.setItem("bread-name", $("#bread-name").text());
            // sessionStorage.setItem("bread-price", $("#bread-price").text());
            // sessionStorage.setItem("bread-num", $("#bread-num").val());
            // sessionStorage.setItem("bread-img", $("#bread-img img").attr("src"));
            let pcolorid = 0;
            $("#bread-choose-color ul li").each(function(i,ele){
              if ($(ele).hasClass("bread-choose-selected")){
                pcolorid = i+1;
              }
            });
            let pstorageid = 0;
            $("#bread-choose-type ul li").each(function(i,ele){
              if ($(ele).hasClass("bread-choose-selected")){
                pstorageid = i+1;
              }
            });
            
            $.ajax({
              type:"post",
              url:"php/addcart.php",
              data: "userid=" + $.cookie("userid") + "&phoneid=" + getUrlParam("id") + "&pcolorid=" + pcolorid + "&pstorageid=" + pstorageid + "&ppriceid=" + pstorageid + "&pimgid=1" + "&pnumid=" + $(".bread-intoCart-nochange input").val(),
              success:function(msg){
                console.log(msg);
              }
            });
            $(".minicart-list").show();
            $(".minicart-good-list").append(`
            <li class="clearfix">
              <div class="pro-info clearfix">
                <div class="pro-choose">
                  <i></i>
                </div>
                <div class="pro-img"><img src="${$("#bread-img img").attr("src")}" alt=""></div>
                <div class="pro-name">${$("#bread-name").text()}</div>
                <div class="pro-desc"></div>
                <div class="pro-status">
                  <div class="pro-price">¥<b>${$("#bread-price").text()}</b> X<strong>${$("#bread-num").val()}</strong></div>
                </div>
              </div>
            </li>`);
            let totalPrice = 0;
            let totalNum = 0;
            $(".minicart-good-list li").each(function (i, val) {
              totalPrice += $(this).find(".pro-price").find("b").text() * $(this).find(".pro-price").find("strong").text();
              totalNum += Number($(this).find(".pro-price").find("strong").text());
            });
            $("#minicart-total-price em").text(totalPrice);
            $("#cart-total-num").text(totalNum);
            $(".box-cancel").click(function () {
              $(".buy-mask").hide();
            });
          } else {
            location.href = "../vmall/pages/login.html";
          }
        });
      });
    }
  });
});
//立即下单
$(function(){
  $(".bread-button-02").click(function(){
    if($.cookie("userName")){
      location.href = "order.html";
    }else{
      location.href = "pages/login.html";
    }
  })
});

//导航栏选中
$(function () {
  $(".nav-class").mouseover(function () {
    $(".nav-class .nav-main").show();
  }).mouseout(function () {
    $(".nav-class .nav-main").hide();
  });
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

// 放大镜
class Manigfy {
  constructor(smallBox, bigBox, mask) {
    this.smallBox = smallBox;
    this.bigBox = bigBox;
    this.mask = mask;
  }
  onmouseover() {
    let that = this;
    this.smallBox.onmouseover = function () {
      that.mask.style.display = "block";
      that.bigBox.style.display = "block";

    };
  }
  onmouseout() {
    let that = this;
    this.smallBox.onmouseout = function () {
      that.mask.style.display = "none";
      that.bigBox.style.display = "none";

    };
  }
  // 这里要找到元素距body的位置才可以应用
  getTop(ele) {//判断是否有父级元素
    let t = ele.offsetTop;
    while (ele.offsetParent) {
      ele = ele.offsetParent;
      t += ele.offsetTop;//把所有父级元素的高度相加
    }
    return t;
  }
  getLeft(ele) {//判断是否有父级元素
    let t = ele.offsetLeft;
    while (ele.offsetParent) {
      ele = ele.offsetParent;
      t += ele.offsetLeft;//把所有父级元素的高度相加
    }
    return t;
  }
  onmousemove() {
    let that = this;
    this.smallBox.onmousemove = function (ev) {
      let e = ev || event;
      //这里是减掉小盒子距body的位置
      let l = e.pageX - that.getLeft(that.smallBox) - that.mask.offsetWidth / 2;
      if (l < 0) {
        l = 0;
      }
      if (l > that.smallBox.offsetWidth - that.mask.offsetWidth) {
        l = that.smallBox.offsetWidth - that.mask.offsetWidth;
      }
      that.mask.style.left = l + "px";

      let t = e.pageY - that.getTop(that.smallBox) - that.mask.offsetHeight / 2;
      if (t < 0) {
        t = 0;
      }
      if (t > that.smallBox.offsetHeight - that.mask.offsetHeight) {
        t = that.smallBox.offsetHeight - that.mask.offsetHeight;
      }
      that.mask.style.top = t + "px";

      //小图片：大图片 = 小窗口 ：大窗口
      //that.mask.offsetWidth : that.bigBox.offsetWidth = that.mask.offsetLeft : x
      let x = that.bigBox.offsetWidth * that.mask.offsetLeft / that.mask.offsetWidth;
      let y = that.bigBox.offsetHeight * that.mask.offsetTop / that.mask.offsetHeight;
      that.bigBox.style.backgroundPositionX = -x + "px";
      that.bigBox.style.backgroundPositionY = -y + "px";
    };
  }
  evenBind() {
    this.onmouseover();
    this.onmouseout();
    this.onmousemove();
  }
}
let m = new Manigfy($(".bread-gallery-smallBox")[0], $(".bread-gallery-bigBox")[0], $(".bread-gallery-mask")[0]);
m.evenBind();


//增加数量
$(function(){
  let num = 1;
  $("#bread-add").click(function () {
    num++;
    $("#bread-num").val(num);
  });
  $("#bread-min").click(function () {
    num--;
    if(num < 1){
      num = 1;
    }
    $("#bread-num").val(num);
  });
});


