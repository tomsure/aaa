<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>商品管理-面额充值</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/customModal.css"/>
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/layer/layer.min.js" ></script>
<script src="vendor/layui/layui.js"></script>
<script src="js/public.js" ></script>
<script type="text/javascript" src="js/DateFormate.js"></script>
</head>

<body class="page-body">
	
	  <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<a href="javascript:void(0)" onclick="location.reload()" style="float: right;"><i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;" title="刷新"></i> </a>
    	当前位置：商品管理&gt;面额设置
        </h5>
      
  

        <!--contentBegin-->    
        <div id="content" >
         <div class="search-box">
            <div>
                <span>面额名称：</span>
                <input type="text" class="form-control" value="" placeholder="查询面额名称" id="productName">
            </div>
<!--             
           <div style="margin-left: 40px;">
                <span>状态：</span>
                <select class="form-control" id="status" name="propType" style="width:120px">               	
                	<option>全部</option>
                	<option>上架</option>
                	<option>下架</option>               	              	
                </select>
            </div> -->
<!--             <div style="margin-left: 40px;">
               <span>应用活动：</span>
                <select class="form-control" id="apply" name="auditType">
                	
                	<option>全部</option>
                	<option>是</option>
                	<option>否</option>
                	
                </select>
            </div> -->
 <!--             <div style="margin-left: 40px;">
               <span>分期：</span>
                <select class="form-control" id="installment" name="auditType">
                	
                	<option>全部</option>
                	<option>是</option>
                	<option>否</option>
                	
                </select>
            </div> -->
         	 <div id="">
             	 <input type="reset" class="btn btn_reset" name="" id="" value="重置" />
             <input id="search" type="button" class="btn btn_search" data-type="reload" value="搜索" />
            
             </div>
    </div>
    <div class="search-box check-btn">
        <div class="check-btn">
        	<button class="btn btn-default" id="denominationBtn" onclick="">新增</button>
        	<button class="btn btn-default" name="updatestat" value='1'>上架</button>
        	<button class="btn btn-default" name="updatestat" value='2'>下架</button>
        	<button class="btn btn-default" id="btn_del" data-type="dele">删除</button>
        </div>
    </div>
    

    <div class="ibox-content">
	    <table class="layui-hide" id="shopRecharge" lay-data="{id: 'idRecharge'}" lay-filter="Recharge" ></table>
    </div>
   
</div>
 <!--contentEnd-->
<!--新增弹窗-->
  <div id="denominationSetting" class="denominationModal">
  	   <form id="form1" action="addRecharge" method="post">
  	   	<p><span>面额名称</span><input name="productName" type="text" lay-verify="required"/><span>元</span></p>
  	   	<p><span style="margin-right: 15px;">人民币</span><input name="rmb" type="text" /><span>元</span></p>
  	   	<p><span style="vertical-align:top;">点击说明</span>
  	   		<textarea name="instruction" rows="5" cols="30"></textarea>
  	   	</p>
  	   </form>
  	     <div class="denominationBtn modal_btn">
	  	  <button id="but_ok" type="submit" class="btn btn_ok">确定</button>
	  	  <button id="but_cancel" class='btn btn_cancel'>取消</button>
	  	  <button class='btn btn_reset'>重置</button>
	  </div>
  </div>
 <!--新增弹窗结束-->
</body>
<script type="text/html" id="titleTpl">
  {{#  if(d.status === 1){ }}
   				 上架
  {{#  } else if(d.status === 2){ }}
            	下架
  {{#  } }}
</script>
<script type="text/html" id="titleTpl2">
  {{#  if(d.status === 1){ }}
   				 设备+套餐
  {{#  } else if(d.status === 2){ }}
            	设备
  {{#  } else if(d.status === 3){ }}
				空卡
  {{#  } else if(d.status === 4){ }}
    			合约机
  {{#  } else if(d.status === 5){ }}
    			套餐(含卡)
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
				elem:'#shopRecharge',
				url:'showRecharge',
				id: 'idRecharge',
				cellMinWidth:120,
				page:true,
				cols:[[
				 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:80},
				 {field:'productName','title':'面额名称',width:120,sort:true},
				 {field:'rmb','title':'人民币',width:80,sort:true,edit:'text'},
				 /* {field:'productType','title':'商品类型',width:120,sort:true,templet: '#titleTpl2'}, */
			     {field:'status','title':'状态',width:80,sort:true,templet: '#titleTpl'},
				/* {field:'apply','title':'应用活动',width:120,sort:true},
				 {field:'installment','title':'分期',width:120,sort:true,templet: '#titleTpl3'},
				 {field:'accountTime','title':'到账时间',width:80,sort:true,templet: '#titleTpl4'},
				 {field:'accountPrice','title':'单月到账金额',width:120,sort:true,edit:'text'},
				 {field:'validityTime','title':'活动有效期',width:200,sort:true,edit:'text'},
				 {field:'monthAccountTime','title':'每月到账时间',width:180,sort:true,templet: '#titleTpl4'}, */
				 {field:'instruction','title':'点击说明',width:180,sort:true,edit:'text'},
			     {fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
				]],
			});
 		    var $ = layui.$, active = {
		        reload: function(){
		            table.reload('idRecharge', {
		                where: {
		                productName:$('#productName').val(),
/* 		        		status:$("#status").get(0).selectedIndex,
		        		apply:$("#apply").get(0).selectedIndex,
		        		installment:$("#installment").get(0).selectedIndex */
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
				var checkStatus = table.checkStatus('idRecharge'); //idRecharge即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					}
					 var param = {"titles":chk_value}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "deleteRechargeBySelect",
				   	 	data: param,
				   	 	success: function(data){
				     	  }
				     });
				    //表格重载
				    tableIns.reload({
				    	  where: { //设定异步数据接口的额外参数，任意设
/* 				                productName:$('#productName').val(),
				        		status:$("#status").get(0).selectedIndex,
				        		apply:$("#apply").get(0).selectedIndex,
				        		installment:$("#installment").get(0).selectedIndex */
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
				var checkStatus = table.checkStatus('idRecharge'); //idRecharge即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					 var statu = 0;
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					}
					 var param = {"titles":chk_value,"status":$(this).val()}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "updateRechargeStatus",
				   	 	data: param,
				   	 	success: function(data){
				     	  }
				     });
				    tableIns.reload({
				    	  where: { //设定异步数据接口的额外参数，任意设
/* 				                productName:$('#productName').val(),
				        		status:$("#status").get(0).selectedIndex,
				        		apply:$("#apply").get(0).selectedIndex,
				        		installment:$("#installment").get(0).selectedIndex */
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
			  table.on('edit(Recharge)', function(obj){
			    var value = obj.value, //得到修改后的值
			    data = obj.data, //得到所在行所有键值
			    field = obj.field; //得到字段
			    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
			    $.ajax({
			 	 	type: "POST",
			   		url: "editRecharge",
			   	 	data: "value="+value+"&field="+field+"&id="+data.id,
			   	 	success: function(data){
			   	 	 
			     	  },error:function(date){
			     		 layer.msg("失败");
			     	  }
			     });
			  });
			  
			//监听工具条
			  table.on('tool(Recharge)', function(obj){
			    var data = obj.data;
			    var checkStatus = table.checkStatus('idRecharge');
			    console.log(checkStatus.data);
			    if(obj.event === 'del'){
			      layer.confirm('确认是否删除', function(index){
							var chk_value=[data.id];
							 var param = {"titles":chk_value}; 
						    $.ajax({
						 	 	type: "POST",
						   		url: "deleteRechargeBySelect",
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
			 	url:"updateRechargeStatus", 
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
		$("#but_ok").click(function(){
			var url="addRecharge";
			var param=$("#form1").serialize();
			console.log(param);
			console.log($("#form1").data());
			$.post(url,param,function(result){
				if(result.code==0){
					layer.close(layer.index);
					layer.msg("添加成功");
					location.reload(true);
				}else{
					layer.msg(result.msg);
				}
			});
		  }); 
		$("#but_cancel").click(function(){
					layer.close(layer.index);
			});
	})
</script>
<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
<script type="text/html" id="barTools">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat">上/下架</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
</html>
