<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>权限管理-经销商账号管理</title>
		<meta name="keywords" content="">
		<meta name="description" content="">
		<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="css/public.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/cardMange.css" />
		<link rel="stylesheet" type="text/css" href="css/table_public.css" />
		<script src="vendor/jquery-3.1.1.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<link rel="stylesheet" href="vendor/layui/css/layui.css">

	</head>

	<body class="page-body">

		<div class="search-box">
			<form>
				<div>
					<span>经销商：</span>
					<input type="text" class="form-control" name="" value="" id="dealerName" placeholder="查询经销商">
				</div>
				<div style="margin-left: 0px;">
					<span>账号：</span>
					<input type="text" class="form-control" placeholder="查询账号" name="" id="dealerAccount" value="" />
				</div>

<!-- 				<div>
					<span>注册时间：</span>
					<input type="date" class="form-control" name="" id="dealerBefore" value="" />-
					<input type="date" class="form-control" name="" id="dealerAfter" value="" />

				</div> -->
				<div class="">
					<span>经销商编号：</span>
					<input type="text" class="form-control" placeholder="查询经销商编号" name="" id="dealerNumber" value="" />
				</div>
				<div id="">
					<input type="reset" class="btn btn_reset" name="" id="" value="重置" />
					<input type="button" class="btn btn_search" name="" id="dealerSearch" data-type="reload" value="搜索" />
				</div>
			</form>

		</div>

		<h5 class="position-title">当前位置：首页>权限管理>经销商账号管理</h5>

		
<script src="vendor/layui/layui.js" charset="utf-8"></script>
<table id="dataGrid" class="layui-hide" lay-data="{id: 'dealerAccount'}" lay-filter="dealerAccount"></table>
	</body>
<script>
layui.use('table', function(){
  var table = layui.table;
  
  //第一个实例
  table.render({
    elem: '#dataGrid',
    id:'dealerAccount',
   // height: 315,
    url: 'permission/dealers', //数据接口
    page: true, //开启分页
    cellMinWidth: 60,
    cols: [[ //表头
      {field: '', type:'checkbox',title: 'ID', sort: true, fixed: 'left'},
      {title: '序号',templet: '#indexTpl',width:60},
      {field: 'loginAccount', title: '帐号'},
      /* {field: 'loginPass', title: '密码', sort: true,edit:'text'}, */
      
      {field: 'dealerNumber', title: '经销商编号'},
      {field: 'dealerName', title: '经销商名称'},
     /*  {field: 'joinTime', title: '加入时间'}, */
      {fixed: 'right', title: '操作', align:'center', toolbar: '#barTools'}
    ]]
  });
  
  var $ = layui.$, active = {
		    reload: function(){
		      var dealerName = $('#dealerName');
		      var dealerAccount = $('#dealerAccount');
		      var dealerNumber = $('#dealerNumber');
		      var dealerBefore = $('#dealerBefore');
		      var dealerAfter = $('#dealerAfter');
		      //执行重载
		      table.reload('dealerAccount', {
		        page: {
		          curr: 1 //重新从第 1 页开始
		        }
		        ,where: {
		        	dealerName: dealerName.val(),
		        	dealerAccount: dealerAccount.val(),
		        	dealerNumber: dealerNumber.val(),
		        	dealerAfter: dealerAfter.val(),
		            dealerBefore: dealerBefore.val()
		        }
		      });
		    }
		  };
  
  $('#dealerSearch').on('click', function(){
	  debugger;
	    var type = $(this).data('type');
	    active[type] ? active[type].call(this) : '';
	  });
  
//监听单元格编辑
  table.on('edit(dealerAccount)', function(obj){
    var value = obj.value, //得到修改后的值
    data = obj.data, //得到所在行所有键值
    field = obj.field; //得到字段
    debugger;
    $.ajax({
 	 	type: "POST",
   		url: "permission/updateDealer",
   	 	data: "value="+value+"&id="+data.dealerid,
   	 	success: function(data){
   	 		
     	  }
     });
  });
  
//监听工具条
  table.on('tool(dealerAccount)', function(obj){
    var data = obj.data;
    if(obj.event === 'detail'){
      layer.msg('ID：'+ data.dealerid + ' 的查看操作');
    } else if(obj.event === 'del'){
      layer.confirm('真的删除行么', function(index){
 		 $.ajax({
     	 	type: "POST",
       		url: "permission/delDealer",
       	 	data: "id="+data.dealerid,
       	 	success: function(data){
                
         	  }
	     });
        obj.del();
        layer.close(index);
      });
    } else if(obj.event === 'edit'){
      layer.alert('编辑行：<br>'+ JSON.stringify(data))
    }
  });
});
</script>
<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
<script type="text/html" id="barTools">
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="xxx">重置密码</a>
</script>
</html>