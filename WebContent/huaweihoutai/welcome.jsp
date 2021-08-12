<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>欢迎来到华为商城管理页面</title>
        <meta name="renderer" content="webkit">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        
        <link rel="stylesheet" href="/huawei-project/huaweihoutai/css/font.css">
        <link rel="stylesheet" href="/huawei-project/huaweihoutai/css/xadmin.css">
        <script src="/huawei-project/huaweihoutai/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="/huawei-project/huaweihoutai/js/xadmin.js"></script>
       
        <link rel="stylesheet" href="/huawei-project/huaweihoutai/css/index.css">
        <link rel="stylesheet" href="/huawei-project/huaweihoutai/css/iconfont.css">
        <script type="text/javascript" src="/huawei-project/huaweihoutai/js/index.js"></script>
        <script src="/huawei-project/huaweihoutai/js/jquery.js"></script>
        <script src="/huawei-project/huaweihoutai/js/jquery.min.js"></script>
        <script src="/huawei-project/huaweihoutai/js/survey.js"></script>
        
        <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
        <!--[if lt IE 9]>
          <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
          <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    </head>
    <body>
        <div class="layui-fluid">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-body ">
                            <blockquote class="layui-elem-quote">欢迎管理员：
                                <span class="x-red">${managerName}</span>
                                 <span id="time"></span>
                            </blockquote>
                        </div>
                    </div>
                </div>
              <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-header">数据统计</div>
                        <div class="layui-card-body ">
                            <ul class="layui-row layui-col-space10 layui-this x-admin-carousel x-admin-backlog">
                                <li class="layui-col-md2 layui-col-xs6">
                                    <a href="javascript:;" class="x-admin-backlog-body">
                                        <h3>商品数量</h3>
                                        <p>
                                            <cite>425</cite></p>
                                    </a>
                                </li>
                                <li class="layui-col-md2 layui-col-xs6">
                                    <a href="javascript:;" class="x-admin-backlog-body">
                                        <h3>会员数</h3>
                                        <p>
                                            <cite>320</cite></p>
                                    </a>
                                </li>
                                <li class="layui-col-md2 layui-col-xs6">
                                    <a href="javascript:;" class="x-admin-backlog-body">
                                        <h3>消息</h3>
                                        <p>
                                            <cite>99</cite></p>
                                    </a>
                                </li>
                                <li class="layui-col-md2 layui-col-xs6">
                                    <a href="javascript:;" class="x-admin-backlog-body">
                                        <h3>公告</h3>
                                        <p>
                                            <cite>125</cite></p>
                                    </a>
                                </li>
                                <li class="layui-col-md2 layui-col-xs6">
                                    <a href="javascript:;" class="x-admin-backlog-body">
                                        <h3>邮件</h3>
                                        <p>
                                            <cite>110</cite></p>
                                    </a>
                                </li>
                                <li class="layui-col-md2 layui-col-xs6 ">
                                    <a href="javascript:;" class="x-admin-backlog-body">
                                        <h3>其它链接</h3>
                                        <p>
                                            <cite>163</cite></p>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                
               <div class="layui-col-sm6 layui-col-md4">
                    <div class="layui-card">
                        <div class="layui-card-header">商品信息统计

                        </div>
                        <div class="layui-card-body  ">

                            <table class="layui-table">
                                <thead>
                                <tr class="text-c">
                                    <th>统计</th>
                                    <th>资讯库</th>
                                    <th>图片库</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr class="text-c">
                                    <td>总数</td>
                                    <td>92</td>
                                    <td>9</td>
                                </tr>
                                <tr class="text-c">
                                    <td>今日</td>
                                    <td>0</td>
                                    <td>0</td>
                                </tr>
                                <tr class="text-c">
                                    <td>昨日</td>
                                    <td>0</td>
                                    <td>0</td>
                                </tr>
                                <tr class="text-c">
                                    <td>本周</td>
                                    <td>2</td>
                                    <td>0</td>
                                </tr>
                                <tr class="text-c">
                                    <td>本月</td>
                                    <td>2</td>
                                    <td>0</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            <div class="layui-col-sm6 layui-col-md3">
                      <div class="layui-card">
                        <div class="layui-card-header">商品统计
                        </div>
                        <div class="layui-card-body ">

                            <div id="chart2" style="width: 100%;height: 245px;"></div>
                        </div>
                    </div>
                </div> 
                <div class="layui-col-sm6 layui-col-md3">
                    <div class="layui-card">
                        <div class="layui-card-header">数据月统计

                        </div>
                        <div class="layui-card-body ">

                            <div id="chart4" style="width: 100%;height: 245px;"></div>
                        </div>
                    </div>
                </div>

                <div class="layui-col-sm6 layui-col-md2">
                    <div class="layui-card">
                        <div class="layui-card-header">最新消息

                        </div>
                        <div class="layui-card-body ">

                            <div class="news_style">

                                <div class="myscroll" id="FontScroll">
                                    <ul class="list">
                                        <li><i class="iconfont">&#xe622;</i><a href="#">1.华为公开自动驾驶相关专利，可优化自动驾驶规控算法</a></li>
                                        <li><i class="iconfont">&#xe622;</i><a href="#">2.关于华为P50系列：一个好消息，一个坏消息</a></li>
                                        <li><i class="iconfont">&#xe622;</i><a href="#">3.华为任正非果然有远见！中国院士公开发声，事关光子芯片</a></li>
                                        <li><i class="iconfont">&#xe622;</i><a href="#">4.坐拥”两大热点，华为相关大牛股大涨近150％，监管部门火速下发关注函</a></li>

                                    </ul>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>

                 <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-header">系统信息</div>
                        <div class="layui-card-body ">

                            <table class="layui-table">
                                <thead>
                                <tr>
                                    <th colspan="4" scope="col">服务器信息</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th>服务器计算机名</th>
                                    <td><span id="lbServerName">http://127.0.0.1/</span></td>

                                </tr>
                                <tr>
                                    <td>服务器IP地址</td>
                                    <td>192.168.1.1</td>
                                </tr>
                                <tr>
                                    <td>服务器域名</td>
                                    <td>www.xxx.net</td>

                                </tr>
                                <tr>
                                    <td>服务器端口 </td>
                                    <td>80</td>
                                </tr>
                                <tr>
                                    <td>服务器IIS版本 </td>
                                    <td>Microsoft-IIS/6.0</td>

                                </tr>
                                <tr>
                                    <td>本文件所在文件夹 </td>
                                    <td>D:\WebSite\</td>
                                </tr>
                                <tr>
                                    <td>服务器操作系统 </td>
                                    <td>Microsoft Windows NT 5.2.3790 Service Pack 2</td>

                                </tr>
                                <tr>
                                    <td>系统所在文件夹 </td>
                                    <td>C:\WINDOWS\system32</td>
                                </tr>
                                <tr>
                                    <td>服务器脚本超时时间 </td>
                                    <td>30000秒</td>

                                </tr>
                                <tr>
                                    <td>服务器的语言种类 </td>
                                    <td>Chinese (People's Republic of China)</td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
       
              
                <div class="layui-col-md12">
                    
            </div>
        </div>
        
    </body>
     <script src="/huawei-project/huaweihoutai/js/echarts.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('.myscroll').myScroll({
                speed: 60, //数值越大，速度越慢
                rowHeight: 38 //li的高度
            });

        });

        layui.use('layer', function(){
            var layer = layui.layer;
            var remember = '欢迎来到华为商城后台管理系统';
             $(document).ready(function(){
                layer.prompt({
                    formType: 2,
                    anim: 3,
                    offset: 'rb',
                    value: "",
                    title: '便签',
                    skin: 'demo-class',
                    area: ['280px', '150px'],
                    id: 'remember' ,//设定一个id，防止重复弹出
                    btn: ['确定', '取消'],
                    shade: 0,
                    moveType: 1, //拖拽模式，0或者1
                    btn2: function(index, layero){
                        $.ajax({
                            url:"delremember.html"
                            ,type:"post"
                            ,success:function(res) {
                                layer.msg(res.msg);
                                if(res.code == 1) {
                                    $('#remember textarea').val('');
                                }
                            }
                        })
                        return false;
                    }
                } ,function(value, index, elem){
                    $.ajax({
                        url:"/admin/main/remember.shtml"
                        ,type:"post"
                        ,data:{message:value}
                        ,success:function(res) {
                            layer.msg(res.msg);
                        }
                    })
                })
            });
        });

        function getTime(){
            var myDate = new Date();
            var myYear = myDate.getFullYear(); //获取完整的年份(4位,1970-????)
            var myMonth = myDate.getMonth()+1; //获取当前月份(0-11,0代表1月)
            var myToday = myDate.getDate(); //获取当前日(1-31)
            var myDay = myDate.getDay(); //获取当前星期X(0-6,0代表星期天)
            var myHour = myDate.getHours(); //获取当前小时数(0-23)
            var myMinute = myDate.getMinutes(); //获取当前分钟数(0-59)
            var mySecond = myDate.getSeconds(); //获取当前秒数(0-59)
            var week = ['星期日','星期一','星期二','星期三','星期四','星期五','星期六'];
            var nowTime;

            nowTime = myYear+'-'+fillZero(myMonth)+'-'+fillZero(myToday)+'&nbsp;&nbsp;'+fillZero(myHour)+':'+fillZero(myMinute)+':'+fillZero(mySecond)+'&nbsp;&nbsp;'+week[myDay]+'&nbsp;&nbsp;';
            //console.log(nowTime);
            $('#time').html(nowTime);
        };
        function fillZero(str){
            var realNum;
            if(str<10){
                realNum	= '0'+str;
            }else{
                realNum	= str;
            }
            return realNum;
        }
        setInterval(getTime,1000);
    </script>
    <script src="/huawei-project/huaweihoutai/js/fontscroll.js"></script>
    
</html>