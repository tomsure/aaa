<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>卡片管理-经销商充值缴费</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="css/homeAbout/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<link rel="stylesheet" type="text/css" href="css/customModal.css"/>
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="css/table_public.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/layui/layui.js"></script>
<script type="text/javascript" src="js/data_table.js"></script>
<script type="text/javascript" src="js/public.js"></script>

</head>
 
<body class="page-body">
	      <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：卡片管理&gt;大客户充值缴费
        </h5>
	   <div class="search-box">
    	   <form>
            <div>
                <span>充值单号：</span>
                <input id="rechargeNum" type="text" class="form-control" name="" value="" placeholder="查询客户编号">
            </div>
             <div id="" class="">
             	<span>经销商名称:</span>
             	<input type="text" class="form-control" placeholder="查询经销商名称" name="" id="dealerName" value="" />
             </div>
             <div style="margin-left: 0px;">
                <span>iccid：</span>
                 <input type="text" class="form-control" placeholder="查询iccid" name="" id="iccid" value="" />
             </div>
             <div style="margin-left: 0px;">
               <span>运营商：</span>
                <select class="form-control" id="operator" name="">
                	
                	<option>全部</option>
                	<option>移动</option>
                	<option>联通</option>
                	<option value="">电信</option>
               	    
                </select>
            </div>
            <div class="">
            	<span id="">
            		归属地：
            	</span>
            	<select name="" id="location" class="form-control">
            		<option value="">全部</option>
            		<option value="">广东</option>
            		<option value="">深圳</option>
            		<option value="">东莞</option>
            	</select>
            </div>
             <div class="">
            	<span id="">
            		状态：
            	</span>
            	<select name="" id="status" class="form-control">
            		<option value="">全部</option>
            		<option value="">待审核</option>
            		<option value="">已审核</option>
            		<option value="">已驳回</option>
            	</select>
            </div>
             <div class="">
             	 <input type="reset" class="btn btn_reset" name="" id="" value="重置" style="margin-left: 30px;"/>
             <input id="search" data-type="reload" type="button" class="btn btn_search" value="搜索" style="height:34px;margin-left: 30px;">
            
             </div>
        </form>
          
    </div>
    
       
        <div class="check-btn">
        	<button class="btn btn-default" id="addPayment" onclick="">新增</button>
        	<button class="btn btn-default" name="updatestat" value="2" >审核</button>
           	<button id="btn_del" class="btn btn-default" onclick="">删除</button>
        </div>
         
     <h5 class="position-title">当前位置：首页>卡片管理>经销商充值缴费</h5>

       <!--contentBegin-->  
        <div id="content" >
            <table class="table-hide" id=dealePayment lay-data="{id: 'idDealePayment'}" lay-filter="DealePayment"></table>
		</div>
			 <!--contentEnd-->
   <!--新增弹窗开始-->
   	   <div class="addDealerModal" id="addDlealer">
   	   	  <form class="" action="" id="form1">
   	   	  <p style="margin-left: 0;"><span class="" >充值单号:</span><input type="text" name="rechargeNum"/></p>
   	   	  <p>
   	   	   		<span id="">
            		运营商：
            	</span>
            	<select name="operator" id="status" class="form-control">
            		<option value="0">请选择</option>
            		<option value="1">移动</option>
            		<option value="2">联通</option>
            		<option value="3">电信</option>
            </select>
   	   	  </p>
   	   	  <p>
   	   	   		<span id="">
            		归属地
            	</span>
            	<select name="location" id="status" class="form-control">
            		<option value="0">请选择</option>
            		<option value="1">广东</option>
            		<option value="2">深圳</option>
            		<option value="3">东莞</option>
            </select>
   	   	  </p>
   	   	  <p><span class=" addtitle1">订单金额</span><input type="text" placeholder="订单金额" name="indentMoney"/></p>
   	   	  <p>
   	   	   		<span id="">
            		支付方式：
            	</span>
            	<select name="payWay" id="status" class="form-control">
            		<option value="0">请选择</option>
            		<option value="1">余额</option>
            		<option value="2">信用</option>
            	</select>
   	   	  </p>
   	   	  <p>
   	   	  	<span class=" " style="margin-right: 30px;">经销商名称</span><input type="text" placeholder="输入经销商名称" name="dealerName"/>
   	   	  </p>
   	   	  <p>
   	   	  	<span class="addtitle1 ">批量</span><input type="text" placeholder="输入开始号" name="iccidStart"/>--<input type="text" placeholder="输入结束号" name="iccidEnd"/>
   	   	  </p>
   	   	  <p>
   	   	  	<span class="addtitle1 ">单个</span><input type="text" placeholder="单个以,号区分" name="single" style="width:100px;height:30px;" />
   	   	  </p>
   	   	  </form>
   	       <div id="applyBtn" class="modal_btn">
   	   	    	<button class="btn btn_ok">确定</button>
   	   	    	<button class="btn btn_cancel ">取消</button>
   	   	    	<button class="btn btn_reset">重置</button>
   	   	    </div>	   
   	   </div>
   	   
   <!--新增弹窗结束--><!----><!---->
</body>
   <!--iccid查询弹窗开始-->
<div class="addDealerModal" id="selecticcid">
		<p>
   	   	  <span class="addtitle1 ">ICCID:</span>
   	   	  <a href="javascript:;" id='a1'></a>
   	   	</p>
   	   	<p>
   	   	  <span class="addtitle1 ">ICCID:</span>
   	   	  <h5 id='a2'></h5>
   	   	</p>
</div>
<!--iccid查询弹窗结束-->
<script type="text/html" id="titleTpl4">
  {{#  if(!(d.declarationTime)){ }}
  {{#  } else { }}
  {{formatDate(new Date(d.declarationTime))}}
  {{#  } }}
</script>
<script type="text/html" id="titleTpl3">
  {{#  if(d.operator===1){ }}
		移动
  {{#  } else if(d.operator===2){ }}
       	联通
  {{#  } else if(d.operator===3){ }}
       	电信
  {{#  } }}
</script>
<script type="text/html" id="titleTpl2">
  {{#  if(d.status===1){ }}
		待审核
  {{#  } else if(d.status===2){ }}
       	已审核
  {{#  } else if(d.status===3){ }}
       	已驳回
  {{#  } }}
</script>
<script type="text/html" id="titleTpl1">
  {{#  if(d.location===1){ }}
		广东
  {{#  } else if(d.location===2){ }}
                       深圳
  {{#  } else if(d.location===3){ }}
       	东莞
  {{#  } }}
</script>
<script type="text/html" id="titleTpl">
  {{#  if(d.payWay===1){ }}
		信用额度
  {{#  } else if(d.payWay===2){ }}
                       余额
  {{#  } else if(d.payWay===3){ }}
       	支付宝
  {{#  } }}
</script>
<script type="text/javascript">
function showIccid(data){
	layui.use('layer',function(){
		$("#a1").text;
		$("#a2").text;
		$("#a1").text(data.iccidStart+"--"+data.iccidEnd);
		var array_element = "";
		var arr = data.single.split(",");
		for (var i = 0; i < arr.length; i++) {
			
			var array_element;
			if(i+1==arr.length){
			array_element= array_element+arr[i];
			}else{
			array_element= array_element+arr[i]+",";
			}
			
		}
		$("#a2").text(array_element);
		var layer=layui.layer;
		    layer.open({
		    	type:1,
		    	title:['查看','font-size:18px;font-weight:800;'],
		    	area:['440px','700px'],
		    	content:$('#selecticcid'),
		    })
	})
}
	$(function(){
		//提交按钮.
		$("#applyBtn").on('click',".btn_ok",function(){
			var url="addDealerRecharge";
			var param=$("#form1").serialize();
			$.post(url,param,function(result){
				//console.log(result.date);
				if(result.code==0){
					layer.msg("新增成功");
					//layer.close(layer.index);
					window.location.reload();
				}else{
					layer.msg(result.msg);
				}
			});
		}); 
		
		//加载数据
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#dealePayment',
				url:'getDealerRechargeList',
				id: 'idDealePayment',
				cellMinWidth:120,
				page:true,
				cols:[[
				 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:80}
			      ,{field:'status', width:120, title: '状态',sort:true,templet: '#titleTpl2'}
			      ,{field:'rechargeNum', width:120, title: '充值单号', sort: true}
			      ,{field:'operator', width:120, title: '运营商' , sort:true,templet: '#titleTpl3'}
			      ,{field:'location', width:120, title:'归属地',  sort:true,templet: '#titleTpl1'} 
			       ,{field:'count', width:120, title: '数量',sort:true}
			      ,{field:'indentMoney', width:120, title: '订单金额' ,sort:true}
			      ,{field:'payWay', width:120, title: '支付方式' ,sort:true,templet: '#titleTpl'}
			      ,{field:'dealerName', width:120, title: '经销商名称',sort:true}			
			      ,{field:'iccid', width:120, title: 'iccid',sort:true,templet: '#selectTpl'}
			      ,{field:'rejectCause', width:120, title: '驳回原因',sort:true,edit:'text'}
/* 			      ,{field:'single', width:120, title: '单个',sort:true}
			      ,{field:'iccidStart', width:120, title: '怎么',sort:true, space: true}
			      ,{field:'iccidEnd', width:120, title: '没有',sort:true,space: true} */
			      ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
				]],
			})
 		    var $ = layui.$, active = {
		        reload: function(){
		            table.reload('idDealePayment', {
		                where: {
		                	rechargeNum: $('#rechargeNum').val(),
		                	dealerName: $('#dealerName').val(),
		                	iccid: $('#iccid').val(),
		                	operator: $('#operator').get(0).selectedIndex,
		                	location: $('#location').get(0).selectedIndex,
		                	status: $('#status').get(0).selectedIndex
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
				var checkStatus = table.checkStatus('idDealePayment'); //test即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					}
					 var param = {"titles":chk_value}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "delDealerRechargeById",
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
				} else{
					layer.msg("请选择至少一条数据");
				}
			});
			  });
			//监听批量改变状态按钮
			$("button[name='updatestat']").on('click', function(){
				var checkStatus = table.checkStatus('idDealePayment'); 
				if(checkStatus.data.length!=0){
					var chk_value=[];
					 var statu = 0;
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					}		
					 var param = {"titles":chk_value,"status":$(this).val()}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "setDealerRechargeStatusById",
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
			
			//监听单元格编辑
			  table.on('edit(DealePayment)', function(obj){
			    var value = obj.value, //得到修改后的值
			    data = obj.data, //得到所在行所有键值
			    field = obj.field; //得到字段
			    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
			    $.ajax({
			 	 	type: "POST",
			   		url: "editDealerRecharge",
			   	 	data: "value="+value+"&field="+field+"&id="+data.id,
			   	 	success: function(data){
			   	 	 
			     	  },error:function(date){
			     		 layer.msg("失败");
			     	  }
			     });
			  });
			  
			//监听工具条
			  table.on('tool(DealePayment)', function(obj){
			    var data = obj.data;
			    var checkStatus = table.checkStatus('idDealePayment');
			    console.log(checkStatus.data);
			    if(obj.event === 'del'){
			      layer.confirm('确认是否删除', function(index){
							var chk_value=[data.id];
							 var param = {"titles":chk_value}; 
						    $.ajax({
						 	 	type: "POST",
						   		url: "delDealerRechargeById",
						   	 	data: param,
						   	 	success: function(data){
						     	  }
						     });
			        obj.del();
			        layer.close(index);
			      });
			    } else if(obj.event === 'updatestat'){
			 	 var chk_value =[];
			 	 var statu = 2;
			 	 	 chk_value.push(data.id);
			  var param = {"titles":chk_value,"status":statu}; 
			 $.ajax({
			 	url:"setDealerRechargeStatusById", 
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
				 	 var statu = 3;
				 	 	 chk_value.push(data.id);
				  var param = {"titles":chk_value,"status":statu}; 
				 $.ajax({
				 	url:"setDealerRechargeStatusById", 
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
				    }else if(obj.event === 'selects'){
				    	showIccid(data);
					    }
			  });
			
		});
	})
</script>

<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
<script type="text/html" id="selectTpl">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="selects">查询</a>
</script>
<script type="text/html" id="barTools">
{{#  if(d.status==1){ }}
<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
{{#  } else{ }}
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat">审核</a>
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="reject">驳回</a>
{{#  } }}
</script>
</html>
