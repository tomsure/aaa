<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>订单管理-经销商申请</title>
<meta name="keywords" content="">
	<meta name="keywords" content="">
	<meta name="description" content="">
	<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
	<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
	<link href="css/public.css" rel="stylesheet"> 
	<link rel="stylesheet" type="text/css" href="css/customModal.css"/>
	<script src="vendor/jquery-3.1.1.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="vendor/bootstrap/bootstrap-table.min.js"></script>
	<script src="vendor/layui/layui.js"> </script>
	<script src="js/public.js"></script>
	
</head>

<body class="page-body">
    <h5 class="position-title">当前位置：订单管理&gt;经销商申请</h5>

       <!--contentBegin-->  
        <div id="content" >
       
    <div class="search-box check-btn">
        <div class="check-btn">
        	<button id="dealetApply" class="btn btn-default" onclick="">申请</button>
        </div>
    </div>
    <!-- 数据表格 -->
	<div class="ibox-content">
    	<table class="layui-hide" id="PurchaseApply" lay-data="{id: 'idPurchaseApply'}" lay-filter="Apply"></table>
   	</div>
       
    
</div>
   <!--申请弹窗开始-->
	<form id="form1" class="layui-form" >
   	   <div id="modalBox" class="modal_content" >
   	   	  <div style="height:38px">
   	   	 	<span class="boxTitle">采购单号</span>
   	   	 	<div class="layui-input-inline">				
   	   	 	<input type="text" name="code" id="codeId" lay-verify="required" class="layui-input" readonly/>
   	   	 </div>
   	   	 </div>
   	   	 <!--  placeholder="自动生成采购单号" -->
   	   	 <script type="text/javascript">
   	 		var code=new Date();
   	 		$("#codeId").val(code.getTime());
   	   	</script>
   	   	 <div>
   	   	 	<span class="boxTitle" style="margin-right: 25px;">运营商</span>
   	   	 	<div class="layui-input-inline">
   	   	 	<select name="operator" id="operatorId">
   	   	 		<option value="0" checked>移动</option>
   	   	 		<option value="1">电信</option>
   	   	 		<option value="2">联通</option>
   	   	 	</select>
   	   		</div>
   	   	 </div>
   	   	 <div style="height:38px">
   	   	 	<span class="boxTitle" style="margin-right: 37px;">归属地</span>
   	   	 	<div class="layui-input-inline">
   	   	 	<input type="text" name="location" id="locationId" lay-verify="required" class="layui-input"/>
   	   	</div>
   	   	 </div>
   	   	 <div style="height:38px">
   	   	 	<span class="boxTitle" style="margin-right: 37px;">数量</span>
   	   	 	<div class="layui-input-inline">
   	   	 	<input type="text" name="number" id="numberId" lay-verify="required" class="layui-input"/>
   	   	</div>
   	   	 </div>
   	   	 <div style="height:38px">
   	   	 	<span class="boxTitle">订单金额</span>
   	   	 	<div class="layui-input-inline">
   	   	 	<input type="text" name="orderAmount" lay-verify="required" class="layui-input"/>
   	   	 </div>
   	   	 </div>
   	   	 <div>
   	   	 	<span class="boxTitle">支付方式</span>
   	   	 	<div class="layui-input-inline">
   	   	 	<select name="payType" >
   	   	 		<option value="0" checked>余额</option>
   	   	 		<option value="1">信用</option>
   	   	 	</select>
   	   		</div>
   	   	 </div>
   	   	 <div>
   	   	 	<span class="boxTitle">采购类型</span>
   	   	 	<div class="layui-input-inline">
   	   	 	<select name="type" id="">
   	   	 		<option value="0" checked>卡片</option>
   	   	 		<option value="1">设备</option>
   	   	 		<option value="2">一体机</option>
   	   	 	</select>
   	   	 	</div>
   	   	 </div>
   	   	 <div>
   	   	 	<span class="boxTitle">流量套餐</span>
   	   	 	<div class="layui-input-inline">
	   	   	 	<select name="combo" id="combo" lay-filter="combofilter">
	   	   	 		<option value="0" checked>套餐1</option>
	   	   	 		<option value="1">套餐2</option>
	   	   	 		<option value="2">套餐3</option>
	   	   	 		<option value="3">套餐4</option>
	   	   	 	</select>
   	   	 	</div>
   	   	 </div>
   	   	 <!-- 套餐基本信息 -->
   	   	 <input type="hidden" name="comboName"  id="comboName" value=""/>
   	   	 <div style="height:38px">
   	   	 	<span class="boxTitle">选择经销商</span>
   	   	 	<div class="layui-input-inline">
   	   	 	<input id="selectBtn" type="button" class="btn"  value="选择" style="color: white; background-color: dodgerblue;width:80px;height: 30px;"/>
   	   	 </div>
   	   	 </div>
   	   	 <div style="height:42px">
   	   	 	<span class="boxTitle">返佣规则</span>
   	   	 	<div class="layui-input-inline">
   	   	 	<select name="rebateRule" id="rebateRuleId"  lay-filter="rebatefilter">
   	   	 		<option value="0" checked>规则1</option>
   	   	 		<option value="1">规则2</option>
   	   	 		<option value="2">规则3</option>
   	   	 	</select>
   	   	 </div>
   	   	 <input type="hidden" name="rebateType"  id="rebateTypeId" value=""/>
   	   	 <input type="hidden" name="rebateNum"  id="rebateNumId" value=""/>
   	   	 </div>
   	   	 <div style="height:42px">
   	   	 	<span class="boxTitle">大区规则</span>
   	   	 	<div class="layui-input-inline">
   	   	 	<select name="rebateRule" id="rebateRuleId"  lay-filter="rebatefilter">
   	   	 		<option value="0" checked>分润规则名1</option>
   	   	 		<option value="1">分润规则名2</option>
   	   	 		<option value="2">分润规则名3</option>
   	   	 	</select>
   	   	 </div>
   	   	 <input type="hidden" name="rebateType"  id="rebateTypeId" value=""/>
   	   	 <input type="hidden" name="rebateNum"  id="rebateNumId" value=""/>
   	   	 </div>
   	   	 <div>
   	   	 	<span class="boxTitle" style="vertical-align: top;">套餐描述</span>
   	   	 	<div class="layui-input-inline">
   	   	 	<textarea name="comboinfo" rows="5" cols="30" id="comboDesc"></textarea>
   	   	</div>
   	                       
	   	   	 <div style="height:38px">
	   	   	 	<span class="boxTitle">收件人姓名</span>
	   	   	 	<div class="layui-input-inline">
	   	   	 	<input type="text" name="receiver" lay-verify="required" class="layui-input"/>
	   	   	 </div>
	   	   	 </div>
	   	   	<div style="height:38px">
	   	   	 	<span class="boxTitle">收件人地址</span>
	   	   	 	<div class="layui-input-inline">
	   	   	 	<input type="text" name="receiverAddress" lay-verify="required" class="layui-input"/>
	   	   	 </div>
	   	   	 </div>
	   	   	 <div style="height:38px">
	   	   	 	<span class="boxTitle">收件人电话</span>
	   	   	 	<div class="layui-input-inline">
	   	   	 	<input type="text" name="receiverPhone" lay-verify="required" class="layui-input"/>
	   	   	 </div>
	   	   	 </div>
   	   	 
   	   	 </div>
   	   	   <div class="modal_btn" id="applyBtn">
   	   	   	  <button lay-submit class="btn btn_ok"  lay-filter="formDemo">提交</button>
   	   	   	  <button class="btn btn_cancel">取消</button>
   	   	   	  <button type="reset" class="layui-btn layui-btn-primary">重置</button>
   	   	   </div>
   	   </div>
   	    
   	     <!--选择经销商弹窗开始-->
   	     	 	 <div id="selectDealer" class="selectDealerFile" style="display: none;position: absolute;">
                
                	 	<p>
                	 		<div class="dataBox">
                	 			<input type="checkbox" /> <input type="text" name="distributorName" id="0" value="经销商0" />
                	 	    </div>
                	 	    <div class="dataBox">
                	 			<input type="checkbox" /> <input type="text" name="distributorName" id="1" value="经销商1" />
                	 	    </div>
                	 	    <div class="dataBox">
                	 			<input type="checkbox" /> <input type="text" name="distributorName" id="2" value="经销商2" />
                	 	    </div> 
                	 	</p>
                	<div class="bottom_btn_1" style="clear: left;">
						<input type="submit" class="btn btn_ok" value="确定"  lay-filter="formDemo"/>
						<input type="button" class=" btn btn_cancel " value="取消" />
						<input type="reset" class=" btn  btn_reset " value="重置" style="width: 80px;" />  
					</div>
				</div>
		</form> 
   	     <!--选择经销商弹窗结束-->
                	 	
   		<!--申请弹窗结束-->
 <!--contentEnd-->
</body>

<!-- 公共字段显示格式数据 -->
<%@include file="../jsCommon/filedDisplay.jsp" %> 

<%@ include file="../js/LoadRebate.jsp" %>

<%@ include file="../js/LoadCombo.jsp" %>

<script type="text/javascript">
//监听表单提交
layui.use('form', function(){
	  var form = layui.form;
	  form.on('submit(formDemo)',function(){
		  	//debugger
			var url="createPurchaseApply";
			var param=$("#form1").serialize();
			console.log(param);
			$.post(url,param,function(result){
				if(result.code==0){
					layer.msg("创建申请单成功");
				}else{
					layer.alert(result.msg);
				}
			});
			//保存收件人信息到物流信息
			var url="addLogisticsInformation";
			// debugger;
			$.post(url,param,function(result){
				if(result.code==0){
					layer.msg("保存收件人信息成功");
				}else{
					layer.msg(result.msg);
				}
			});
}); 
//套餐下拉选事件监听
form.on('select(combofilter)', function(data){
	  //console.log(data.elem); //得到select原始DOM对象
	  //console.log(data.value); //得到被选中的值
	 // console.log(data.othis); //得到美化后的DOM对象
	//debugger
	var param={id:data.value};
	$.getJSON("findComboById",param,function(result){
		if(result.code==0){
			console.log(result.data)
			//debugger
			$("#comboName").val(result.data[0].name);
			$("#comboDesc").val(result.data[0].comboDesc);
			layui.use('form', function(){
				  var form = layui.form;
				form.render(); //更新全部
				});
		}
	});
	});    
//返佣下拉选事件监听
form.on('select(rebatefilter)', function(data){
	  //console.log(data.elem); //得到select原始DOM对象
	  //console.log(data.value); //得到被选中的值
	 // console.log(data.othis); //得到美化后的DOM对象
	//debugger
	var param={id:data.value};
	$.getJSON("findRebateRuleById",param,function(result){
		if(result.code==0){
			var data=result.data[0];
			//console.log(result.data)
			debugger
			$("#rebateTypeId").val(data.rebateType);
			$("#rebateNumId").val(data.rebateNum);
			layui.use('form', function(){
				  var form = layui.form;
				form.render(); //更新全部
				});
		}
	});
	});    
});
//表格加载
$(function(){
		//debugger;
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#PurchaseApply',
				url:'showPurchaseApplyOrdeList',
				id: 'idPurchaseApply',
				cellMinWidth:120,
				page:true, 
				cols:[[
				/*  {field:'id',type:'checkbox',title:'ID',sort: true, fixed: 'left'}, */
			     {title:'序号',templet: '#indexTpl',width:60},
				 {field:'code','title':'采购单号',width:120,sort:true},
				 {field:'location','title':'归属地',width:100,sort:true},
				 {field:'number','title':'数量',width:80,sort:true},
				 {field:'orderAmount','title':'订单金额',width:80,sort:true},
				 {field:'rebateType','title':'返佣类型',width:100,sort:true,templet: '#titleTpl2'},
				 {field:'rebateNum','title':'返佣详情',width:100,sort:true,templet: '#titleTpl3'},
				 {field:'payType','title':'支付方式',width:100,sort:true,templet: '#titleTpl4'},
				 {field:'type','title':'采购类型',width:100,sort:true,templet: '#titleTpl'},
				 {field:'operator','title':'运营商',width:100,sort:true,templet: '#titleTpl6'},
				 {field:'comboName','title':'流量套餐',width:100,sort:true},
				 {field:'comboinfo','title':'套餐描述',width:120,sort:true},
				 {field:'apkVesion','title':'APK版本号',width:120,sort:true},
				 {field:'color','title':'颜色',width:120,sort:true},
				 {field:'distributorName','title':'经销商名称',width:100,sort:true},
				 {field:'distributorIdentity','title':'经销商身份',width:100,sort:true},
				 {field:'applicant','title':'申请人',width:100,sort:true,templet: '#titleTpl11'},
				 {field:'applicationDate','title':'申请时间',width:100,sort:true},
				 {field:'confirmStatus','title':'状态',width:100,sort:true,templet: '#titleTpl10'},
				 {field:'dismissal','title':'驳回原因',width:100,sort:true},
			     {fixed: 'right', title: ' 操作', align:'center',width:140, toolbar: '#barTools'}
				]],
			});
			//查询提交的表单数据
 		    var $ = layui.$, active = {
		        reload: function(){
		        	console.log("do reload by query......");
		            table.reload('idPurchaseApply', {
		                where: {
		                	code:$('#codeId').val(),
							distributorName:$('#distributorNameId').val(),
							status:$('#statusId').val(),
							type:$('#typeId').val(),
							applicant:$('#applicantId').val(),
							combo:$('#comboId').val(),
							landBusiness:$('#landBusinessId').val() ,
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
			  table.on('tool(Apply)', function(obj){
			    var data = obj.data;//得到所在行所有键值
			    //console.log(data);
			    if(obj.event==="cancel"){
					var param = {
								"id":data.id,
								"code":data.code,
								}; 
					 console.log(param);
				    $.ajax({
				 	 	type: "POST",
				   		url: "cancelPurchaseApplyBySelect",
				   	 	data: param,
				   	 	success: function(result){
					   	 	if(result.code==0){
					 			layer.msg("取消成功");
					 			//刷新数据表格
							    tableIns.reload( {page: {curr: 1 //重新从第 1 页开始
							    	}});  
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
						   		url: "deletePurchaseApplyBySelect",
						   	 	data: param,
						   	 	success: function(result){
						   	 	 if(result.code==0){
							 			layer.msg("删除成功");
							 		}else{
							 			layer.msg(result.msg);
							 		}
						     	  }
						     });
					        obj.del();
					        layer.close(index);
			      });
			    } else if(obj.event === 'reapply'){
			    	 layer.confirm('确认是否重新申请', function(index){
					  	var param = {"code":data.code}; 
					  	console.log(param);
							 $.ajax({
							 	url:"reapplyPurchaseApplyBySelect", 
							 	type:"post", 
							 	data:param, 
							 	async: false,
							 	dataType:"json",
							 	success:function (result){
							 		if(result.code==0){
							 			layer.msg("申请成功");
							 			//刷新数据表格
									    tableIns.reload( {page: {curr: 1 //重新从第 1 页开始
									    	}});  
							 		}else{
							 			layer.msg(result.msg);
							 		}
							 	}
							 });
							 layer.close(index);//关闭弹窗
			    	 });
			 }
	 	/* 	//刷新数据表格
		    tableIns.reload( {page: {curr: 1 //重新从第 1 页开始
		    	}}); */  
				  });  
		});
		
	})
</script>

<script type="text/html" id="barTools">
	{{#  if(d.confirmStatus === 3){ }}
   			<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="reapply">重新申请</a>
	{{#  } else if(d.confirmStatus === 2){ }}
   			<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="del">删除</a>
    {{#  } else if(d.confirmStatus === 1){ }}
  			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="cancel">取消</a>
    {{#  } else if(d.confirmStatus === 0){ }}
			<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="reapply">重新申请</a>
  			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
    {{#  } }}
</script>
</html>
