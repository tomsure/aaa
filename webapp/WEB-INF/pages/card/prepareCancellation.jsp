<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>卡片管理-预销号卡片</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/homeAbout/font-awesome.min.css"/>
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="css/public.css"/>
<script type="text/javascript" src="js/DateFormate.js"></script>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="vendor/layui/layui.js"></script>

<script type="text/javascript" src="js/public.js"></script>
</head>
 
<body class="page-body">
	 
        <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：卡片管理&gt;预销号卡片
        </h5>
       <div class="search-box">
	   <form>
	        <div>
                <span>客户名称：</span>
                <input id="customerName" type="text" class="form-control" placeholder="查询客户名称">
            </div>
            <div>
                <span>ICCID：</span>
                <input id="iccid" type="text" class="form-control" placeholder="查询iccid">
            </div>
             <div class="">
             	 <input type="reset" class="btn btn_reset" name="" id="" value="重置" style="margin-left: 30px;"/>
             <input id="search" data-type="reload" type="button" class="btn btn_search" value="搜索" style="height:34px;margin-left: 30px;">
             </div>
            <div style="margin-left: 0px;">
                <span>运营商：</span>
                <select class="form-control" id="operator" name="" style="width:120px">       
               		<option value="0">全部</option>         	
              	  	<option value="1">联通</option> 
                	<option value="2">移动</option>
                	<option value="3">电信</option>
                </select>
            </div>
              <div style="margin-left: 0px;">
                <span>归属地：</span>
                <select class="form-control" id="location" name="" style="width:120px">   
                	<option value="">全部</option>             	
                	<option value="重庆">重庆</option>
                	<option value="广东">广东</option> 
                	<option value="等等">等等</option>
                	
                </select>
            </div>
             <div style="margin-left: 0px;">
                <span>流量套餐：</span>
                <select class="form-control" id="flowGroup" name="" style="width:120px">        
              		<option value="0">全部</option>        	
                	<option value="1">套餐1</option>
                	<option value="2">套餐2</option> 
                	<option value="3">套餐3</option>
                	
                </select>
            </div>
       </form>
  		</div>
  		<div class="check-btn">
	  		<button class="btn btn-default" id="logout" name="updatestat" value="1">销号</button>
	  		<button class="btn btn-default" id="reserve" name="updatestat" value="2">保号</button>
	        <button id="btn_del" class="btn btn-default">删除</button>
        </div>
       <!--contentBegin-->
        <div id="content" >
        	<div class="">
       			<table class="table-hide" id="prepareCancellation" lay-data="{id: 'idPrepareCancellation'}" lay-filter="PrepareCancellation"></table>
            </div>
        </div>
			  <!--新增弹窗开始-->

</body>

<script type="text/html" id="titleTpl">
  {{#  if(d.status===1){ }}
		待补卡
  {{#  } else if(d.status===2){ }}
       	已补卡
  {{#  } }}
</script>
<script type="text/html" id="titleTpl5">
  {{#  if(d.cardStatus===0){ }}
		待销号
  {{#  } else if(d.cardStatus===1){ }}
       	已销号
  {{#  } else if(d.cardStatus===2){ }}
		保留
  {{#  } }}
</script>
<script type="text/html" id="titleTpl1">
  {{#  if(!(d.validDate)){ }}
  {{#  } else { }}
  {{formatDate(new Date(d.validDate))}}
  {{#  } }}
</script>
<script type="text/html" id="titleTpl2">
  {{#  if(!(d.issueDate)){ }}
  {{#  } else { }}
  {{formatDate(new Date(d.issueDate))}}
  {{#  } }}
</script>
<script type="text/html" id="titleTpl3">
  {{#  if(!(d.activateDate)){ }}
  {{#  } else { }}
  {{formatDate(new Date(d.activateDate))}}
  {{#  } }}
</script>
<script type="text/html" id="titleTpl4">
  {{#  if(d.autonymStatus===1){ }}
		已实名
  {{#  } else { }}
       	未实名
  {{#  } }}
</script>
<script type="text/javascript">
$(function(){
		//加载数据
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#prepareCancellation',
				url:'getPrepareCancellationList',
				id: 'idprepareCancellation',
				cellMinWidth:120,
				page:true,
				cols:[[
				 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:80}
			      ,{field:'iccid', width:120, title: 'iccid', sort: true,edit:'text'}
			      ,{field:'operator', width:120, title: '运营商', sort: true,edit:'text'}
			      ,{field:'location', width:120, title: '归属地'}
			      ,{field:'cardStatus', width:120, title: '卡片状态', sort: true,edit:'text',templet: '#titleTpl5'}
			      ,{field:'autonymStatus', width:120, title: '实名状态', sort: true,edit:'text',templet: '#titleTpl4'}
			      ,{field:'flowGroup', width:120, title: '流量套餐', sort: true,edit:'text'}
			      ,{field:'flowUsed', width:120, title: '已用流量', sort: true,edit:'text'}
			      ,{field:'flowSurplus', width:120, title: '剩余流量', sort: true,edit:'text'}
			      ,{field:'validDate', width:120, title: '有效期', sort: true,edit:'text',templet: '#titleTpl1'}
			      ,{field:'issueDate', width:120, title: '发卡时间', sort: true,edit:'text',templet: '#titleTpl2'}
			      ,{field:'activateDate', width:120, title: '激活时间', sort: true,edit:'text',templet: '#titleTpl3'}
			      ,{field:'customerName', width:120, title: '客户姓名', sort: true,edit:'text'}
			      ,{field:'operatingRecord', width:120, title: '操作记录', sort: true,edit:'text'}
			      ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
				]],
			})
 		    var $ = layui.$, active = {
		        reload: function(){
		            table.reload('idprepareCancellation', {
		                where: {
		                	customerName: $('#customerName').val(),
		                	iccid: $('#iccid').val(),
		                	operator:$('#operator').val()?$('#operator').val():"",
		                	location:$('#location').val()?$('#location').val():"",
		                	flowGroup:$('#flowGroup').val()?$('#flowGroup').val():""
		                }
		            });
		        }
		    };
			//监听搜索查询
			$('#search').on('click', function(){
			    var type = $(this).data('type');
			    active[type] ? active[type].call(this) : '';
			});
			
			//监听批量按钮
			$("button[name='updatestat']").on('click', function(){
				debugger;
				var checkStatus = table.checkStatus('idprepareCancellation'); //idprepareCancellation即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					 var statu = $(this).val();
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
						if(checkStatus.data[i].cardStatus==1){
							alert("存在已经销号账户!");
							return;
						}
					}
					 var param = {"titles":chk_value,"status":statu}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "setPrepareCancellationStatusById",
				   		async:false,
				   	 	data: param,
				   	 	success: function(data){
				     	  }
				     });
				    tableIns.reload({
				    	  page: {
				    	    curr: 1 //重新从第 1 页开始
				    	  }
				    	});
				} else{
					layer.msg("请选择至少一条数据");
				}
			});
			//监听批量删除按钮
			$('#btn_del').on('click', function(){
			      layer.confirm('确认是否删除', function(index){
			    	  layer.close(index);
				var checkStatus = table.checkStatus('idprepareCancellation'); //test即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					}
					 var param = {"titles":chk_value}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "delPrepareCancellationById",
				   		async:false,
				   	 	data: param,
				   	 	success: function(data){
				     	  }
				     });
				    //表格重载
				    tableIns.reload({
				    	  page: {
				    	    curr: 1 //重新从第 1 页开始
				    	  }
				    	});
				}else{
					layer.msg("请选择至少一条数据");
				}
			});
			  });
			
			//监听单元格编辑
			  table.on('edit(ReissueApply)', function(obj){
			    var value = obj.value, //得到修改后的值
			    data = obj.data, //得到所在行所有键值
			    field = obj.field; //得到字段
			    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
			    $.ajax({
			 	 	type: "POST",
			   		url: "editReissueApply",
			   		async:false,
			   	 	data: "value="+value+"&field="+field+"&id="+data.id,
			   	 	success: function(data){
			     	  },error:function(date){
			     		 layer.msg("失败");
			     	  }
			     });
			  //表格重载
			    tableIns.reload({
			    	  page: {
			    	    curr: 1 //重新从第 1 页开始
			    	  }
			    	});
			  });
			  
			//监听工具条
			  table.on('tool(PrepareCancellation)', function(obj){
			    var data = obj.data;
			    var checkStatus = table.checkStatus('idprepareCancellation');
			    console.log(checkStatus.data);
			    if(obj.event === 'del'){
			      layer.confirm('确认是否删除', function(index){
							var chk_value=[data.id];
							 var param = {"titles":chk_value}; 
						    $.ajax({
						 	 	type: "POST",
						   		url: "delPrepareCancellationById",
						   	 	data: param,
						   	 	success: function(data){
						     	  }
						     });
			        obj.del();
			        layer.close(index);
			      });
			    }else if(obj.event === 'logout'){
			    	 var chk_value =[];
				 	 var statu = 1;
				 	 	 chk_value.push(data.id);
				  var param = {"titles":chk_value,"status":statu}; 
				 $.ajax({
				 	url:"setPrepareCancellationStatusById", 
				 	type:"post", 
				 	data:param, 
				 	async: false,
				 	dataType:"json",
				 	success:function (date){
				 	}
				 });
				    tableIns.reload({
				    	  page: {
				    	    curr: 1 //重新从第 1 页开始
				    	  }
				    	});
					    }else if(obj.event === 'reserve'){
					    	 var chk_value =[];
						 	 var statu = 2;
						 	 	 chk_value.push(data.id);
						  var param = {"titles":chk_value,"status":statu}; 
						 $.ajax({
						 	url:"setPrepareCancellationStatusById", 
						 	type:"post", 
						 	data:param, 
						 	async: false,
						 	dataType:"json",
						 	success:function (date){
						 	}
						 });
						    tableIns.reload({
						    	  page: {
						    	    curr: 1 //重新从第 1 页开始
						    	  }
						    	});
							    }else if(obj.event === 'recover'){
							    	 var chk_value =[];
								 	 var statu = 0;
								 	 	 chk_value.push(data.id);
								  var param = {"titles":chk_value,"status":statu}; 
								 $.ajax({
								 	url:"setPrepareCancellationStatusById", 
								 	type:"post", 
								 	data:param, 
								 	async: false,
								 	dataType:"json",
								 	success:function (date){
								 	}
								 });
								    tableIns.reload({
								    	  page: {
								    	    curr: 1 //重新从第 1 页开始
								    	  }
								    	});
									    }
			  });
			
		});
	})
</script>
<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
<script type="text/html" id="barTools">
  {{#  if(d.cardStatus===1){ }}
  {{#  } else { }}
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="logout">销号</a>
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="reserve">保号</a>
  {{#  } }}
<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script type="text/html" id="selectTpl10">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="selects">查询</a>
</script>
</html>
