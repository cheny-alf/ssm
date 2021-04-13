<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>Layui</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="static/layui/css/layui.css"  media="all">
  <!-- 注意：如果你直接复制所有代码到本地，上述css路径需要改成你本地的 -->
  <style type="text/css">
    .layui-table{
      width: 50%;
      margin-left: 25%;
    }
  </style>
</head>
<body>
<br>
<div class="layui-btn-group demoTable">
  <span style="margin-left:10px;">
  <button class="layui-btn" data-type="checkname">模糊查询</button>
  
  </span>
    <span style="margin-left:500px;">
  
  <button class="layui-btn" data-type="parseTableToExcel" onclick="exportToExcels()">导出Excel</button> 
   </span>
</div>  
<div class="layui-btn-group demoTable" style="margin-bottom: 10px;">
</div>
<table class="layui-table" lay-data="{width: 1200, height:500, url:'liststudent', page:true, id:'idTest'}" lay-filter="demo">
  <thead>
    <tr>
      <th lay-data="{field:'id', width:100, sort: true}">ID</th>
      <th lay-data="{field:'stuno', width:180, sort: true}">学号</th>
       <th lay-data="{field:'stuname', width:140}">名字</th>
        <th lay-data="{field:'stuclass', width:100}">班级</th>
      <th lay-data="{field:'username', width:100}">用户名</th>
      <th lay-data="{field:'password', width:130}">密码</th>
      <th lay-data="{field:'username', width:200}">昵称</th>

      <th lay-data="{fixed: 'right', width:300, align:'center', toolbar: '#barDemo'}"></th>
    </tr>
  </thead>
</table>
 
<script type="text/html" id="barDemo">
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
  <a class="layui-btn layui-btn-xs" lay-event="edit01">修改</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
   <i class="layui-icon" onclick="exportToExcels01()">&#xe67d;</i>
</script>
               
          
<script src="static/layui/layui.js" charset="utf-8"></script>
<!-- 注意：如果你直接复制所有代码到本地，上述js路径需要改成你本地的    <a class="layui-btn  layui-btn-primary layui-btn-sm" lay-event="del"> <i class="layui-icon">&#xe640;</i></a>
  <a class="layui-btn layui-btn-primary layui-btn-sm" lay-event="edit01"> <i class="layui-icon">&#xe642;</i></a> <a class="layui-btn layui-btn-warm  layui-btn-xs" lay-event="edit">修改</a>-->
<script>
layui.use(['table','layer'], function(){
  var table = layui.table
  ,layer = layui.layer
  
  ,$ = layui.$;
  //监听工具条
  table.on('tool(demo)', function(obj){
    var data = obj.data;
    if(obj.event === 'del'){
    	
        	window.location.href="delstu?id="+data.id+"";
      
    } else if(obj.event === 'edit'){
    	window.location.href="hrefxiustu?id="+data.id+"";
    }else if(obj.event === 'edit01'){
    	window.location.href="hrefxiustu?id="+data.id+"";
    }
    else if(obj.event === 'detail'){
    	window.location.href="hrefstudetail?id="+data.id+"";
    }
  });
  var $ = layui.$, active = {
    checkname: function(){ //弹出对话框
    	layer.prompt({title:'请输入名字的一部分'},function(value){
    		window.location.href="hrefmohuname?stuname="+value+""; 
    	});
    }
  };	
  $('.demoTable .layui-btn').on('click', function(){
    var type = $(this).data('type');
    active[type] ? active[type].call(this) : '';
  });
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
//导出个人Excel
function exportToExcels01(){
//layui.use('table', function () {
var table = layui.table;
table.exportFile(["id", "学号", "姓名", "班级", "用户名","别名昵称"],[
["15","1700130229","张小夏","1701",'三三','三三']
],'个人信息.xls');
// });
}

</script>
 <script>
layui.use('layer', function(){ //独立版的layer无需执行这一句
  var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
  
  //触发事件
  var active = {
    setTop: function(){
      var that = this; 
      //多窗口模式，层叠置顶
      layer.open({
        type: 2 //此处以iframe举例
        ,title: '当你选择该窗体时，即会在最顶端'
        ,area: ['390px', '260px']
        ,shade: 0
        ,maxmin: true
        ,offset: [ //为了演示，随机坐标
          Math.random()*($(window).height()-300)
          ,Math.random()*($(window).width()-390)
        ] 
        ,content: '//layer.layui.com/test/settop.html'
        ,btn: ['继续弹出', '全部关闭'] //只是为了演示
        ,yes: function(){
          $(that).click(); 
        }
        ,btn2: function(){
          layer.closeAll();
        }
        
        ,zIndex: layer.zIndex //重点1
        ,success: function(layero){
          layer.setTop(layero); //重点2
        }
      });
    }
    ,confirmTrans: function(){
      //配置一个透明的询问框
      layer.msg('大部分参数都是可以公用的<br>合理搭配，展示不一样的风格', {
        time: 20000, //20s后自动关闭
        btn: ['明白了', '知道了', '哦']
      });
    }
    ,notice: function(){
      //示范一个公告层
      layer.open({
        type: 1
        ,title: false //不显示标题栏
        ,closeBtn: false
        ,area: '300px;'
        ,shade: 0.8
        ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
        ,btn: ['火速围观', '残忍拒绝']
        ,btnAlign: 'c'
        ,moveType: 1 //拖拽模式，0或者1
        ,content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">你知道吗？亲！<br>layer ≠ layui<br><br>layer只是作为Layui的一个弹层模块，由于其用户基数较大，所以常常会有人以为layui是layerui<br><br>layer虽然已被 Layui 收编为内置的弹层模块，但仍然会作为一个独立组件全力维护、升级。<br><br>我们此后的征途是星辰大海 ^_^</div>'
        ,success: function(layero){
          var btn = layero.find('.layui-layer-btn');
          btn.find('.layui-layer-btn0').attr({
            href: 'http://www.layui.com/'
            ,target: '_blank'
          });
        }
      });
    }
    ,offset: function(othis){
      var type = othis.data('type')
      ,text = othis.text();
      
      layer.open({
        type: 1
        ,offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
        ,id: 'layerDemo'+type //防止重复弹出
        ,content: '<div style="padding: 20px 100px;">'+ text +'</div>'
        ,btn: '关闭全部'
        ,btnAlign: 'c' //按钮居中
        ,shade: 0 //不显示遮罩
        ,yes: function(){
          layer.closeAll();
        }
      });
    }
  };
  
  $('#layerDemo .layui-btn').on('click', function(){
    var othis = $(this), method = othis.data('method');
    active[method] ? active[method].call(this, othis) : '';
  });
  
});
</script>
</script>


</body>
</html>