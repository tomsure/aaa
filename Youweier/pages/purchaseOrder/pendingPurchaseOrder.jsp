<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>库存管理-采购单出库</title>
				<meta name="keywords" content="">
				<meta name="description" content="">
				<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
				<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
				<link href="vendor/bootstrap/bootstrap-table.min.css" rel="stylesheet">
				<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
				<link rel="stylesheet" type="text/css" href="css/customModal.css"/>
				<link href="css/public.css" rel="stylesheet">
				<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
				<script src="vendor/jquery-3.1.1.js"></script>
				<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
				<script type="text/javascript" src="vendor/layui/layui.js"></script>
				<script src="js/public.js" ></script>
				<script type="text/javascript" src="js/data_table.js"></script>
	</head>

	<body class="page-body">

		<h5 class="position-title">当前位置：库存管理&gt;采购单出库</h5>

		<!--contentBegin-->
		<div id="content">
			<div class="search-box">
				<form>
					<div>
						<span>采购单号：</span>
						<input type="text" class="form-control" name="" value="" placeholder="查询采购单号">
					</div>

					<div>
						<span>经销商：</span>
						<input type="text" class="form-control" name="" value="" placeholder="查询经销商">
					</div>

					<div>
						<span>状态：</span>
						<select name="" id="">
							<option value="">全部</option>
							<option value="">待出库</option>
							<option value="">已出库</option>
							
						</select>
					</div>

					<div style="margin-left: 0px;">
						<span>采购类型：</span>
						<select class="form-control" id="" name="" style="width:120px">
							<option>全部</option>
							<option>卡片</option>
							<option>设备</option>
							<option value="">一体机</option>
							<option value="">空卡</option>
						</select>
					</div>

					<div style="margin-left: 0px;">
						<span>审核人：</span>
						<input type="text" class="form-control" placeholder="查询审核人" />
					</div>
					<div style="margin-left: 0px;">
						<span>卡号段：</span>
						<input type="text" class="form-control" name="" id="" placeholder="查询采购单号" value="" />-
						<input type="text" class="form-control" name="" id="" placeholder="查询采购单号" value=""/>
					</div>
					 <div class="">
					 	<span id="">
					 		出库人:
					 	</span>
					 	<input type="text" class="form-control" name="" id="" placeholder="查询出库人" value="" />
					 </div>
					 <div class="">
					 	<span id="">
					 		申请人：
					 	</span>
					 	<input type="text" class="form-control" placeholder="查询申请人" name="" id="" value="" />
					 </div>
					   <div><span>流量套餐：</span>
					   	<select name="" id="" class="form-control">
					   		<option value="status01">全部</option>
					   		<option value="status02">套餐1</option>
					   		<option value="status03">套餐2</option>
					   		
					   	</select>
					   </div>
					   <div><span>落地商：</span>
					   	<select name="" id="" class="form-control">
					   		<option value="status01">全部</option>
					   		<option value="status02">套餐1</option>
					   		<option value="status03">套餐2</option>
					   		
					   	</select>
					   </div>
					   <div>
                </from>
			</div>
		</div>
		</div>
		
		 <div class="ibox-content">
	    	<table class="layui-hide" id="pendingPurchase" lay-data="{id: 'idPendingPurchase'}" lay-filter="Pending"></table>
    	</div>
    	
		<!--contentEnd-->
			<div id="dvpurchaseOrder" class="purchaseOrderModal" style="display: none;">
		    	
		    	<p><span style="margin-right: 58px;">IMEI</span><input type="text" />&nbsp&nbsp-&nbsp&nbsp <input type="text" /> <span>1000台</span></p>
		   	     <p><span style="margin-right: 12px;">MCU版本号</span><input type="text" value="12289278957298365" /> </p>
		   	     <p><span style="margin-right: 55px;">颜色</span> <input type="text"  value="红色"/></p>
		    </div>
		    <div class="outlibraryModal" id="outlibrary" style="display: none;">
		    	<p><span style="margin-right: 40px;">卡号</span><input type="text" />&nbsp&nbsp-&nbsp&nbsp<input type="text" /> <span>1000张</span></p>
		    	<p><span style="margin-right: 28px;">运营商</span><input type="text" value="电信" /></p>
		    	<p><span style="margin-right: 15px;">流量套餐</span><input type="text" value="" value="8G" /></p>
		    	<p><span style="margin-right: 30px;">设备号</span><input type="text" placeholder="设备号" />&nbsp&nbsp-&nbsp&nbsp<input  type="text" placeholder="设备号" /></p>
		    	   <p style="text-align: center;margin-top: 40px;"> <button class="out-btn" style="height: 30px;width: 80px;color:white;background-color: deepskyblue;">出库</button></p>
		    </div>
	</body>
	
<!-- 公共字段显示格式数据 -->
<%@include file="../jsCommon/filedDisplay.jsp" %>

<script type="text/javascript">
function showPic(data){
	layui.use('layer',function(){
		/*
		*此处还有代码未完成
		*/
		
		
		var layer=layui.layer;
		    layer.open({
		    	type:1,
		    	title:['出库','font-size:18px;font-weight:800;'],
		    	area:['500px','200px'],
		    	content:$('#dvpurchaseOrder'),
//              content:'111'
		    })
	})
}
function showModal(){
	layui.use('layer',function(){
		var layer=layui.layer;
	   var index=layer.open({
		    	type:1,
		    	title:['出库','font-size:18px;font-weight:800;'],
		    	area:['500px','260px'],
		    	content:$('#outlibrary'),
//              content:'111'
		    });
		    $("#outlibrary").data("index",index);
	})
}
$(function(){
	//debugger;
		// 划卡请求
		$("#outlibrary").on("click",".out-btn",function(){
			var param = {"code":$("#outlibrary").data("code")}; 
			console.log(param);
			layer.close( $("#outlibrary").data("index"));
			/*
			*此处还有代码未完成
			*/
		});
	layui.use('table',function(){
		
		var table=layui.table;
		var tableIns = table.render({
			elem:'#pendingPurchase',
			url:'showPendingPurchaseByQuery',
			id: 'idPendingPurchase',
			cellMinWidth:120,
			page:true, 
			cols:[[
				 {field:'id',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:60},
				 {field:'code','title':'采购单号',width:120,sort:true},
				 {field:'landBusiness','title':'落地商',width:100,sort:true},
				 {field:'number','title':'数量',width:80,sort:true},
				 {field:'type','title':'采购类型',width:100,sort:true,templet: '#titleTpl'},
				 {field:'combo','title':'流量套餐',width:100,sort:true},
				 {field:'comboinfo','title':'套餐描述',width:120,sort:true},
				 {field:'distributorName','title':'经销商名称',width:100,sort:true},
				 {field:'applicant','title':'申请人',width:100,sort:true,templet: '#titleTpl11'},
				 {field:'applicationDate','title':'申请时间',width:100,sort:true},
				 {field:'auditor','title':'审核人',width:100,sort:true},
				 {field:'auditorDate','title':'审核时间',width:100,sort:true},
				 {field:'outStatus','title':'出库状态',width:100,sort:true,templet: '#titleTpl5'},
				 {field:'outStorePerson','title':'出库人',width:100,sort:true},
				 {field:'outStoreDate','title':'出库时间',width:100,sort:true},
				 {field:'iccid','title':'ICCID/IMEI/一体机',width:100,sort:true,templet: '#checkTpl'},
			     {fixed: 'right', title: ' 操作', align:'center',width:80, toolbar: '#barTools'}
				]],
		});
		//查询提交的表单数据
		    var $ = layui.$, active = {
	        reload: function(){
	        	console.log("do reload by query......");
	            table.reload('idConfirmPurchase', {
	                where: {
	                	code:$('#codeId').val(),
						distributorName:$('#distributorNameId').val(),
						status:$('#statusId').val(),
						type:$('#typeId').val(),
						applicant:$('#applicantId').val(),
						combo:$('#comboId').val(),
						landBusiness:$('#landBusinessId').val() ,
						confirmBeginDate:JSON.stringify($('#confirmBeginDateId').val()?$('#confirmBeginDateId').val():""),
						confirmEndDate:JSON.stringify($('#confirmEndDateId').val()?$('#confirmEndDateId').val():"")
	               /*  productName:.val(),
	        		status:$("#status").get(0).selectedIndex,
	        		apply:$("#apply").get(0).selectedIndex,
	        		instal lment:$("#installment").get(0).selectedIndex */
	                }
	            });
	            
	        }
	    };
		 //监听搜索查询
		$('#search').on('click', function(){
		    var type = $(this).data('type');
		    console.log("do reload by query......"+type);
		    active[type] ? active[type].call(this) : '';
		});
		
		//监听工具条
		  table.on('tool(Pending)', function(obj){
		    var data = obj.data;//得到所在行所有键值
		    //console.log(data);
		    console.log(data.code);
			 // 显示号段
		    if(obj.event === 'checkICCID'){
				var param = {"code":data.code}; 
			    $.ajax({
			 	 	type: "POST",
			   		url: "getICCIDBySelect",
			   	 	data: param,
			   	 	success: function(result){
				   	 	if(result.code==0){
				   	 		showPic(result.data);
				 			layer.msg("处理成功");
				 		}else{
				 			layer.msg(result.msg);
				 		}
			     	  }
			     });
			    return;
		    }
		    if(obj.event==="cancel"){
				var param = {
							"id":data.id,
							"code":data.code,
							}; 
			    $.ajax({
			 	 	type: "POST",
			   		url: "cancelOutSotreBySelect",
			   	 	data: param,
			   	 	success: function(result){
				   	 	if(result.code==0){
				 			layer.msg("处理成功");
				 		}else{
				 			layer.msg(result.msg);
				 		}
			     	  }
			     });
			}else if(obj.event === 'del'){
		      layer.confirm('确认是否删除', function(index){
						 var param = {"code":data.code}; 
					    $.ajax({
					 	 	type: "POST",
					   		url: "deletePendingPurchaseBySelect",
					   	 	data: param,
					   	 	success: function(data){
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
		    } else if(obj.event === 'outStore'){
		    	$("#outlibrary").data("code",data.code);
		    	showModal();
			}
	 		//刷新数据表格
		  tableIns.reload( {page: {
		    	    curr: 1 //重新从第 1 页开始
		    	  }
		    });  
		  });  
	});
})
</script>
<script type="text/html" id="checkTpl">
	{{#  if(true){ }}
   			<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="checkICCID">查看</a>
	{{#  }  }}
</script>
<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
<script type="text/html" id="barTools">
	{{#  if(d.outStatus === 1){ }}
   		<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="outStore">出库</a>
  {{#  } else if(d.outStatus === 2){ }}
  			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="cancel">取消</a>
  {{#  } else if(d.outStatus === 3){ }}
			<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="reapply">重新出库</a>
  			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
  {{#  } }}
</script>
</html>