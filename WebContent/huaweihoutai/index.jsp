
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>后台登录华为管理系统</title>
        <meta name="renderer" content="webkit|ie-comp|ie-stand">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <meta http-equiv="Cache-Contro1l" content="no-siteapp" />
        <link rel="stylesheet" href="/huawei-project/huaweihoutai/css/font.css">
        <link rel="stylesheet" href="/huawei-project/huaweihoutai/css/xadmin.css">
        <script src="/huawei-project/huaweihoutai/lib/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="/huawei-project/huaweihoutai/js/xadmin.js"></script>
      
        <script>
        
            // 是否开启刷新记忆tab功能
             //var is_remember = false;
        </script>
    </head>
    <body class="index">
    
        <!-- 顶部开始 -->
        
        <div class="container">
            <div class="logo">
                <a href="/huawei-project/huaweihoutai/index.jsp">华为商城管理系统</a></div>
            <div class="left_open">
                <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
            </div>
            <ul class="layui-nav left fast-add" lay-filter="">
                <li class="layui-nav-item">
                   
                </li>
            </ul>
            <ul class="layui-nav right" lay-filter="">
                <li class="layui-nav-item">
                    <a href="javascript:;">${managerName}</a>
                    <dl class="layui-nav-child">
                        <!-- 二级菜单 -->
                        <dd>
                            <a onclick="xadmin.open('个人信息','NewFile2.jsp')">个人信息</a></dd>
                        <dd>
                            <a onclick="xadmin.open('切换帐号','login.jsp')">切换帐号</a></dd>
                        <dd>
                            <a href="/huawei-project/huaweihoutai/login.jsp">退出</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item to-index">
                    <a href="../vmall/index.jsp">前台首页</a></li>
            </ul>
        </div>
        <!-- 顶部结束 -->
        <!-- 中部开始 -->
        <!-- 左侧菜单开始 -->
        <div class="left-nav">
            <div id="side-nav">
                <ul id="nav">
                    <li>
                        <a href="javascript:; ">
                            <i class="iconfont left-nav-li" lay-tips="商品管理">&#xe698;</i>
                            <cite>商品管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('商品列表','NewFile.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>商品列表</cite></a>
                            </li>
                         
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="用户管理">&#xe6b8;</i>
                            <cite>用户管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                        	  <li>
                                <a onclick="xadmin.add_tab('用员列表','NewFile3.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>用员列表</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('统计页面','welcome1.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>统计页面</cite></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="订单管理">&#xe723;</i>
                            <cite>订单管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('订单列表','NewFile1.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>订单列表</cite></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="管理员管理">&#xe726;</i>
                            <cite>管理员管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('管理员列表','NewFile2.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>管理员列表</cite></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="数据统计">&#xe6ce;</i>
                            <cite>数据统计</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('拆线图','echarts1.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>拆线图</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('k线图','echarts6.jsp')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>k线图</cite></a>
                            </li>
                           
                        </ul>
                    </li>
       
                </ul>
            </div>
        </div>
        <!-- <div class="x-slide_left"></div> -->
        <!-- 左侧菜单结束 -->
        <!-- 右侧主体开始 -->
        <div class="page-content">
            <div class="layui-tab tab" lay-filter="xbs_tab" lay-allowclose="false">
                <ul class="layui-tab-title">
                    <li class="home">
                        <i class="layui-icon">&#xe68e;</i>我的桌面</li></ul>
                <div class="layui-unselect layui-form-select layui-form-selected" id="tab_right">
                    <dl>
                        <dd data-type="this">关闭当前</dd>
                        <dd data-type="other">关闭其它</dd>
                        <dd data-type="all">关闭全部</dd></dl>
                        
                </div>
                <div class="layui-tab-content">
                    <div class="layui-tab-item layui-show">
                        <iframe src='/huawei-project/huaweihoutai/welcome.jsp' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
                    </div>
                </div>
                <div id="tab_show"></div>
            </div>
        </div>
        <div class="page-content-bg"></div>
        <style id="theme_style"></style>
        <!-- 右侧主体结束 -->
        <!-- 中部结束 -->
        <script>//百度统计可去掉
            var _hmt = _hmt || []; (function() {
                var hm = document.createElement("script");
                hm.src = "https://hm.baidu.com/hm.js?b393d153aeb26b46e9431fabaf0f6190";
                var s = document.getElementsByTagName("script")[0];
                s.parentNode.insertBefore(hm, s);
            })();</script>
    </body>

</html>