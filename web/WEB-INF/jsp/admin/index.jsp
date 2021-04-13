<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html class="x-admin-sm">
    <head>
        <meta charset="UTF-8">
        <title>后台登录</title>
        <meta name="renderer" content="webkit|ie-comp|ie-stand">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
        <meta http-equiv="Cache-Control" content="no-siteapp" />
       	<link rel="stylesheet" href="static/layui/css/layui.css">
		<link rel="stylesheet" href="static/css/font.css">
        <link rel="stylesheet" href="static/css/xadmin.css">
        <!-- <link rel="stylesheet" href="./css/theme5.css">layui-red -->
        <script src="static/layui/layui.js" charset="utf-8"></script>
        <script type="text/javascript" src="static/js/xadmin.js"></script>
        	<script type="text/javascript" src="static/js/index.js"></script>
	<script type="text/javascript" src="static/js/cache.js"></script>
        <!-- 让IE8/9支持媒体查询，从而兼容栅格 -->
        <!--[if lt IE 9]>
          <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
          <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script>
            //是否开启刷新记忆tab功能
             var is_remember = false;
        </script>
    </head>
    <body class="index">
        <!-- 顶部开始 -->
        <div class="container">
            <div class="logo">
                <a href="./index.html">管理员</a></div>
            <div class="left_open">
                <a><i title="展开左侧栏" class="iconfont">&#xe699;</i></a>
            </div>
            <ul class="layui-nav right" lay-filter="">
                <li class="layui-nav-item" style="margin-right: 30px;">
                    admin
                </li>
                <li class="layui-nav-item"> <a href="javascript:;" id="lock"> <i class="iconfont icon-diannao1"></i>锁屏</a></li>
                <li class="layui-nav-item" id="userInfo">
						<a href="javascript:;"><img src="static/img/sjh02.jpg" class="layui-nav-img userAvatar" width="35" height="35"><cite class="adminName">个人中心</cite></a>
						<dl class="layui-nav-child">
							<dd><a href="javascript:;"  <a onclick="xadmin.add_tab('我的成绩','hrefstumanage')">
                                    <i class="layui-icon-group">&#xe613;</i><cite>小组成员资料</cite></a></dd>
							<dd><a href="javascript:;" onclick="xadmin.add_tab('修改密码','hrefUpdateAdminPw')"><i class="seraph icon-xiugai" data-icon="icon-xiugai"></i><cite>修改密码</cite></a></dd>
							  <a class="layui-icon" onclick="exportToExcels02()">&#xe645;系统公告<span class="layui-badge-dot"></span></a> 
							<dd><a href="out" class="signOut"><i class="seraph icon-tuichu"></i><cite>退出</cite></a></dd>
							
							
							
						</dl>
					</li>

             
               <!--  <li class="layui-nav-item to-index">
                    <a href="out">退出<span class="layui-badge">1</span></a></li> -->
            </ul>
            
            
            
        </div>
       
        <!-- 顶部结束 -->
        <!-- 中部开始 -->
        <!-- 左侧菜单开始 -->
        <div class="left-nav">
            <div id="side-nav">
                <ul id="nav">
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="学生管理">&#xe6b8;</i>
                            <cite>学生管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('增加学生','hrefaddstu')">
                                    <i class="layui-icon">&#xe608;</i>
                                    <cite>增加学生</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('管理学生','hrefstumanage')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>管理学生</cite></a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="javascript:;">
                            <i class="iconfont left-nav-li" lay-tips="老师管理">&#xe723;</i>
                            <cite>老师管理</cite>
                            <i class="iconfont nav_right">&#xe697;</i></a>
                        <ul class="sub-menu">
                            <li>
                                <a onclick="xadmin.add_tab('增加老师','hrefaddtea')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>增加老师</cite></a>
                            </li>
                            <li>
                                <a onclick="xadmin.add_tab('管理老师','hrefteamanage')">
                                    <i class="iconfont">&#xe6a7;</i>
                                    <cite>管理老师</cite></a>
                            </li>
                        </ul>
                    </li>
                    
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
                        <iframe src='welcome' frameborder="0" scrolling="yes" class="x-iframe"></iframe>
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
            })();
       
         
           function startTimer(){
                   var today=new Date();
                var h=today.getHours();
                var m=today.getMinutes();
                var s=today.getSeconds();
                m = m < 10 ? '0' + m : m;
                s = s < 10 ? '0' + s : s;
                $('#time').html(h+":"+m+":"+s);
                var t=setTimeout(function(){startTimer()},500);
           }
           // 锁屏状态检测
           function checkLockStatus(locked){
                // 锁屏
                if(locked == 1){
                    $('.lock-screen').show();
                    $('#locker').show();
                    $('#layui_layout').hide();
                    $('#lock_password').val('');
                }else{
                    $('.lock-screen').hide();
                    $('#locker').hide();
                    $('#layui_layout').show();
                }
            }

           checkLockStatus('0');
           // 锁定屏幕
           function lockSystem(){
                   
                  var url = '';
                  $.post(
                         url,
                         function(data){
                             if(data){
                                   checkLockStatus(1);
                             }else{
                          layer.alert('锁屏失败，请稍后再试！');
                             }
                      });
                  startTimer();
           }
           //解锁屏幕
           function unlockSystem(){
                // 与后台交互代码已移除，根据需求定义或删除此功能
                
                   checkLockStatus(0);
            }
           // 点击锁屏
           $('#lock').click(function(){
                   lockSystem();
           });
           // 解锁进入系统
           $('#unlock').click(function(){
                unlockSystem();
           });
           // 监控lock_password 键盘事件
           $('#lock_password').keypress(function(e){
                var key = e.which;
                if (key == 13) {
                    unlockSystem();
                }
            });
          //导出Excel
            function exportToExcels(){
            //layui.use('table', function () {
            var table = layui.table;
            table.exportFile(["学号", "名字", "班级"],[
            ['445121','宋家辉','计科18102'],
            ['454324','汪旭亮','计科18102'],
            ['322323','李岚泽','计科18102'],
            ['322323','吴志鹏','计科18102'],
            ['322323','吕强','计科18102'],
            ['322323','况成宏','计科18102']
            ],'小组成员表.xls');
            // });
            }
            function exportToExcels02(){
                //配置一个透明的询问框
                layer.msg('<h3>系统小公告<h3><hr class="layui-bg-red">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本系统还在继续完善中，使用前先联系一下管理员，拿到使用手册，以及项目需求分析书，避免使用中遇到一些简单的问题造成困扰。<br><p>联系人：宋家辉 手机号：18209525021 <br>qq：1726158425 <br> 微信同qq,如果想学习本系统制作中的相关技术，联系，汪旭亮大哥哥，给你想不到的惊喜</span></p>', {
                  time: 20000, //20s后自动关闭
                  btn: ['明白了', '知道了', '哦']
                });
              }
            </script>
           
            
          

    </body>

</html>