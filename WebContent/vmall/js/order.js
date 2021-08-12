$(function(){
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

  //添加地址
  $(".address-empty-li a").click(function(){
    $(".addAddress-box").show();
    $(".box-cancel").click(function(){
      $(".addAddress-box").hide();
    });
    $(".box-ok").click(function(){
      if ($(".s-574-name").val() && $(".s-229").val() && $(".s-574-address").val()){
        $(".address-main p b").text($(".s-574-name").val());
        $(".address-main p span").text($(".s-229").val());
        $(".address-detail").text($(".s-574-address").val());
        $(".address-empty-li").hide();
        $(".my-address").show();
        $(".report-errors").hide();
        $(".order-submit-address").show();
        $(".order-submit-address span").text($(".s-574-address").val());
        $(".addAddress-box").hide();
      }else{
        alert("数据未填写完整！");
      }
    });
  });
  $(".address-edit").click(function(){
    $(".addAddress-box").show();
  });
  $(".address-del").click(function(){
    $(".address-empty-li").show();
    $(".my-address").hide();
    $(".report-errors").show();
    $(".order-submit-address").hide();
  });

  $(".order-submit-btn").click(function(){
    location.href = "pay.html";
  });





});
