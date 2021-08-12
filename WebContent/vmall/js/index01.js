import  './library/jquery.js';
import  './library/jquery.lazyload.min.js';
import {baseUrl} from './library/config.js';

$(function() {
    $("img.lazy").lazyload({effect: "fadeIn"});
});


//轮播图
var mySwiper = new Swiper('.swiper-container', {
    autoplay: true,//可选选项，自动滑动
    grabCursor : true,//鼠标形状
    // direction: 'vertical',
    loop: true, // 循环模式选项
    speed:300,
    autoplay : {
        delay:3000
    },
     
    // 如果需要分页器
    pagination: {
        el: '.swiper-pagination',
      },
      
      // 如果需要前进后退按钮
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },

 

  
})

//如果你初始化时没有定义Swiper实例，后面也可以通过Swiper的HTML元素来获取该实例
new Swiper('.swiper-container')
var mySwiper = document.querySelector('.swiper-container').swiper
mySwiper.slideNext();


// 首页数据渲染  
//渲染的时候，把a标签的路径连接到商品页面并加上id
(function(){
    $.ajax({
        type: "get",
        url: `${baseUrl}/product/getProducts`,

        dataType: "json",
        success: function (res) {       //收到的数据库结果 是数组
           let datali = '';
            //遍历结果数组，使用里面的对象
            res.forEach((elm,i) => {
                let picture = JSON.parse(elm.picture);//picture是一个json字符串 
                console.log(picture);

                datali+=`<li><a href="../html/product.html?id=${elm.id}"><img class="lazy" data-original="${picture[0].src}" alt=""></a></li>`
            });
            // 拼接好的li元素，添加到ul中
            $('#dataul').append(datali);
        }
    });
})()