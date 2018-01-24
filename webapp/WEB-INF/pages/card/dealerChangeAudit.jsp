<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>卡片管理-经销商套餐变更申请</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/homeAbout/font-awesome.min.css"/>
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="css/public.css"/>

<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="vendor/layui/layui.js"></script>
<script type="text/javascript" src="js/public.js"></script>
</head>
 
<body class="page-body">
	 
      <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：卡片管理&gt;经销商套餐变更审核
        </h5>
       <div class="search-box">
	   <form>
            <div>
                <span>经销商名称：</span>
                <input id="dealerName" type="text" class="form-control" placeholder="查询经销商名称">
            </div>
            <div>
                <span>采购单号：</span>
                <input id="purchaseNum" type="text" class="form-control" placeholder="查询采购单号">
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
                <span>状态：</span>
                <select class="form-control" id="status" name="" style="width:120px">       
               		<option value="0">全部</option>         	
              	  	<option value="1">待变更</option> 
                	<option value="2">已变更</option>
                	<option value="3">驳回</option>
                </select>
            </div>
             <div class="">
             	 <input type="reset" class="btn btn_reset" name="" id="" value="重置" style="margin-left: 30px;"/>
             <input id="search" data-type="reload" type="button" class="btn btn_search" value="搜索" style="height:34px;margin-left: 30px;">
             </div>
       </form>
  		</div>
  		<div class="check-btn">
        	<button class="btn btn-default" id="apply">申请</button>
        	<button class="btn btn-default" name="updatestat" value="2">变更</button>
        	<button class="btn btn-default" name="updatestat" value="3">驳回</button>
           	<button id="btn_del" class="btn btn-default" onclick="">删除</button>
        </div>
       <!--contentBegin-->  
        <div id="content" >
        	<div class="">
       			<table class="table-hide" id="dealerchangeAudit" lay-data="{id: 'idDealerchangeAudit'}" lay-filter="DealerchangeAudit"></table>
            </div>
        </div>
			  <!--新增弹窗开始-->
			  <!--新增弹窗结束-->

</body>
<script type="text/html" id="titleTpl1">
  {{#  if(d.status===1){ }}
		待变更
  {{#  } else if(d.status===2){ }}
       	已变更
  {{#  } else if(d.status===3){ }}
		驳回
  {{#  } }}
</script>
<script type="text/html" id="titleTpl">
  {{#  if(!(d.validDate)){ }}
  {{#  } else { }}
  {{formatDate(new Date(d.validDate))}}
  {{#  } }}
</script>
<script type="text/javascript">
$(function(){
		//加载数据
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#dealerchangeAudit',
				url:'getDealerChangeList',
				id: 'idDealerchangeAudit',
				cellMinWidth:120,
				page:true,
				cols:[[
				 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:80}
			      ,{field:'dealerName', width:120, title: '经销商名称', sort: true,edit:'text'}
			      ,{field:'purchaseNum', width:120, title: '采购单号', sort: true,edit:'text'}
			      ,{field:'operator', width:120, title: '运营商', sort: true,edit:'text'}
			      ,{field:'location', width:120, title: '归属地'}
			      ,{field:'changeGroup', width:120, title: '申请变更套餐', sort: true}
			      ,{field:'status', width:120, title: '状态', sort: true,templet: '#titleTpl1'}
			      ,{field:'describe', width:120, title: '描述', sort: true,edit:'text'}
			      ,{field:'rejectCause', width:120, title: '驳回原因', sort: true}
			      ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
				]],
			})
 		    var $ = layui.$, active = {
		        reload: function(){
		            table.reload('idDealerchangeAudit', {
		                where: {
		                	dealerName: $('#dealerName').val(),
		                	purchaseNum: $('#purchaseNum').val(),
		                	status:$('#status').val()?$('#status').val():"",
		                	operator:$('#operator').val()?$('#operator').val():"",
		                	location:$('#location').val()?$('#location').val():""
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
				var checkStatus = table.checkStatus('idDealerchangeAudit'); //idprepareCancellation即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					 var statu = $(this).val();
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					}
					 var param = {"titles":chk_value,"status":statu}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "setDealerChangeStatusById",
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
				var checkStatus = table.checkStatus('idDealerchangeAudit'); //test即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					} 
					 var param = {"titles":chk_value}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "delDealerChangeById",
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
			  table.on('edit(DealerchangeAudit)', function(obj){
			    var value = obj.value, //得到修改后的值
			    data = obj.data, //得到所在行所有键值
			    field = obj.field; //得到字段
			    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
			    $.ajax({
			 	 	type: "POST",
			   		url: "",
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
			  table.on('tool(DealerchangeAudit)', function(obj){
			    var data = obj.data;
			    var checkStatus = table.checkStatus('idDealerchangeAudit');
			    console.log(checkStatus.data);
			    if(obj.event === 'del'){
			      layer.confirm('确认是否删除', function(index){
							var chk_value=[data.id];
							 var param = {"titles":chk_value}; 
						    $.ajax({
						 	 	type: "POST",
						   		url: "delDealerChangeById",
						   	 	data: param,
						   	 	success: function(data){
						     	  }
						     });
			        obj.del();
			        layer.close(index);
			      });
			    }else if(obj.event === 'update2'){
			    	 var chk_value =[];
				 	 var statu = 2;
				 	 	 chk_value.push(data.id);
				  var param = {"titles":chk_value,"status":statu}; 
				 $.ajax({
				 	url:"setDealerChangeStatusById", 
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
					    }else if(obj.event === 'update3'){
					    	 var chk_value =[];
						 	 var statu = 3;
						 	 	 chk_value.push(data.id);
						  var param = {"titles":chk_value,"status":statu}; 
						 $.ajax({
						 	url:"setDealerChangeStatusById", 
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
  {{#  if(d.status===1){ }}
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="update2">变更</a>
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="update3">驳回</a>
  {{#  } else { }}
<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
  {{#  } }}
</script>
</html>
