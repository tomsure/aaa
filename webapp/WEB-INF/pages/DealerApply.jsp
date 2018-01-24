<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>订单管理-经销商申请</title>
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
	
	
    <h5 class="position-title">当前位置：订单管理&gt;经销商采购</h5>

       <!--contentBegin-->  
        <div id="content" >
       
    <div class="search-box check-btn">
        <div class="check-btn">
        	<button id="dealetApply" class="btn btn-default" onclick="">申请</button>
        	
        </div>
       
    </div>
    

    <div class="ibox-content">
       		
		<table class="table-hide" id="dealerApplyTable" lay-data="{id: 'idApply'}" lay-filter="Apply"></table>
       
    </div>
</div>
   <!--申请弹窗开始-->
   	   <div id="modalBox" class="modal_content" >
   	   	 <p>
   	   	 	<span class="boxTitle">采购单号</span>
   	   	 	<input type="text" />
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle" style="margin-right: 25px;">运营商</span>
   	   	 	<select name="" id="">
   	   	 		<option value="">请选择</option>
   	   	 		<option value="">移动</option>
   	   	 		<option value="">电信</option>
   	   	 		<option value="">联通</option>
   	   	 	</select>
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle" style="margin-right: 37px;">数量</span>
   	   	 	<input type="text" />
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle">订单金额</span>
   	   	 	<input type="text" />
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle">支付方式</span>
   	   	 	<select name="" id="">
   	   	 		<option value="">请选择</option>
   	   	 		<option value="">余额</option>
   	   	 		<option value="">信用</option>
   	   	 		
   	   	 	</select>
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle">采购类型</span>
   	   	 	<select name="" id="">
   	   	 		<option value="">请选择</option>
   	   	 		<option value="">设备</option>
   	   	 		<option value="">卡片</option>
   	   	 		<option value="">一体机</option>
   	   	 	</select>
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle">流量套餐</span>
   	   	 	<select name="" id="">
   	   	 		<option value="">请选择</option>
   	   	 		<option value="">套餐1</option>
   	   	 		<option value="">套餐2</option>
   	   	 		<option value="">套餐3</option>
   	   	 		<option value="">套餐4</option>
   	   	 	</select>
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle">选择经销商</span>
   	   	 	<input id="selectBtn" type="button" class="btn"  value="选择" style="color: white; background-color: dodgerblue;width:80px;height: 30px;"/>
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle">返佣规则</span>
   	   	 	<select name="" id="">
   	   	 		<option value="">请选择</option>
   	   	 		<option value="">规则1</option>
   	   	 		<option value="">规则2</option>
   	   	 		<option value="">规则3</option>
   	   	 	</select>
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle" style="vertical-align: top;">套餐描述</span>
   	   	 	<textarea name="" rows="5" cols="30"></textarea>
   	   	 </p>
   	   	   <div class="modal_btn">
   	   	   	  <button class="btn btn_ok">确定</button>
   	   	   	  <button class="btn btn_cancel">取消</button>
   	   	   	  <button class="btn btn_reset">重置</button>
   	   	   </div>
   	   </div>
   	     <!--选择经销商弹窗开始-->
   	     	 	 <div id="selectDealer" class="selectDealerFile" style="display: none;position: absolute;">
                
                	 	<p>
                	 		<div class="dataBox">
                	 		<input type="checkbox" /> <input type="text" name="" id="" value="" />
                	 	    </div>
                	 	    <div class="dataBox">
                	 		<input type="checkbox" /> <input type="text" name="" id="" value="" />
                	 	    </div>
                	 	    <div class="dataBox">
                	 		<input type="checkbox" /> <input type="text" name="" id="" value="" />
                	 	    </div>
                	 	</p>
                	     <div class="bottom_btn_1" style="clear: left;">
					<input type="submit" class="btn btn_ok" value="确定" />
					<input type="button" class=" btn btn_cancel " value="取消" />
					<input type="reset" class=" btn  btn_reset " value="重置" style="width: 80px;" />
				</div>
                	 	   
                	 	
                	 </div>
   	     <!--选择经销商弹窗结束-->
   <!--申请弹窗结束-->

</body>
<script type="text/html" id="titleTpl">
  {{#  if(d.status === 1){ }}
   				 启用
  {{#  } else if(d.status === 2){ }}
            	禁用
  {{#  } }}
</script>
<script type="text/html" id="titleTpl2">
  {{#  if(d.status === 1){ }}
   				减少
  {{#  } else if(d.status === 2){ }}
            	赠送
  {{#  } else if(d.status === 3){ }}
				增加
  {{#  } else if(d.status === 4){ }}
    		
  {{#  } else if(d.status === 5){ }}
    			
  {{#  } }}
</script>
<script type="text/html" id="titleTpl3">
  {{#  if(d.installment === 1){ }}
   				是
  {{#  } else if(d.installment === 2){ }}
            	否
  {{#  } }}
</script>
<script type="text/html" id="titleTpl4">
  {{#  if(!(d.accountTime)){ }}
  {{#  } else { }}
  {{formatDate(new Date(d.accountTime))}}
  {{#  } }}
</script>
<script type="text/javascript">
$(function(){
	layui.use('table',function(){
		var table=layui.table;
var tableIns = table.render({
			elem:'#dealerApplyTable',
			url:'showApply',
			id: 'idApply',
			cellMinWidth:120,
			page:true,
			cols:[[
			 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
		     {title:'序号',templet: '#indexTpl',width:80},
			 {field:'purchasesNum','title':'采购单号',width:120,sort:true},
			 {field:'operator','title':'运营商',width:80,sort:true,edit:'text'},
			 {field:'','title':'归属地',width:80,sort:true,edit:'text'},
			 {field:'amount','title':'数量',width:120,sort:true},
			 {field:'orderMoney','title':'订单金额',width:80,sort:true},
			 {field:'rebateType','title':'返回类型',width:120,sort:true},
			 {field:'rebateRule','title':'返佣值',width:80,sort:true},
			 {field:'payway','title':'支付方式',width:120,sort:true,edit:'text'},
			 {field:'procurementType','title':'采购类型',width:200,sort:true,edit:'text'},
			 {field:'dataPlan','title':'流量套餐',width:180,sort:true},
			 {field:'apk','title':'APK版本号',width:180,sort:true,edit:'text'},
			 {field:'color','title':'颜色',width:180,sort:true,edit:'text'},
			 {field:'dealerName','title':'经销商名称',width:180,sort:true,edit:'text'},
			 {field:'position','title':'身份',width:180,sort:true,edit:'text'},
			 {field:'mealDescribe','title':'套餐描述',width:180,sort:true,edit:'text'},
			 {field:'proposer','title':'申请人',width:180,sort:true,edit:'text'},
			 {field:'applicationTime','title':'申请时间',width:180,sort:true,edit:'text'},
			 {field:'status','title':'状态',width:180,sort:true,edit:'text'},
			 {field:'rejectCause','title':'驳回原因',width:180,sort:true,edit:'text'},
		     {fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
			]],
		});
		    var $ = layui.$, active = {
	        reload: function(){
	            table.reload('idApply', {
	                where: {
/* 	               	 activityName : $("#activityName").val(),
	            	 timeS : $("#timeS").val(),
	            	 timeE : $("#timeE").val(),
	            	 activityType : $("select[id=activityType]").get(0).selectedIndex,
	            	 status : $("select[id=status]").get(0).selectedIndex,
	            	 installment : $("select[id=installment]").get(0).selectedIndex */
	                }
	            });
	        }
	    };
		//监听搜索查询
		$('#search').on('click', function(){
		    var type = $(this).data('type');
		    active[type] ? active[type].call(this) : '';
		});
		    
		
			//监听批量删除按钮
		$('#btn_del').on('click', function(){
		      layer.confirm('确认是否删除', function(index){
		    	  layer.close(index);
			var checkStatus = table.checkStatus('idRule'); //idRule即为基础参数id对应的值
			if(checkStatus.data.length!=0){
				var chk_value=[];
				for (var i = 0; i < checkStatus.data.length; i++) {
					chk_value.push(checkStatus.data[i].id);
				}
				 var param = {"titles":chk_value}; 
			    $.ajax({
			 	 	type: "POST",
			   		url: "deleteRuleBySelect",
			   	 	data: param,
			   	 	success: function(data){
			     	  }
			     });
			    //表格重载
			    tableIns.reload({
			    	  where: { //设定异步数据接口的额外参数，任意设
/* 			               	 activityName : $("#activityName").val(),
			            	 timeS : $("#timeS").val(),
			            	 timeE : $("#timeE").val(),
			            	 activityType : $("select[id=activityType]").get(0).selectedIndex,
			            	 status : $("select[id=status]").get(0).selectedIndex,
			            	 installment : $("select[id=installment]").get(0).selectedIndex */
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
		//监听批量启用禁用按钮
		$("button[name='updatestat']").on('click', function(){
			var checkStatus = table.checkStatus('idRule'); //idRecharge即为基础参数id对应的值
			if(checkStatus.data.length!=0){
				var chk_value=[];
				 var statu = 0;
				for (var i = 0; i < checkStatus.data.length; i++) {
					chk_value.push(checkStatus.data[i].id);
				}
				 var param = {"titles":chk_value,"status":$(this).val()}; 
			    $.ajax({	
			 	 	type: "POST",
			   		url: "updateRuleStatus",
			   	 	data: param,
			   	 	success: function(data){
			     	  }
			     });
			    tableIns.reload({
			    	  where: { //设定异步数据接口的额外参数，任意设
/* 			               	 activityName : $("#activityName").val(),
			            	 timeS : $("#timeS").val(),
			            	 timeE : $("#timeE").val(),
			            	 activityType : $("select[id=activityType]").get(0).selectedIndex,
			            	 status : $("select[id=status]").get(0).selectedIndex,
			            	 installment : $("select[id=installment]").get(0).selectedIndex */
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
		  table.on('edit(Rule)', function(obj){
		    var value = obj.value, //得到修改后的值
		    data = obj.data, //得到所在行所有键值
		    field = obj.field; //得到字段
		    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
		    $.ajax({
		 	 	type: "POST",
		   		url: "editRule",
		   	 	data: "value="+value+"&field="+field+"&id="+data.id,
		   	 	success: function(data){
		   	 	 
		     	  },error:function(date){
		     		 layer.msg("失败");
		     	  }
		     });
		  });
		  
		//监听工具条
		  table.on('tool(Rule)', function(obj){
		    var data = obj.data;
		    var checkStatus = table.checkStatus('idRule');
		    console.log(checkStatus.data);
		    if(obj.event === 'del'){
		      layer.confirm('确认是否删除', function(index){
						var chk_value=[data.id];
						 var param = {"titles":chk_value}; 
					    $.ajax({
					 	 	type: "POST",
					   		url: "deleteRuleBySelect",
					   	 	data: param,
					   	 	success: function(data){
					     	  }
					     });
		        obj.del();
		        layer.close(index);
		      });
		    } else if(obj.event === 'updatestat'){
		 	 var chk_value =[];
		 	 var statu = 0;
		 	 	 chk_value.push(data.id);
		 	     statu=data.status==1?2:1;
		  var param = {"titles":chk_value,"status":statu}; 
		 $.ajax({
		 	url:"updateRuleStatus", 
		 	type:"post", 
		 	data:param, 
		 	async: false,
		 	dataType:"json",
		 	success:function (date){
		 	}
		 });
		    tableIns.reload({
		    	  where: { //设定异步数据接口的额外参数，任意设
/* 		               	 activityName : $("#activityName").val(),
		            	 timeS : $("#timeS").val(),
		            	 timeE : $("#timeE").val(),
		            	 activityType : $("select[id=activityType]").get(0).selectedIndex,
		            	 status : $("select[id=status]").get(0).selectedIndex,
		            	 installment : $("select[id=installment]").get(0).selectedIndex */
		    	  }
		    	  ,page: {
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
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat1">确认订单</a>
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat3">驳回</a>
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat4">通过</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

</html>
