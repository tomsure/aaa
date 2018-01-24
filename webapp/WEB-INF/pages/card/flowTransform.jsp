<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>卡片管理-流量转换比例</title>
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
<script type="text/javascript" src="js/public.js"></script>

</head>
 
<body class="page-body">
	      <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：卡片管理&gt;流量转换比例
        </h5>
	   <div class="search-box">
	   <form>
            <div>
                <span>ICCID：</span>
                <input id="iccid" type="text" class="form-control" placeholder="查询iccid">
            </div>
             <div class="">
             	 <input type="reset" class="btn btn_reset" name="" id="" value="重置" style="margin-left: 30px;"/>
             <input id="search" data-type="reload" type="button" class="btn btn_search" value="搜索" style="height:34px;margin-left: 30px;">
             </div>
       </form>
  		</div>
        <div class="check-btn">
        	<button class="btn btn-default" id="addPayments" onclick="">新增</button>
           	<button id="btn_del" class="btn btn-default" onclick="">删除</button>
        </div>
         

       <!--contentBegin-->  
        <div id="content" >
            <table class="table-hide" id=flowTransform lay-data="{id: 'idFlowTransform'}" lay-filter="FlowTransform"></table>
		</div>
			 <!--contentEnd-->
   <!--新增弹窗开始-->
   	   <div class="addDealerModal" id="addDlealers">
   	   	  <p style="margin-left: 0;">
   	   	  <span class="" >默认值:</span><input type="text" id="ratio1" disabled="true" value="1"/>
   	   	  <span class="" >转换比例:</span><input type="text" id="ratio2" placeholder="请输入"/>
   	   	  </p>
   	       <div id="applyBtn" class="modal_btn">
   	   	    	<button class="btn btn_ok">确定</button>
   	   	    	<button class="btn btn_cancel ">取消</button>
   	   	    </div>
   	   </div>
   	   
   <!--新增弹窗结束--><!----><!---->
</body>
   <!--iccid查询弹窗开始-->
<div class="addDealerModal" id="selecticcid">
			<div>
                <span>ICCID：</span>
                <input id="iccidb" type="text" class="form-control" placeholder="查询iccid">
            </div>
            <div class="">
             <input id="searchb" data-type="reload" type="button" class="btn btn_search" value="搜索" style="height:34px;margin-left: 30px;">
             </div>
            <div class="check-btn">
	        	<button class="btn btn-default" id="addPaymentb" onclick="">新增</button>
	        	<button id="btn_delb" class="btn btn-default" onclick="">删除</button>
        	</div>
		<table class="table-hide" id=flowTransform_b lay-data="{id: 'idFlowTransform_b'}" lay-filter="FlowTransform_b"></table>
</div>
<!--iccid查询弹窗结束-->

   <!--iccid新增弹窗开始-->
   	   <div class="addDealerModal" id="addDlealerb">
   	      <p>
   	   	  	<span class="addtitle1 ">批量</span><input type="text" placeholder="输入开始号" id="iccidStart"/>--<input type="text" placeholder="输入结束号" id="iccidEnd"/>
   	   	  </p>
   	   	  <p>
   	   	  	<span class="addtitle1 ">单个</span><input type="text" placeholder="单个以,号区分" id="single" style="width:100px;height:30px;" />
   	   	  </p>
   	       <div id="applyBtnb" class="modal_btn">
   	   	    	<button class="btn btn_ok">确定</button>
   	   	    	<button class="btn btn_cancel ">取消</button>
   	   	    </div>
   	   </div>
   <!--iccid新增弹窗结束-->
<script type="text/javascript">
function showIccid(data){
	//iccid的新增按钮.
	$("#applyBtnb").on('click',".btn_ok",function(){
		var url="addFlowTransformb";
		var param={"iccidStart":$("#iccidStart").val(),"iccidEnd":$("#iccidEnd").val(),"single":$("#single").val(),"pkFlowTransform":data.id};
		$.post(url,param,function(result){
			if(result.code==0){
				layer.msg("新增成功");
			}else{
				layer.msg(result.msg);
			}
			window.location.reload();
		});
	}); 
	
	
	layui.use('layer',function(){
		var layer=layui.layer;
		    var open1=layer.open({
		    	type:1,
		    	title:['查看','font-size:18px;font-weight:800;'],
		    	area:['440px','700px'],
		    	content:$('#selecticcid'),
		    })
		    
		    		//加载数据
		layui.use('table',function(){
			var table=layui.table;
			//查看卡片的数据
var tableIns1 = table.render({
				elem:'#flowTransform_b',
				url:'getFlowTransformListB?pkFlowTransform='+data.id,
				id: 'idFlowTransform_b',
				cellMinWidth:120,
				page:true,
				cols:[[
				{field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:65}
			      ,{field:'iccid', width:120, title: '卡号', sort: true,width:280}
			      ,{fixed: 'right', title: '操作', align:'center',width:65, toolbar: '#barToolsb'}
				]],
			})
			var $ = layui.$, active = {
				    reload: function(){
				        table.reload('idFlowTransform_b', {
				            where: {
				            	iccid: $('#iccidb').val(),
				            }
				        });
				    }
				};
				//监听搜索查询
				$('#searchb').on('click', function(){
				    var type = $(this).data('type');
				    active[type] ? active[type].call(this) : '';
				});
				//监听批量移除按钮
				$('#btn_delb').on('click', function(){
				      layer.confirm('确认是否删除', function(index){
				    	  layer.close(index);
					var checkStatus = table.checkStatus('idFlowTransform_b'); //test即为基础参数id对应的值
					if(checkStatus.data.length!=0){
						debugger;
						var chk_value=[];
						for (var i = 0; i < checkStatus.data.length; i++) {
							chk_value.push(checkStatus.data[i].id);
						}
						 var param = {"id":chk_value}; 
					    $.ajax({
					 	 	type: "POST",
					   		url: "delFlowTransformByIdb",
					   		async:false,
					   	 	data: param,
					   	 	success: function(data){
					     	  }
					     });
					    //表格重载
					    tableIns1.reload({
					    	  page: {
					    	    curr: 1 //重新从第 1 页开始
					    	  }
					    	});
					} else{
						layer.msg("请选择至少一条数据");
					}
				});
				  });
				//监听工具条b
				  table.on('tool(FlowTransform_b)', function(obj){
				    var data = obj.data;
				    var checkStatus = table.checkStatus('idFlowTransform_b');
				    if(obj.event === 'delb'){
				      layer.confirm('确认是否删除', function(index){
								 var param = {"id":data.id}; 
							    $.ajax({
							 	 	type: "POST",
							   		url: "delFlowTransformByIdb",
							   	 	data: param,
							   	 	success: function(data){
							     	  }
							     });
				        obj.del();
				        layer.close(index);
				      });
				    }
				  });
		});
	})
}
	$(function(){
		//新增按钮.
		$("#applyBtn").on('click',".btn_ok",function(){
			var url="addFlowTransform";
			var param={"ratio1":$("#ratio1").val(),"ratio2":$("#ratio2").val()};
			$.post(url,param,function(result){
				if(result.code==0){
					layer.msg("新增成功");
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
				elem:'#flowTransform',
				url:'getFlowTransformList',
				id: 'idFlowTransform',
				cellMinWidth:120,
				page:true,
				cols:[[
				 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:80}
			      ,{field:'ratio', width:120, title: '流量转换比例', sort: true,edit:'text'}
			      ,{field:'operator', width:120, title: '最后操作人'}
			      ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
				]],
			})
 		    var $ = layui.$, active = {
		        reload: function(){
		            table.reload('idFlowTransform', {
		                where: {
		                	iccid: $('#iccid').val(),
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
				var checkStatus = table.checkStatus('idFlowTransform'); //test即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					}
					 var param = {"titles":chk_value}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "delFlowTransformById",
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
			
			//监听单元格编辑
			  table.on('edit(FlowTransform)', function(obj){
			    var value = obj.value, //得到修改后的值
			    data = obj.data, //得到所在行所有键值
			    field = obj.field; //得到字段
			    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
			    $.ajax({
			 	 	type: "POST",
			   		url: "editFlowTransform",
			   		async:false,
			   	 	data: "value="+value+"&field="+field+"&id="+data.id,
			   	 	success: function(data){
			     	  },error:function(date){
			     		 layer.msg("失败");
			     	  }
			     });
			  //表格重载
			    tableIns.reload({
			    	  page: {
			    	    curr: 1 //重新从第 1 页开始
			    	  }
			    	});
			  });
			  
			//监听工具条
			  table.on('tool(FlowTransform)', function(obj){
			    var data = obj.data;
			    var checkStatus = table.checkStatus('idDealePayment');
			    console.log(checkStatus.data);
			    if(obj.event === 'del'){
			      layer.confirm('确认是否删除', function(index){
							var chk_value=[data.id];
							 var param = {"titles":chk_value}; 
						    $.ajax({
						 	 	type: "POST",
						   		url: "delFlowTransformById",
						   	 	data: param,
						   	 	success: function(data){
						     	  }
						     });
			        obj.del();
			        layer.close(index);
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
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="selects">应用卡号</a>
<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script type="text/html" id="barToolsb">
<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="delb">移除</a>
</script>
</html>
