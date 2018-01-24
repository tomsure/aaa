<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>订单管理-采购单发货</title>
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
<script type="text/javascript" src="js/data_table.js">
	
</script>
</head>

<body class="page-body">
	
	 <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<a href="javascript:void(0)" onclick="location.reload()" style="float: right;"><i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;" title="刷新"></i> </a>    	 
    	当前位置：订单管理&gt;采购单发货
        </h5>
      

       <!--contentBegin-->  
        <div id="content" >
     
      <!-- 数据表格 -->
	<div class="ibox-content">
    	<table class="layui-hide" id="purchaseOrderDelivery" lay-data="{id: 'idPurchaseOrderDelivery'}" lay-filter="Delivery"></table>
   	</div>
       
</div>
 
   <div id="deliverGoodsModal" class="deliverGoods" style="display: none;">
   	     <form  class="layui-form" action="" id="form2">
   	     	<input type="hidden" name="id" id="deliverId" value="" />
   	     	<input type="hidden" name="code" id="deliverCodeId" value="" />
   	     	<p><span style="margin-right: 20px;">快递公司</span><input type="text" name="expressCompany" id="expressCompanyId" value="" lay-verify="required"/></p>
   	     	<p><span style="margin-right: 20px;">快单单号</span><input type="text" name="expressNumber" id="expressNumberId" value="" lay-verify="required"/></p>
   	     	<p><span style="margin-right: 35px;">收件人</span><input type="text" name="receiver" id="receiverId" value="" lay-verify="required"/></p>
   	     	<p><span style="margin-right: 10px;">收件人电话</span><input type="text" name="receiverPhone" id="receiverPhoneId" value="" lay-verify="required"/></p>
   	     	<p><span style="margin-right: 10px;">收件人地址</span><input type="text" name="receiverAddress" id="receiverAddressId" value="" lay-verify="required"/></p>
   	     	<p><span style="margin-right: 50px;">运费</span><input type="text" name="money" id="moneyId" value="" lay-verify="required"/></p>
   	     </form>
   	     <div class="form_btn">
   	       <button lay-submit class="btn btn_ok"  lay-filter="formDemo2">确定</button>
   	       <button class='btn btn_cancel'>取消</button>
   	       <button class="btn btn_reset">充值</button>
   	     </div>
   </div>
	
</body>
<script type="text/javascript">
function showDeliverInfo(){
  	   layui.use('layer',function(){
  	   	var layer=layui.layer;
  	   	   var index=layer.open({
  	   	   	      type:1,
  	   	   	      area:['400px','350px'],
  	   	   	      title:['物流信息','font-size:18px;weight:800px;'],
  	   	   	      content:$('#deliverGoodsModal')
  	   	   })
  	   	$("#deliverGoodsModal").data("index",index);
  	   })
  }
</script>
<!-- 公共字段显示格式数据 -->
<%@include file="../jsCommon/filedDisplay.jsp" %>
<!-- 保存物流信息 ,监听表单提交 -->
<%@ include file="../js/AddLogisticsInfo.jsp" %>

<script type="text/javascript">
	$(function(){
		
		 $("#deliverGoodsModal").on('click',".btn_cancel",function(){
			 var index=$("#deliverGoodsModal").data("index");
				layer.close(index);
		 });
		
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#purchaseOrderDelivery',
				url:'showPurchaseOrderDelivery',
				id: 'idPurchaseOrderDelivery',
				cellMinWidth:120,
				page:true, 
				cols:[[
				 {field:'id',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:60},
				 {field:'code','title':'采购单号',width:120,sort:true},
				 {field:'landBusiness','title':'落地商',width:100,sort:true},
				 {field:'number','title':'数量',width:80,sort:true},
				 {field:'orderAmount','title':'订单金额',width:80,sort:true},
				 {field:'payType','title':'支付方式',width:100,sort:true,templet: '#titleTpl4'},
				 {field:'type','title':'采购类型',width:100,sort:true,templet: '#titleTpl'},
				 {field:'operator','title':'运营商',width:100,sort:true,templet: '#titleTpl6'},
				 {field:'combo','title':'流量套餐',width:100,sort:true,templet: '#titleTpl7'},
				 {field:'comboinfo','title':'套餐描述',width:120,sort:true},
				 {field:'apkVesion','title':'APK版本号',width:120,sort:true},
				 {field:'color','title':'颜色',width:120,sort:true},
				 {field:'distributorName','title':'经销商名称',width:100,sort:true},
				 {field:'distributorIdentity','title':'经销商身份',width:100,sort:true},
				 {field:'applicant','title':'申请人',width:100,sort:true,},
				 {field:'applicationDate','title':'申请时间',width:100,sort:true},
				 {field:'auditor','title':'审核人',width:100,sort:true,},
				 {field:'outStorePerson','title':'出库人',width:100,sort:true,},
				 {field:'confirmationPerson','title':'确认人',width:100,sort:true,},
				 {field:'outStatus','title':'状态',width:100,sort:true,templet: '#titleTpl5'},
				 {field:'dismissal','title':'驳回原因',width:100,sort:true},
				 {field:'iccid','title':'ICCID/IMEI/一体机',width:100,sort:true,templet: '#checkTpl'},
			     {fixed: 'right', title: ' 操作', align:'center',width:140, toolbar: '#barTools'}
				]],
			});
			
 		  /*   var $ = layui.$, active = {
		        reload: function(){
		        	console.log("do reload by query......"+$('#confirmEndDateId').val());
		            table.reload('idConfirmPurchase', {
		                where: {
		                 /*code:$('#codeId').val(),
							distributorName:$('#distributorNameId').val(),
							status:$('#statusId').val(),
							type:$('#typeId').val(),
							applicant:$('#applicantId').val(),
							combo:$('#comboId').val(),
							landBusiness:$('#landBusinessId').val() ,
							confirmBeginDate:$('#confirmBeginDateId').val().replace("-","/"),
							confirmEndDate:$('#confirmEndDateId').val().replace("-","/")
		              
		        		instal lment:$("#installment").get(0).selectedIndex /* /
		                }
		            });
		            
		        }
		    };
 		 //监听搜索查询
			$('#search').on('click', function(){
			    var type = $(this).data('type');
			    active[type] ? active[type].call(this) : '';
			}); */
 	
			//监听工具条
			  table.on('tool(Delivery)', function(obj){
			    var data = obj.data;
			    // var checkStatus = table.checkStatus('idTest');
			    // console.log(checkStatus.data);
			    console.log(data);
				var chk_value=data.code;
				var param = {"code":chk_value}; 
				console.log("chk_value="+chk_value);
				if(obj.event === 'checkICCID'){
				    $.ajax({
				 	 	type: "POST",
				   		url: "getICCIDBySelect",
				   	 	data: param,
				   	 	success: function(data){
				   	 		
				     	  }
				     });
				    return;
			    }
				//获取并填写物流信息
				if(obj.event === 'deliver'){
					 $("#deliverCodeId").val(chk_value);
					 $.getJSON("getLogisticsInfoByCode",{code:chk_value},function(result){
						 if(result.code==0){
								var data=result.data;
								console.log(data);
							 	$("#deliverId").val(data.id);
							 	$("#deliverCodeId").val(data.code);
							 	$("#expressCompanyId").val(data.expressCompany);
							 	$("#expressNumberId").val(data.expressNumber);
							 	$("#receiverId").val(data.receiver);
							 	$("#receiverPhoneId").val(data.receiverPhone);
							 	$("#receiverAddressId").val(data.receiverAddress);
							 	$("#moneyId").val(data.money);
							}else{
								layer.msg(result.msg);
							}
					 });
				     showDeliverInfo();
			    }
				//获取物流信息
				if(obj.event === 'logistics'){
					 $("#deliverCodeId").val(chk_value);
					$.ajax({
				 	 	type: "POST",
				   		url: "getLogisticsInfoByCode",
				   	 	data: param,
				   	 	success: function(result){
							if(result.code==0){
								var data=result.data;
								console.log(data);
							 	$("#deliverId").val(data.id);
							 	$("#expressCompanyId").val(data.expressCompany);
							 	$("#expressNumberId").val(data.expressNumber);
							 	$("#receiverId").val(data.receiver);
							 	$("#receiverPhoneId").val(data.receiverPhone);
							 	$("#receiverAddressId").val(data.receiverAddress);
							 	$("#moneyId").val(data.money);
							}else{
								layui.msg(result.msg);
							}
				     	  }
					}) ;
				    showDeliverInfo();
				    return;
			    }
			    if(obj.event === 'del'){
			      	layer.confirm('确认是否删除', function(index){
							 var param = {"code":chk_value}; 
						    $.ajax({
						 	 	type: "POST",
						   		url: "deletePurchaseOrderDeliveryBySelect",
						   	 	data: param,
						   	 	success: function(result){
						   	 		if(result.code==0){
						   	 			layui.msg("删除成功");
						   	 		}else{
						   	 			layui.msg(result.msg);
						   	 		}
						     	  }
						     });
			        layer.close(index);
			      });
			    } 
			 	//刷新数据表格
			    tableIns.reload( {page: {
			    	    curr: data.page //重新从第  页开始
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
<script type="text/html" id="barTools">
	{{#  if(d.confirmStatus === 2&&d.outStatus===0){ }}
			<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="deliver">发货</a>
	{{#  } else { }}
			<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="logistics">物流详情</a>
  			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	{{#  } }}
</script>
</html>
