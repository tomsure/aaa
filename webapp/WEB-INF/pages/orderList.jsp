<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>商品管理-商品订单</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap/bootstrap-table.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/layer/layer.min.js" ></script>
<script src="js/public.js" ></script>
<script src="vendor/layui/layui.js"></script>
<script type="text/javascript" src="js/DateFormate.js"></script>
</head>

<body class="page-body">
	
	<h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<a href="javascript:void(0)" onclick="location.reload()" style="float: right;"><i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;" title="刷新"></i> </a>    	 
    	当前位置：商品管理&gt;商品订单
        </h5>
      
  

       <!--contentBegin-->  
        <div id="content" >
         <div class="search-box">
    	   <form>
            <div>
                <span>订单编号：</span>
                <input id="orderNum" type="text" class="form-control" name="" value="" placeholder="查询订单编号">
            </div>
           
            <div>
                <span>商品名称：</span>
                <input id="productName" type="text" class="form-control" name="" value="" placeholder="查询商品名称">
            </div>
            
            <div>
                <span>收件人电话：</span>
                <input id="directionPhone" class="form-control" name="" value="" placeholder="查询收件人电话">
            </div>
            
            <div>
                <span>下单用户：</span>
                <input id="orderUser" type="text" class="form-control" name="" value="" placeholder="查询下单用户">
            </div>
            
           <div style="margin-left: 0px;">
                <span>商品类型：</span>
                <select class="form-control" id="productType" name="" style="width:120px">  
                	<option>全部</option>             	
                	<option>设备+套餐</option>
                	<option>设备</option>
                	<option>空卡</option>  
                	<option>合约机</option> 
                	<option>套餐(含卡)</option>  
                	
                </select>
            </div>
            
            <div style="margin-left: 0px;">
               <span>状态：</span>
                <select class="form-control" id="status" name="">
                	<option>全部</option> 
                	<option>已取消</option>
                	<option>待出库</option>
                	<option>其他</option>
                </select>
            </div>
           
              <div id="">
                	<input type="reset" class="btn btn_reset" name="" id="" value="重置" />
                	<input type="button" class="btn btn_search" data-type="reload" name="" id="search" value="搜索" />
                </div>
             </form>
    </div>
    <div class="search-box check-btn">
        <div class="check-btn">
        	<button class="btn btn-default" name="updatestat" value="2">确认订单</button>
        	<button class="btn btn-default" name="updatestat" value="1">取消订单</button>     
        </div>
    </div>
    
    <div class="">
    	<table id="orderList" class="table-hide" lay-data="{id: 'idOrder'}" lay-filter="Order" ></table>
    </div>
</div>
 <!--contentEnd-->
</body>

<script type="text/html" id="titleTpl1">
  {{#  if(d.productType === 1){ }}
   				 设备+套餐
  {{#  } else if(d.productType === 2){ }}
            	设备
  {{#  } else if(d.productType === 3){ }}
				空卡
  {{#  } else if(d.productType === 4){ }}
    			合约机
  {{#  } else if(d.productType === 5){ }}
    			套餐(含卡)
  {{#  } }}
</script>
<script type="text/html" id="titleTpl">
  {{#  if(d.status === 1){ }}
   				已取消
  {{#  } else if(d.status === 2){ }}
            	待出库
  {{#  } }}
</script>
<script type="text/html" id="titleTpl2">
  {{formatDate(new Date(d.orderTime))}}
</script>
<script type="text/javascript">
$(function(){
	layui.use('table',function(){
		var table=layui.table;
var tableIns = table.render({
			elem:'#orderList',
			url:'showOrderList',
			id: 'idOrder',
			cellMinWidth:120,
			page:true,
			cols:[[
			 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
		     {title:'序号',templet: '#indexTpl',width:80},
			 {field:'productName','title':'商品名称',width:120,sort:true},
			 {field:'price','title':'金额',width:80,sort:true,edit:'text'},
			 {field:'productType','title':'商品类型',width:120,sort:true,templet: '#titleTpl1'},
			 {field:'discount','title':'优惠',width:80,sort:true},
			 {field:'actuallyAmount','title':'实付金额',width:120,sort:true},
			 {field:'ruleName','title':'规则名称',width:80,sort:true},
			 {field:'orderNum','title':'订单编号',width:120,sort:true,edit:'text'},
			 {field:'directionAdd','title':'收件人地址',width:200,sort:true,edit:'text'},
			 {field:'direction','title':'收件人',width:180,sort:true},
			 {field:'directionPhone','title':'收件人电话',width:180,sort:true},
			 {field:'status','title':'状态',width:180,sort:true,edit:'text',templet: '#titleTpl'},
			 {field:'orderUser','title':'下单用户',width:180,sort:true,edit:'text'},
			 {field:'source','title':'来源',width:180,sort:true,edit:'text'},
			 {field:'orderTime','title':'订单时间',width:180,sort:true,edit:'text',templet: '#titleTpl2'},
			 {field:'cancelPers','title':'取消人',width:180,sort:true,edit:'text'},
			 {field:'cancelCause','title':'取消原因',width:180,sort:true,edit:'text'},
		     {fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
			]],
		});
		    var $ = layui.$, active = {
	        reload: function(){
	            table.reload('idOrder', {
	                where: {
	                	orderNum : $("#orderNum").val(),
	                	productName : $("#productName").val(),
	                	directionPhone : $("#directionPhone").val(),
	                	orderUser : $("select[id=orderUser]").val(),
	                	status : $("#status").get(0).selectedIndex,
	                	productType : $("select[id=productType]").get(0).selectedIndex
	                }
	            });
	        }
	    };
		//监听搜索查询
		$('#search').on('click', function(){
		    var type = $(this).data('type');
		    active[type] ? active[type].call(this) : '';
		});
		    
		
 		//监听批量操作按钮
		$("button[name='updatestat']").on('click', function(){
			var checkStatus = table.checkStatus('idOrder'); //idOrder即为基础参数id对应的值
			if(checkStatus.data.length!=0){
				var chk_value=[];
				 var statu = 0;
				for (var i = 0; i < checkStatus.data.length; i++) {
					chk_value.push(checkStatus.data[i].id);
				}
				 var param = {"titles":chk_value,"status":$(this).val()}; 
			    $.ajax({	
			 	 	type: "POST",
			   		url: "updateOrderStatus",
			   	 	data: param,
			   	 	success: function(data){
			     	  }
			     });
			    tableIns.reload({
			    	  where: { //设定异步数据接口的额外参数，任意设
		                	orderNum : $("#orderNum").val(),
		                	productName : $("#productName").val(),
		                	directionPhone : $("#directionPhone").val(),
		                	orderUser : $("select[id=orderUser]").val(),
		                	status : $("#status").get(0).selectedIndex,
		                	productType : $("select[id=productType]").get(0).selectedIndex
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
/* 		  table.on('edit(Rule)', function(obj){
		    var value = obj.value, //得到修改后的值
		    data = obj.data, //得到所在行所有键值
		    field = obj.field; //得到字段
		    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
		    $.ajax({
		 	 	type: "POST",
		   		url: "editOrder",
		   	 	data: "value="+value+"&field="+field+"&id="+data.id,
		   	 	success: function(data){
		   	 	 
		     	  },error:function(date){
		     		 layer.msg("失败");
		     	  }
		     });
		  }); */
		  
		//监听工具条
		  table.on('tool(Order)', function(obj){
		    var data = obj.data;
		    var checkStatus = table.checkStatus('idOrder');
		    if(obj.event === 'updatestat1'){
			 	 var chk_value =[];
			 	 var statu = 1;
			 	 chk_value.push(data.id);
			  var param = {"titles":chk_value,"status":statu}; 
			 $.ajax({
			 	url:"updateOrderStatus", 
			 	type:"post", 
			 	data:param, 
			 	async: false,
			 	dataType:"json",
			 	success:function (date){
			 	}
			 });
			    tableIns.reload({
			    	  where: { //设定异步数据接口的额外参数，任意设
		                	orderNum : $("#orderNum").val(),
		                	productName : $("#productName").val(),
		                	directionPhone : $("#directionPhone").val(),
		                	orderUser : $("select[id=orderUser]").val(),
		                	status : $("#status").get(0).selectedIndex,
		                	productType : $("select[id=productType]").get(0).selectedIndex
			    	  }
			    	  ,page: {
			    	    curr: 1 //重新从第 1 页开始
			    	  }
			    	});
			    } else if(obj.event === 'updatestat2'){
				 	 var chk_value =[];
				 	 var statu = 2;
				 	 chk_value.push(data.id);
				  var param = {"titles":chk_value,"status":statu}; 
		 $.ajax({
		 	url:"updateOrderStatus", 
		 	type:"post", 
		 	data:param, 
		 	async: false,
		 	dataType:"json",
		 	success:function (date){
		 	}
		 });
		    tableIns.reload({
		    	  where: { //设定异步数据接口的额外参数，任意设
	                	orderNum : $("#orderNum").val(),
	                	productName : $("#productName").val(),
	                	directionPhone : $("#directionPhone").val(),
	                	orderUser : $("select[id=orderUser]").val(),
	                	status : $("#status").get(0).selectedIndex,
	                	productType : $("select[id=productType]").get(0).selectedIndex
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
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat2">确认订单</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="updatestat1">取消订单</a>
</script>

</html>
