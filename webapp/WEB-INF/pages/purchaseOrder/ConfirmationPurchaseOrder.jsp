<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>库存管理-采购单审核</title>
		<meta name="keywords" content="">
		<meta name="description" content="">
		<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
		<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
		<link href="css/public.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
		<script src="vendor/jquery-3.1.1.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/layer/layer.min.js" ></script>
		<script src="vendor/layui/layui.js"></script>
		<script src="js/public.js" ></script>
	</head>

	<body class="page-body">

		<h5 class="position-title">当前位置：库存管理&gt;采购单审核</h5>

		<!--contentBegin-->
		<div id="content">
			<div class="search-box">
				<form>
					<div>
						<span>采购单号：</span>
						<input type="text" class="form-control" name="code" id="codeId" value="" placeholder="查询经销商编号">
					</div>

					<div>
						<span>经销商：</span>
						<input type="text" class="form-control" name="distributorName" id="distributorNameId" value="" placeholder="查询经销商">
					</div>

					<div>
						<span>状态：</span>
						<select name="status" id="statusId">
							<option value="">全部</option>
							<option value="0">带划卡</option>
							<option value="1">已划卡</option>
							
						</select>
					</div>

					<div style="margin-left: 0px;">
						<span>采购类型：</span>
						<select class="form-control" id="typeId" name="type" style="width:120px">
							<option value="">全部</option>
							<option value="0">卡片</option>
							<option value="1">设备</option>
							<option value="2">一体机</option>
							<option value="">空卡</option>
						</select>
					</div>

					<div style="margin-left: 0px;">
						<span>申请人：</span>
						<input type="text" name="applicant" id="applicantId" class="form-control" placeholder="查询申请人" />
					</div>
					<div style="margin-left: 0px;">
						<span>流量套餐：</span>
						<select class="form-control" id="comboId" name="combo" >

							<option value="" check="true">全部</option>
							<option value="0">套餐1</option>
							<option value="1">套餐2</option>
							<option value="2">套餐3</option>
						
						</select>
					</div>
					
					   <div><span>落地商：</span>
					   	<select name="landBusiness" id="landBusinessId" class="form-control">
					   		<option value="">全部</option>
					   		<option value="落地商1">落地商1</option>
					   		<option value="落地商2">落地商2</option>
					   		
					   	</select>
					   </div>
					   <div>
					   	<span>划卡时间</span>
					   	<input type="date" class="form-control" name="confirmBeginDate" id="confirmBeginDateId"/>&#150
					   	<input type="date" class="form-control" name="confirmEndDate" id="confirmEndDateId" value="" />
					   </div>
					<div class="">
						<input type="reset" class="btn btn_reset" name="" id="" value="重置" style="margin-left: 30px;" />
						<input id="search" type="button" class="btn btn_search" value="搜索" data-type="reload" style="height:34px;margin-left: 30px;">

					</div>
                </form>
			</div>
		</div>
		
		 <div class="ibox-content">
	    	<table class="layui-hide" id="confirmPurchase" lay-data="{id: 'idConfirmPurchase'}" lay-filter="Purchase" ></table>
    	</div>
		<!--contentEnd-->

	</body>
	
<!-- 公共字段显示格式数据 -->
<%@include file="../jsCommon/filedDisplay.jsp" %>

<script type="text/javascript">

	$(function(){
		//debugger;
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#confirmPurchase',
				url:'showConfirmPurchaseOrde',
				id: 'idConfirmPurchase',
				cellMinWidth:120,
				page:true, 
				cols:[[
				 {field:'id',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:60},
				 {field:'code','title':'采购单号',width:120,sort:true},
				 {field:'landBusiness','title':'落地商',width:100,sort:true},
				 {field:'number','title':'数量',width:80,sort:true},
				 {field:'type','title':'采购类型',width:100,sort:true,templet: '#titleTpl'},
				 {field:'comboName','title':'流量套餐',width:100,sort:true},
				 {field:'comboinfo','title':'套餐描述',width:120,sort:true},
				 {field:'distributorName','title':'经销商名称',width:100,sort:true},
				 {field:'rebateType','title':'返佣类型',width:100,sort:true,templet: '#titleTpl2'},
				 {field:'rebateNum','title':'返佣金额',width:100,sort:true,templet: '#titleTpl3'},
				 {field:'applicant','title':'申请人',width:100,sort:true,templet: '#titleTpl11'},
				 {field:'auditor','title':'审核人',width:100,sort:true,templet: '#titleTpl12'},
				 {field:'outStorePerson','title':'出库人',width:100,sort:true,templet: '#titleTpl13'},
				 {field:'confirmationPerson','title':'确认人',width:100,sort:true},
				 {field:'confirmStatus','title':'状态',width:100,sort:true,templet: '#titleTpl9'},
				 {field:'strokeDate','title':'划卡时间',width:100,sort:true},
			     {fixed: 'right', title: ' 操作', align:'center',width:140, toolbar: '#barTools'}
				]],
			});
			
 		    var $ = layui.$, active = {
		        reload: function(){
		        	console.log("do reload by query......"+$('#confirmEndDateId').val());
		            table.reload('idConfirmPurchase', {
		                where: {
		                	code:$('#codeId').val(),
							distributorName:$('#distributorNameId').val(),
							status:$('#statusId').val(),
							type:$('#typeId').val(),
							applicant:$('#applicantId').val(),
							combo:$('#comboId').val(),
							landBusiness:$('#landBusinessId').val() ,
							confirmBeginDate:$('#confirmBeginDateId').val().replace("-","/"),
							confirmEndDate:$('#confirmEndDateId').val().replace("-","/")
		               /*  
		        		instal lment:$("#installment").get(0).selectedIndex */
		                }
		            });
		            
		        }
		    };
 		 //监听搜索查询
			$('#search').on('click', function(){
			    var type = $(this).data('type');
			    active[type] ? active[type].call(this) : '';
			});
 		/* //监听批量删除按钮
			$('#btn_del').on('click', function(){
			      layer.confirm('确认是否删除', function(index){+
				var checkStatus = table.checkStatus('idProduct'); //test即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					}
					 var param = {"titles":chk_value}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "deleteBySelect",
				   	 	data: param,
				   	 	success: function(data){
				     	  }
				     });
				    //表格重载
				    tableIns.reload({
				    	  where: { //设定异步数据接口的额外参数，任意设
				                productName:$('#productName').val(),
				        		status:$("#status").get(0).selectedIndex,
				        		apply:$("#apply").get(0).selectedIndex,
				        		installment:$("#installment").get(0).selectedIndex
				    	  }
				    	  ,page: {
				    	    curr: 1 //重新从第 1 页开始
				    	  }
				    	});
				} else{
					layer.msg("请选择至少一条数据");
				}
			});
			  });
			//监听批量上下架按钮
			$("button[name='updatestat']").on('click', function(){
				var checkStatus = table.checkStatus('idProduct'); //idProduct即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					 var statu = 0;
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					}
					 var param = {"titles":chk_value,"status":$(this).val()}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "updateStatus",
				   	 	data: param,
				   	 	success: function(data){
				     	  }
				     });
				    tableIns.reload({
				    	  where: { //设定异步数据接口的额外参数，任意设
				                productName:$('#productName').val(),
				        		status:$("#status").get(0).selectedIndex,
				        		apply:$("#apply").get(0).selectedIndex,
				        		installment:$("#installment").get(0).selectedIndex
				    	  }
				    	  ,page: {
				    	    curr: 1 //重新从第 1 页开始
				    	  }
				    	});
				} else{
					layer.msg("请选择至少一条数据");
				}
				//console.log(checkStatus.data) //获取选中行的数据
				//console.log(checkStatus.data.length) //获取选中行数量，可作为是否有选中行的条件
			});
			
			//监听单元格编辑
			  table.on('edit(Product)', function(obj){
			    var value = obj.value, //得到修改后的值
			    data = obj.data, //得到所在行所有键值
			    field = obj.field; //得到字段
			    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
			    console.log(data.id);
			    $.ajax({
			 	 	type: "POST",
			   		url: "updateEmplyee",
			   	 	data: "value="+value+"&field="+field+"&id="+data.id,
			   	 	success: function(data){
			   	 	 
			     	  },error:function(date){
			     		 layer.msg("失败");
			     	  }
			     });
			  });
			  */
			//监听工具条
			  table.on('tool(Purchase)', function(obj){
			    var data = obj.data;
			    // var checkStatus = table.checkStatus('idTest');
			    // console.log(checkStatus.data);
				var chk_value=data.code;
			    console.log(chk_value);
			    if(obj.event === 'del'){
			      layer.confirm('确认是否删除:'+chk_value, function(index){
							 var param = {"id":data.id}; 
						    $.ajax({
						 	 	type: "POST",
						   		url: "deletePurchaseBySelect",
						   	 	data: param,
						   	 	success: function(result){
							   	 	if(result.code==0){
							 			layer.msg("处理成功");
							 		}else{
							 			layer.msg(result.msg);
							 		}  
						   	 	}
						     });
			        obj.del();
			        layer.close(index);
			      });
			        return;
			    } else if(obj.event === 'ok'){
				 	 var statu = 2;
				 	data.status=2;
				  	var param = {"code":chk_value}; 
				  	console.log(param);
						 $.ajax({
						 	url:"updateConfirmStatusOK", 
						 	type:"post", 
						 	data:param, 
						 	async: false,
						 	dataType:"json",
						 	success:function (result){
						 		if(result.code==0){
						 			layer.msg("处理成功");//刷新数据表格
								    tableIns.reload( {page: {
							    	    curr: 1 //重新从第 1 页开始
							    	  }
							    	}); 
						 		}else{
						 			layer.msg(result.msg);
						 		}
						 	}
						 });
			 }else if(obj.event === 'reject'){
			 	//设置驳回状态
			 	 var param = {"code":chk_value}; 
				  layer.prompt({title: '请输入驳回原因，并确认', formType: 2}, function(text, index){
					    layer.close(index);
					    layer.msg("驳回原因"+text);
					    param.dismissal=text;
					  console.log(param);
					 $.ajax({
					 	url:"updateRejectStatus", 
					 	type:"post", 
					 	data:param, 
					 	async: false,
					 	dataType:"json",
					 	success:function (result){
					 		if(result.code==0){
					 			layer.msg("处理成功");//刷新数据表格
							    tableIns.reload( {page: {
						    	    curr: 1 //重新从第 1 页开始
						    	  }
						    	}); 
					 		}else{
					 			layer.msg(result.msg);
					 		}
					 	}
					 });
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
	{{#  if(d.confirmStatus === 1){ }}
   			<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="ok">通过</a>
			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="reject">驳回</a>
	{{#  } else if(d.confirmStatus === 2){ }}
			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	{{#  } else if(d.confirmStatus === 3){ }}
  			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	{{#  }else{ }}
			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	{{#  }  }}
</script>
</html>