<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>

		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>卡片管理-我的卡片</title>
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
		<script src="vendor/layui/layui.js"></script>
		<script src="js/public.js" ></script>
	</head>

	<body class="page-body">
		<h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：卡片管理&gt;我的卡片
        </h5>
		<div class="filter_content">
			<form action="" method="post">
				<div class="filter_left">
					<div class="usercode">

						<span id="">
	 	    		ICCID/用户自编码
	 	    	</span>
						<input type="text" name="" placeholder="查询ICCID/用户自编码" id="" value="" />

					</div>

					<div class="filter_can">
						<span>落地商</span>
						<select name="" id="">
							<option value="">全部</option>
							<option value="">联通卡</option>
							<option value="">移动卡</option>
							<option value="">电信卡</option>
						</select>
					</div>
					<div class="filter_kind">
						<span>流量套餐</span>
						<select name="" id="">
							<option value="">全部</option>
							<option value="">套餐有什么</option>
							<option value="">就显示什么</option>
							<option value="">很多很多</option>
						</select>
					</div>
					<div class="filter_left_btn">
						<span>状态</span>
						<select name="" id="">
							<option>矫正</option>
							<option>停机</option>
							<option>复机</option>
							<option>删除</option>
	
						</select>
					</div>
				</div>
				<div class="filter_right">
					<div class="issuingTime">
						<span>发卡时间：</span>
						<input type="date" name="" id="" value="" />-
						<input type="date" name="" id="" value="" />
					</div>
					<div class="validityTime">
						<span>有效期:</span>
						<input type="date" name="" id="" value="" />
						<input type="date" name="" id="" value="" />

					</div>

					<div class="activationTime">
						<span>激活时间:</span>
						<input type="date" name="" id="" value="" />
						<input type="date" name="" id="" value="" />
					</div>
				</div>
					<div class="form_btn">
						<input type="button" class="btn" name="" id="" value="重置" />
						<input type="button" class="btn btn_search" name="" id="" value="搜索" />
					</div>
			</form>
		</div>
		<div class="filter_left_btn">
						<button>全选</button>
						<button>矫正</button>
						<button>停机</button>
						<button>复机</button>
						<button>删除</button>

					</div>
		 <div class="ibox-content">
	    	<table class="layui-hide" id="cardInfo" lay-data="{id: 'idCardInfo'}" lay-filter="cardInfo"></table>
    	</div>
    	
		<!--contentEnd-->
		<div id="OperatingRecord" class="purchaseOrderModal" style="display: none;">
			<div>
				<span class="modal_title">卡号</span>
				<input type="text" name="cardNumberStart" id="cardNumberStart" />&nbsp;&nbsp;-&nbsp;&nbsp;
				<input type="text" name="cardNumberEnd"  id="cardNumberEnd" />
			</div>
			<div>
				<span class="modal_title">ICCID</span>
				<input type="text" id="iccidStartId" />&nbsp;&nbsp;-&nbsp;&nbsp;<input type="text" id="iccidEndId"/>
			</div>
			<div>
				<span class="modal_title">IMEI</span>
				<input type="text" id="imeiStartId" />&nbsp;&nbsp;- &nbsp;&nbsp;<input type="text" id="imeiEndId" /> 
			</div>
			<div class="ibox-content">
	    		<table class="layui-hide" id="OperatingRecord" lay-data="{id: 'idOperatingRecord'}" lay-filter="OperatingRecord"></table>
    		</div>
    	</div>
	</body>

<script type="text/javascript">
		function showOperatingRecord() {
			layui.use('table',function(){
				var table=layui.table;
				var tableIns = table.render({
					elem:'#OperatingRecord',
					url:'findOperatingRecordList',
					id: 'idOperatingRecord',
					method:'post',
					page:true, 
					cols:[[
						 {field:'id',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
					     {title:'序号',templet: '#indexTpl',width:60},
						 {field:'user','title':'操作人',width:100,sort:true},
						 {field:'operate','title':'操作内容',width:80,sort:true,templet: '#titleTpl0'},
						 {field:'operationDate','title':'操作时间',width:100,sort:true},
						 {fixed: 'right', title: ' 操作', align:'center',width:80, toolbar: '#barTools'}
						]],
				});
			});
			layui.use('layer', function() {
				var layer = layui.layer;
				layer.open({
					type: 1,
					content: $('#OperatingRecord'),
				})
			})
		}
</script>
<!-- 引入公共jsp字段模板 -->
<%@ include file="../jsCommon/baseFiled.jsp" %>
<!-- 卡片状态(0未激活,1已激活,2停机,3预销号,4已销号,5保号)-->
<script type="text/html" id="titleTpl1">
  {{#  if(d.confirmStatus === 0){ }}
				未激活
  {{#  } else if(d.confirmStatus === 1){ }}
   				已激活
  {{#  } else if(d.confirmStatus === 2){ }}
            	停机
  {{#  } else if(d.confirmStatus === 3){ }}
				预销号
  {{#  } else if(d.confirmStatus === 4){ }}
    			已销号
  {{#  } else if(d.confirmStatus === 5){ }}
    			保号
  {{#  } }}
</script>
<!-- 操作记录的内容(1激活,2停机,3套餐变更,4预销号,5销号,6保号,7复机,8矫正,9恢复)-->
<script type="text/html" id="titleTpl0">
  {{#  if(d.operate === 1){ }}
				激活
  {{#  } else if(d.operate === 2){ }}
   				 停机
  {{#  } else if(d.operate === 3){ }}
            	套餐变更
  {{#  } else if(d.operate === 4){ }}
				预销号
  {{#  } else if(d.operate === 5){ }}
    			销号
  {{#  } else if(d.operate === 6){ }}
    			保号
  {{#  } else if(d.operate === 7){ }}
    			复机
  {{#  } else if(d.operate === 8){ }}
    			矫正
  {{#  } else if(d.operate === 9){ }}
    			恢复
  {{#  } }}
</script>
<!-- 实名状态 -->
<script type="text/html" id="titleTpl2">
  {{#  if( d.realNameStatus === 0){ }}
   			<span color="red">否</span>
  {{#  }if( d.realNameStatus === 1){ }}
   				是
  {{#  } }}
</script>
<!-- 限速/断网状态(0正常,1限速,2断网) -->
<script type="text/html" id="titleTpl3">
  {{#  if( d.netStatus === 0){ }}
   			<span color="green">正常</span>
  {{#  }if( d.netStatus === 1){ }}
   			<span color="yellow">限速</span>
  {{#  }if( d.netStatus === 2){ }}
   			<span color="red">断网</span>
  {{#  } }}
</script>
<script type="text/javascript">
	$(function(){
	//debugger;
		/* 划卡请求
		$("#outlibrary").on("click",".out-btn",function(){
			var param = {"code":$("#outlibrary").data("code")}; 
			console.log(param);
			layer.close( $("#outlibrary").data("index"));
			
			*此处还有代码未完成
			
		});*/
	layui.use('table',function(){
		
		var table=layui.table;
		var tableIns = table.render({
			elem:'#cardInfo',
			url:'findMyCardList',
			id: 'idCardInfo',
			method:'post',
			cellMinWidth:120,
			page:true, 
			cols:[[
				 {field:'id',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:60},
				 {field:'id','title':'卡片ID',width:120,sort:true},
				 {field:'type','title':'卡片类型',width:100,sort:true,templet: '#titleTpl'},
				 {field:'iccid','title':'ICCID',width:100,sort:true},
				 {field:'imei','title':'IMEI',width:100,sort:true},
				 {field:'userId','title':'用户ID',width:100,sort:true},
				 {field:'operator','title':'运营商',width:120,sort:true,edit:'text',templet: '#titleTpl6'},
				 {field:'location','title':'归属地',width:120,sort:true,edit:'text'},
				 /** 卡片状态(0未激活,1已激活,2停机,3预销号,4已销号,5保号)
				     */
				 {field:'cardStatus','title':'卡片状态',width:80,sort:true,templet: '#titleTpl1'},
				 {field:'realNameStatus','title':'实名状态',width:80,sort:true,templet: '#titleTpl2'},
				 {field:'comboName','title':'流量套餐',width:100,sort:true},
				 
				 {field:'flowRate','title':'已用流量(单位MB)',width:120,sort:true},
				 {field:'surplusFlow','title':'剩余流量(单位MB)',width:120,sort:true},
				 
				 {field:'validDate','title':'有效日期',width:100,sort:true},
				 {field:'dispenseTime','title':'发卡时间',width:100,sort:true},
				 {field:'activationTime','title':'激活时间',width:100,sort:true},
				 {field:'clientId','title':'客户id',width:100,sort:true},
				 {field:'clientName','title':'客户名称',width:100,sort:true},
				 {field:'roleid','title':'权限ID',width:100,sort:true},
				 {field:'sinceCode','title':'用户自编码',width:100,sort:true},
				 {field:'rechargeTime','title':'最后充值时间',width:100,sort:true},
				 {field:'rulesName','title':'限速规则名',width:100,sort:true},
				 
				 {field:'speedVal','title':'限速阈值(单位MB)',width:100,sort:true},
				 {field:'limitUp','title':'限速(上)(单位kB)',width:100,sort:true},
				 {field:'limitDown','title':'限速(下)(单位kB)',width:100,sort:true},
				 {field:'broeckNetwork','title':'断网阈值(单位MB)',width:100,sort:true},
				 /** 限速/断网状态(0正常,1限速,2断网)
				     */
				 {field:'netStatus','title':'限速/断网状态',width:100,sort:true,templet: '#titleTpl3'},
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
			 // 显示操作记录
		    if(obj.event === 'checkOperation'){
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
   			<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="checkOperation">查看</a>
	{{#  }  }}
</script>
<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
<script type="text/html" id="barTools">
  {{#  if(d.confirmStatus === 0){ }}
				未激活
  {{#  } else if(d.confirmStatus === 1){ }}
 		 <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat">停机</a>
 		 <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat">矫正</a>
 		 <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat">套餐变更</a>
  {{#  } else if(d.confirmStatus === 2){ }}
         <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat">复机</a>
  {{#  } else if(d.confirmStatus === 3){ }}
		 <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat">销号</a>
		 <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat">保号</a>
  {{#  } else if(d.confirmStatus === 4){ }}
    			已销号
  {{#  } else if(d.confirmStatus === 5){ }}
		 <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat">恢复</a>
  {{#  } }}
</script>
</html>