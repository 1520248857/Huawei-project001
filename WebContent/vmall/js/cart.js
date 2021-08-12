$(function () {
  // 加载头部
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
  // 加载尾部
  $("footer").load("../vmall/pages/footer.html");
  // 加载工具栏
  $(".float-main").load("../vmall/pages/tool.html");
  

  // 单选
  let totalPrice = 0;
  let totalNum = 0;
  
  $(".sc-pro-list .checkbox").click(function(){
    let singPrice = 0;
    let singNum = 0;
    singPrice = $(this).next().find(".sc-pro-main").find("ul").find("li").find(".p-price").find("span").text() * $(this).next().find(".sc-pro-main").find("ul").find("li").find(".p-stock").find(".p-stock-area").find("input").val();
    singNum = Number($(this).next().find(".sc-pro-main").find("ul").find("li").find(".p-stock").find(".p-stock-area").find("input").val());
    if ($(this).find("input").hasClass("checked")){
      $(this).find("input").removeClass("checked");
      totalNum -= singNum;
      totalPrice -= singPrice;
      $(".sc-pro-title .checkbox input").removeClass("checked");
      $(".sc-total-control .checkbox input").removeClass("checked");
    }else{
      $(this).find("input").addClass("checked");
      // 这是单价:$(this).next().find(".sc-pro-main").find("ul").find("li").find(".p-price").find("span").text()
      // 这是数量:$(this).next().find(".sc-pro-main").find("ul").find("li").find(".p-stock").find(".p-stock-area").find("input").val()
      
      totalPrice += singPrice;
      totalNum += singNum; 

      function isAllChecked(){
        for (let i = 0; i < $(".sc-pro-list").length; i++)
     
          if ($(".sc-pro-list").eq(i).find(".checkbox").find("input").hasClass("checked") == false) {
            return false;
          }

        return true;
      }
      if(isAllChecked()){
        $(".sc-pro-title .checkbox input").addClass("checked");
        $(".sc-total-control .checkbox input").addClass("checked");
      }
    }
    $(".sc-total-price p span").text(totalPrice);
    $(".sc-total-price .total-choose em").text(totalNum);
  });

  // 全选
  function fun1() {
    if (!$(this).find("input").hasClass("checked")) {
      $(".sc-pro-title .checkbox").find("input").addClass("checked");
      $(".sc-total-tool .checkbox input").addClass("checked");
      totalNum = 0;
      totalPrice = 0;
      $(".sc-pro-list").each(function (i, val) {
        $(val).find(".checkbox").find("input").addClass("checked");
        // 这是单价:$(val).find(".sc-pro-area").find(".sc-pro-main").find("ul").find("li").find(".p-price").find("span").text()
        // 这是数量:$(val).find(".sc-pro-area").find(".sc-pro-main").find("ul").find("li").find(".p-stock").find(".p-stock-area").find("input").val()
        totalNum += Number($(val).find(".sc-pro-area").find(".sc-pro-main").find("ul").find("li").find(".p-stock").find(".p-stock-area").find("input").val());
        totalPrice += $(val).find(".sc-pro-area").find(".sc-pro-main").find("ul").find("li").find(".p-stock").find(".p-stock-area").find("input").val() * $(val).find(".sc-pro-area").find(".sc-pro-main").find("ul").find("li").find(".p-price").find("span").text();
      });
    } else {
      $(".sc-total-tool .checkbox input").removeClass("checked");
      $(".sc-pro-title .checkbox").find("input").removeClass("checked");
      $(".sc-pro-list").each(function (i, val) {
        $(val).find(".checkbox").find("input").removeClass("checked");
      });
      totalNum = 0;
      totalPrice = 0;
    }
    $(".sc-total-price p span").text(totalPrice);
    $(".sc-total-price .total-choose em").text(totalNum);
  }
  $(".sc-pro-title .checkbox").click(fun1);
  $(".sc-total-control .checkbox").click(fun1);

  // 增加减少数量
  $(".p-stock-btn a:first-child").click(function(){
    // 这是数量: $(this).parent().parent().find("input").val()
    // 这是单价:$(this).parents("ul").find("li").find(".p-price").find("span").text()
    let singleNum = 0;
    let singlePrice = 0;
    
    singleNum = Number($(this).parent().parent().find("input").val());
    singleNum--;
    if (singleNum < 1){
      singleNum = 1;
      return "";
    }
    singlePrice = $(this).parents("ul").find("li").find(".p-price").find("span").text();
    $(this).parent().parent().find("input").val(singleNum);
    if ($(this).parents(".sc-pro-list").find(".checkbox").find("input").hasClass("checked")){
      totalNum --;
      $(".sc-total-price .total-choose em").text(totalNum);
      totalPrice -= singlePrice;
      $(".sc-total-price p span").text(totalPrice);
    }
  });
  $(".p-stock-btn a:last-child").click(function () {
    // 这是数量: $(this).parent().parent().find("input").val()
    let singleNum = 0;
    let singlePrice = 0;
    singleNum = Number($(this).parent().parent().find("input").val());
    singleNum++;
    $(this).parent().parent().find("input").val(singleNum);
    singlePrice = Number($(this).parents("ul").find("li").find(".p-price").find("span").text());
    if ($(this).parents(".sc-pro-list").find(".checkbox").find("input").hasClass("checked")) {
      totalNum ++;
      $(".sc-total-price .total-choose em").text(totalNum);
      totalPrice += singlePrice;
      $(".sc-total-price p span").text(totalPrice);
    }
  });

  // 单个删除
  $(".p-del").click(function(){
    // 这是单价:
	// $(this).parent().parent().find("li").find(".p-price").find("span").text()
    // 这是数量:$(this).parent().parent().find("li").find(".p-stock").find(".p-stock-area").find("input").val()
    totalPrice -= $(this).parent().parent().find("li").find(".p-price").find("span").text() * $(this).parent().parent().find("li").find(".p-stock").find(".p-stock-area").find("input").val();
    totalNum -= $(this).parent().parent().find("li").find(".p-stock").find(".p-stock-area").find("input").val();
    $(".sc-total-price p span").text(totalPrice);
    $(".sc-total-price .total-choose em").text(totalNum);
    $(this).parent().parent().parent().parent().parent().remove();
  });
  
  // 多个删除
  $(".sc-total-control a").click(function(){
    $(".sc-pro-list").each(function(i,val){
      if ($(val).find(".checkbox").find("input").hasClass("checked")){
        // 这是单价:$(val).find(".sc-pro-area").find(".sc-pro-main").find("ul").find("li").find(".p-price").find("span").text()
        // 这是数量:$(val).find(".sc-pro-area").find(".sc-pro-main").find("ul").find("li").find(".p-stock").find(".p-stock-area").find("input").val()
        totalPrice -= $(val).find(".sc-pro-area").find(".sc-pro-main").find("ul").find("li").find(".p-price").find("span").text() * $(val).find(".sc-pro-area").find(".sc-pro-main").find("ul").find("li").find(".p-stock").find(".p-stock-area").find("input").val();
        totalNum -= $(val).find(".sc-pro-area").find(".sc-pro-main").find("ul").find("li").find(".p-stock").find(".p-stock-area").find("input").val();
        $(".sc-total-price p span").text(totalPrice);
        $(".sc-total-price .total-choose em").text(totalNum);
        $(this).remove();
      }
    });
  });








  

});