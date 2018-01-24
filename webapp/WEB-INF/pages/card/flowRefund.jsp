<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>卡片管理-流量退费申请</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/homeAbout/font-awesome.min.css"/>
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="css/customModal.css"/>
<link rel="stylesheet" type="text/css" href="css/table_public.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="vendor/layui/layui.js"></script>
<script type="text/javascript" src="js/data_table.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/DateFormate.js"></script>
</head>
 
<body class="page-body">
	 
        <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：卡片管理&gt;流量退费申请
        </h5>
       <div class="search-box">
	   <form>
            <div>
                <span>ICCID：</span>
                <input id="iccid" type="text" class="form-control" placeholder="查询iccid">
            </div>
            <div style="margin-left: 0px;">
                <span>状态：</span>
                <select class="form-control" id="status" name="" style="width:120px">        
              		<option value="">全部</option>        	
                	<option value="0">待申请</option>
                	<option value="1">已退款</option>
                	<option value="2">已驳回</option> 
                </select>
            </div>
             <div class="">
             	 <input type="reset" class="btn btn_reset" name="" id="" value="重置" style="margin-left: 30px;"/>
             <input id="search" data-type="reload" type="button" class="btn btn_search" value="搜索" style="height:34px;margin-left: 30px;">
             </div>
       </form>
  		</div>
  		<div class="check-btn">
        	<button class="btn btn-default" name="updatestat" value="1">退费</button>
        	<!-- <button class="btn btn-default" name="updatestat" value="2">驳回</button> -->
           	<button id="btn_del" class="btn btn-default">删除</button>
        </div>
       <!--contentBegin-->
        <div id="content" >
        	<div class="">
       			<table class="table-hide" id="flowRefund" lay-data="{id: 'idFlowRefund'}" lay-filter="FlowRefund"></table>
            </div>
        </div>
<!-- 			  新增弹窗开始
   	   <div class="addDealerModal" id="addReissueApplyBox">
   	   	  <form class="" action="" id="form1">
   	   	  <p style="margin-left: 0;"><span class="" >姓名:</span><input type="text" name=""/></p>
   	   	  <p><span class=" addtitle1">收件人:</span><input type="text" placeholder="收件人" name="name"/></p>
   	   	  <p><span class="" style="margin-right: 30px;">收件人电话</span><input type="text" placeholder="输入收件人电话" name="recipientPhone"/></p>
   	   	  <p><span class="" style="margin-right: 30px;">收件人地址</span><input type="text" placeholder="输入收件人地址" name="address"/></p>
   	   	  <p>
   	   	  	<span class="addtitle1 ">批量:</span><input type="text" placeholder="输入开始号" name="iccidStart"/>--<input type="text" placeholder="输入结束号" name="iccidEnd"/>
   	   	  </p>
   	   	  <p>
   	   	  	<span class="addtitle1 ">单个:</span><input type="text" placeholder="单个以,号区分" name="single" style="width:100px;height:30px;" />
   	   	  </p>
   	   	  </form>
   	       <div id="applyBtn" class="modal_btn">
   	   	    	<button class="btn btn_ok">确定</button>
   	   	    	<button class="btn btn_cancel">取消</button>
   	   	    	<button class="btn btn_reset">重置</button>
   	   	    </div>
   	   </div> -->
</body>

<script type="text/html" id="titleTpl1">
  {{#  if(!(d.purchaseTime)){ }}
  {{#  } else { }}
  {{formatDate(new Date(d.purchaseTime))}}
  {{#  } }}
</script>
<script type="text/html" id="titleTpl2">
  {{#  if(!(d.validTime)){ }}
  {{#  } else { }}
  {{formatDate(new Date(d.validTime))}}
  {{#  } }}
</script>
<script type="text/html" id="titleTpl">
  {{#  if(d.status===0){ }}
		待申请
  {{#  } else if(d.status===1){ }}
		已退款
  {{#  } else if(d.status===2){ }}
		已驳回
  {{#  } }}
</script>
<script type="text/javascript">
$(function(){
		//加载数据
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#flowRefund',
				url:'getFlowRefundList',
				id: 'idFlowRefund',
				cellMinWidth:120,
				page:true,
				cols:[[
				 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:80}
			      ,{field:'status', width:120, title: '状态', sort: true,templet: '#titleTpl'}
			      ,{field:'iccid', width:120, title: 'ICCID', sort: true}
			      ,{field:'groupCount', width:120, title: '套餐总量'}
			      ,{field:'usedFlow', width:120, title: '已用流量', sort: true}
			      ,{field:'purchaseTime', width:120, title: '购买时间', sort: true,templet: '#titleTpl1'}
			      ,{field:'validTime', width:120, title: '有效时间', sort: true,templet: '#titleTpl2'}
			      ,{field:'refundAmount', width:120, title: '退款金额', sort: true}
			      ,{field:'realRefund', width:120, title: '实际退款金额', sort: true,edit:'text'}
			      ,{field:'rejectCause', width:120, title: '驳回原因', sort: true,edit:'text'}
			      ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
				]],
			})
 		    var $ = layui.$, active = {
		        reload: function(){
		            table.reload('idFlowRefund', {
		                where: {
		                	iccid: $('#iccid').val(),
		                	status: $('#status').val(),
		                }
		            });
		        }
		    };
			//监听搜索查询
			$('#search').on('click', function(){
			    var type = $(this).data('type');
			    active[type] ? active[type].call(this) : '';
			});
			
			//监听批量改变状态按钮
			$("button[name='updatestat']").on('click', function(){
				var checkStatus = table.checkStatus('idFlowRefund'); 
				if(checkStatus.data.length!=0){
					var chk_value=[];
					 var statu = 0;
					for (var i = 0; i < checkStatus.data.length; i++) {
						if(checkStatus.data[i].status!=0){
							alert("请选择正确且不重复的信息!");
							return;
						}
						chk_value.push(checkStatus.data[i].id);
					}		
					 var param = {"titles":chk_value,"status":$(this).val()}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "setFlowRefundStatusById",
				   	 	data: param,
				   	    async:false,
				   	 	success: function(data){
				   	 		
				     	  }
				     });
				} else{
					layer.msg("请选择至少一条数据");
				}
				    tableIns.reload({
				    	 page: {
				    	    curr: 1 //重新从第 1 页开始
				    	  }
				    	});
			});
			
			//监听批量删除按钮
			$('#btn_del').on('click', function(){
			      layer.confirm('确认是否删除', function(index){
			    	  layer.close(index);
				var checkStatus = table.checkStatus('idFlowRefund'); //test即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					for (var i = 0; i < checkStatus.data.length; i++) {
						if(checkStatus.data[i].status==0){
							alert("存在待申请信息!");
							return;
						}
						chk_value.push(checkStatus.data[i].id);
					}
					 var param = {"titles":chk_value}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "delFlowRefundById",
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
			  table.on('edit(FlowRefund)', function(obj){
			    var value = obj.value, //得到修改后的值
			    data = obj.data, //得到所在行所有键值
			    field = obj.field; //得到字段
			    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
			    $.ajax({
			 	 	type: "POST",
			   		url: "editFlowRefund",
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
			  table.on('tool(FlowRefund)', function(obj){
			    var data = obj.data;
			    var checkStatus = table.checkStatus('idFlowRefund');
			    console.log(checkStatus.data);
			    if(obj.event === 'del'){
			      layer.confirm('确认是否删除', function(index){
							var chk_value=[data.id];
							 var param = {"titles":chk_value}; 
						    $.ajax({
						 	 	type: "POST",
						   		url: "delFlowRefundById",
						   	 	data: param,
						   	 	success: function(data){
						     	  }
						     });
			        obj.del();
			        layer.close(index);
			      });
			    }else if(obj.event === 'refund'){
					    	 var chk_value =[];
						 	 var statu = 1;
						 	 	 chk_value.push(data.id);
						  var param = {"titles":chk_value,"status":statu}; 
						 $.ajax({
						 	url:"setFlowRefundStatusById", 
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
						    }else if(obj.event === 'reject'){
						    	 var chk_value =[];
							 	 var statu = 2;
							 	 	 chk_value.push(data.id);
							  var param = {"titles":chk_value,"status":statu}; 
							 $.ajax({
							 	url:"setFlowRefundStatusById", 
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
  {{#  if(d.status===0){ }}
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="refund">退款</a>
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="reject">驳回</a>
  {{#  } else{ }}
<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
  {{#  } }}
</script>
<script type="text/html" id="selectTpl">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="selects">查询</a>
</script>
</html>
