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
<script type="text/javascript" src="vendor/layui/layui.js"></script>
<script src="js/public.js" ></script>
<script type="text/javascript" src="js/DateFormate.js"></script>
	
</script>
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
                <span>商品名称：</span>
                <input id="productName" class="form-control" name="" value="" placeholder="查询商品名称">
            </div>
            <div>
                <span>订单编号：</span>
                <input id="orderNum" type="text" class="form-control" name="" value="" placeholder="查询订单编号">
            </div>
           
            <div>
                <span>快递单号：</span>
                <input id="expressNum" class="form-control" name="" value="" placeholder="查询快递单号">
            </div>
            
            
            <div>
                <span>收件人电话：</span>
                <input id="directionPhone" class="form-control" name="" value="" placeholder="查询收件人电话">
            </div>
            
            <div>
                <span>下单用户：</span>
                <input id="orderMan" type="text" class="form-control" name="" value="" placeholder="查询下单用户">
            </div> 
            <div>
                <span>卡片/设备号：</span>
                <input id="deviceNum" type="text" class="form-control" name="" value="" placeholder="查询下单用户">
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
               <span>运营商：</span>
                <select class="form-control" id="operator" name="">
               		<option>全部</option>
                	<option>移动</option>
                	<option>联通</option>
                	<option>电信</option>
               	
                </select>
            </div>
              <div id="">
                	<input type="reset" class="btn btn_reset" name="" id="" value="重置" />
                	<input type="button" class="btn btn_search" name="" id="search" data-type="reload" value="搜索" />
                </div>
              </form>
    </div>
    <div class="search-box check-btn">
        <div class="check-btn">
        	
        	<button class="btn btn-default" name="updatestat" value="1">发货</button>
        	<button class="btn btn-default" name="updatestat" value="2">退货</button>
        	<!-- <button class="btn btn-default" id="btn_del">删除</button> -->
        </div>
    </div>
    

    <div class="ibox-content">
      <table class="table-hide" id="delivery" lay-data="{id: 'idDelivery'}" lay-filter="Delivery" ></table>
    </div>
</div>
 <!--contentEnd-->
</body>
<script type="text/html" id="titleTpl">
  {{#  if(d.expressCompany === 1){ }}
   				 中通
  {{#  } else if(d.expressCompany === 2){ }}
            	圆通
  {{#  } }}
</script>
<script type="text/html" id="titleTpl2">
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
<script type="text/html" id="titleTpl3">
  {{#  if(d.operator==='1'){ }}
   				电信
  {{#  } else if(d.operator === '2'){ }}
            	移动
  {{#  } else if(d.operator === '5'){ }}
				联通
  {{#  } }}
</script>
<script type="text/html" id="titleTpl4">
  {{#  if(d.status === 1){ }}
   				 已发货
  {{#  } else if(d.status === 2){ }}
            	已退货
  {{#  } else if(d.status === 0){ }}
				待发货
  {{#  } }}
</script>
<script type="text/html" id="titleTpl5">
  {{#  if(!(d.deliverTime)){ }}
  {{#  } else { }}
  {{formatDate(new Date(d.deliverTime))}}
  {{#  } }}
</script>
<script type="text/javascript">
$(function(){
	layui.use('table',function(){
		var table=layui.table;
var tableIns = table.render({
			elem:'#delivery',
			url:'showShipment',
			id: 'idDelivery',
			cellMinWidth:120,
			page:true,
			cols:[[
			 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
		     {title:'序号',templet: '#indexTpl',width:80},
			 {field:'productName','title':'商品名称',width:120,sort:true},
			 {field:'price','title':'金额',width:80,sort:true},
			 {field:'productType','title':'商品类型',width:120,sort:true,templet: '#titleTpl2'},
			 {field:'packages','title':'套餐',width:80,sort:true},
			 {field:'operator','title':'运营商',width:80,sort:true,templet: '#titleTpl3'},
			 {field:'location','title':'归属地',width:80,sort:true},
/* 			 {field:'apk','title':'APK版本',width:120,sort:true},
			 {field:'color','title':'颜色',width:80,sort:true}, */
			 {field:'orderNum','title':'订单编号',width:120,sort:true},
			 {field:'directionAdd','title':'收件人地址',width:200,sort:true,edit:'text'},
			 {field:'direction','title':'收件人',width:180,sort:true},
			 {field:'directionPhone','title':'收件人电话',width:180,sort:true,edit:'text'},
			 {field:'status','title':'状态',width:180,sort:true,templet: '#titleTpl4'},
			 {field:'orderMan','title':'下单用户',width:180,sort:true},
			 {field:'source','title':'来源',width:180,sort:true,edit:'text'},
			 {field:'deviceNum','title':'设备号/卡号',width:180,sort:true,edit:'text'},
			/*  {field:'userPhone','title':'用户手机',width:180,sort:true}, */
			 {field:'expressCompany','title':'快递公司',width:180,sort:true,edit:'text'},
			 {field:'expressNum','title':'快递单号',width:180,sort:true,edit:'text'},
			 {field:'expressFee','title':'快递费',width:180,sort:true,edit:'text'},
/* 			 {field:'deliverPers','title':'发货人',width:180,sort:true},
			 {field:'deliverTime','title':'发货时间',width:180,sort:true,templet: '#titleTpl5'},
			 {field:'returnCause','title':'退货原因',width:180,sort:true,edit:'text'}, */
		     {fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
			]],
		});
		    var $ = layui.$, active = {
	        reload: function(){
	            table.reload('idDelivery', {
	                where: {
	                	productName : $("#productName").val(),
	                	orderNum : $("#orderNum").val(),
	                	expressNum : $("#expressNum").val(),
	                	directionPhone : $("select[id=directionPhone]").val(),
	                	orderMan : $("select[id=orderMan]").val(),
	                	deviceNum : $("select[id=deviceNum]").val(),
	                	productType : $("select[id=productType]").get(0).selectedIndex,
	                	operator : $("select[id=operator]").get(0).selectedIndex 
	                }
	            });
	        }
	    };
		//监听搜索查询
		$('#search').on('click', function(){
		    var type = $(this).data('type');
		    active[type] ? active[type].call(this) : '';
		});
		
		//监听单元格编辑
		  table.on('edit(Delivery)', function(obj){
			  layer.confirm('是否确认修改', function(index){
		    var value = obj.value, //得到修改后的值
		    data = obj.data, //得到所在行所有键值
		    field = obj.field; //得到字段
		    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
		    $.ajax({
		 	 	type: "POST",
		   		url: "editDelivery",
		   	 	data: "value="+value+"&field="+field+"&id="+data.id,
		   	 	success: function(data){
		   	 	 
		     	  },error:function(date){
		     		 layer.msg("失败");
		     	  }
		     });
		  });
		  });
			//监听批量删除按钮
/* 		$('#btn_del').on('click', function(){
		      layer.confirm('确认是否删除', function(index){
		    	  layer.close(index);
			var checkStatus = table.checkStatus('idDelivery'); //idDelivery即为基础参数id对应的值
			if(checkStatus.data.length!=0){
				var chk_value=[];
				for (var i = 0; i < checkStatus.data.length; i++) {
					chk_value.push(checkStatus.data[i].id);
				}
				 var param = {"titles":chk_value}; 
			    $.ajax({
			 	 	type: "POST",
			   		url: "deleteDeliveryBySelect",
			   	 	data: param,
			   	 	success: function(data){
			     	  }
			     });
			    //表格重载
			    tableIns.reload({
			    	  where: { //设定异步数据接口的额外参数，任意设
		                	orderNum : $("#orderNum").val(),
		                	expressNum : $("#expressNum").val(),
		                	productName : $("#productName").val(),
		                	directionPhone : $("select[id=directionPhone]").val(),
		                	productType : $("select[id=productType]").get(0).selectedIndex,
		                	expressCompany : $("select[id=expressCompany]").get(0).selectedIndex
			    	  }
			    	  ,page: {
			    	    curr: 1 //重新从第 1 页开始
			    	  }
			    	});
			} else{
				layer.msg("请选择至少一条数据");
			}
		});
		  }); */
			
		//监听批量按钮
		$("button[name='updatestat']").on('click', function(){
			var checkStatus = table.checkStatus('idDelivery'); //idDelivery即为基础参数id对应的值
			if(checkStatus.data.length!=0){
				var chk_value=[];
				 var statu = $(this).val();
				for (var i = 0; i < checkStatus.data.length; i++) {
					chk_value.push(checkStatus.data[i].id);
					if(statu==1){//发货事件
					if (checkStatus.data[i].status==2) {
						alert("存在已退货的商品,请重新选择!");
						return;
					}
					if(checkStatus.data[i].status==1){
						alert("请勿重复发货!");
						return;
					}
					if(checkStatus.data[i].expressCompany==null||checkStatus.data[i].expressCompany.trim()==''||checkStatus.data[i].expressNum==null||checkStatus.data[i].expressNum.trim()==''){
						alert("请填写完整的快递信息!");
						return;
					}
					if (checkStatus.data[i].deviceNum==null||checkStatus.data[i].deviceNum.trim()=='') {
						alert("请绑定设备或者卡号!");
						return;
					}
					}else{//退货事件
						if(checkStatus.data[i].status==0){
							alert("存在未发货商品,请重新选择!");
							return;
						}
						if (checkStatus.data[i].returnCause==null||checkStatus.data[i].returnCause.trim()=='') {
							alert("请填写退货原因!");
							return;
						}
					}
				}
				 var param = {"titles":chk_value,"status":statu}; 
			    $.ajax({
			 	 	type: "POST",
			   		url: "updateDeliveryStatus",
			   	 	data: param,
			   	 	success: function(data){
			     	  }
			     });
			    tableIns.reload({
			    	  where: { //设定异步数据接口的额外参数，任意设
		                	orderNum : $("#orderNum").val(),
		                	expressNum : $("#expressNum").val(),
		                	productName : $("#productName").val(),
		                	directionPhone : $("select[id=directionPhone]").val(),
		                	productType : $("select[id=productType]").get(0).selectedIndex,
		                	expressCompany : $("#expressCompany").find("option:selected").text()
			    	  }
			    	  ,page: {
			    	    curr: 1 //重新从第 1 页开始
			    	  }
			    	});
			} else{
				layer.msg("请选择至少一条数据");
			}
		});
		
		//监听工具条
		  table.on('tool(Delivery)', function(obj){
		    var data = obj.data;
		    var checkStatus = table.checkStatus('idDelivery');
		    console.log(checkStatus.data);
		    if(obj.event === 'updatestat1'){
			 	 var chk_value =[];
			 	 var statu = 1;
			 	 	 chk_value.push(data.id);
						if (data.status==2) {
							alert("该商品已退货,请重新选择!");
							return;
						}
						if(data.status==1){
							alert("请勿重复发货!");
							return;
						}
						if(data.expressCompany==null||data.expressCompany.trim()==''||data.expressNum==null||data.expressNum.trim()==''){
							alert("请填写完整的快递信息!");
							return;
						}
						if (data.deviceNum==null||data.deviceNum.trim()=='') {
							alert("请绑定设备或者卡号!");
							return;
						}
			  var param = {"titles":chk_value,"status":statu}; 
			 $.ajax({
			 	url:"updateDeliveryStatus", 
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
			    }else if(obj.event === 'updatestat2'){
				 	 var chk_value =[];
				 	 var statu = 2;
				 	 	 chk_value.push(data.id);
				 	 	if(data.status==0){
							alert("存在未发货商品,请重新选择!");
							return;
						}
				 	 	if(data.status==2){
							alert("该商品已经退货");
							return;
						}
						if (data.returnCause==null||data.returnCause.trim()=='') {
							alert("请填写退货原因!");
							return;
						}
				  var param = {"titles":chk_value,"status":statu}; 
				 $.ajax({
				 	url:"updateDeliveryStatus", 
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
			                	expressNum : $("#expressNum").val(),
			                	productName : $("#productName").val(),
			                	directionPhone : $("select[id=directionPhone]").val(),
			                	productType : $("select[id=productType]").get(0).selectedIndex,
			                	expressCompany : $("#expressCompany").find("option:selected").text()
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
  	<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat1">发货</a>
	<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat2">退货</a>
</script>

</html>
