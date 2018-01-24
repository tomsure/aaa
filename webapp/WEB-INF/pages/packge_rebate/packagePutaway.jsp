<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>套餐管理-套餐上架</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/homeAbout/font-awesome.min.css"/>
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="css/customModal.css"/>
<link rel="stylesheet" type="text/css" href="css/table_public.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="vendor/layui/layui.js"></script>
<script type="text/javascript" src="js/public.js"></script>
</head>
 
<body class="page-body">
	 
        <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：套餐管理&gt;套餐上架	
        </h5>
       <div class="search-box">
	   <form>
	        <div>
                <span>套餐总量：</span>
                <input id="total" type="text" class="form-control" placeholder="查询套餐总量">
            </div>
            <div style="margin-left: 0px;">
               <span>有效期：</span>
                <select class="form-control" id="validity" name="">
                	<option value="">全部</option>
                	<option value="1">月</option>
               	    <option value="2">季度</option>
                	<option value="3">年</option>
                </select>
            </div>
             <div class="">
             	 <input type="reset" class="btn btn_reset" name="" id="" value="重置" style="margin-left: 30px;"/>
             <input id="search" data-type="reload" type="button" class="btn btn_search" value="搜索" style="height:34px;margin-left: 30px;">
             </div>
       </form>
  		</div>
  		<div class="check-btn">
        	<button class="btn btn-default" name="updatestat" value="1">上架</button>
        	<button class="btn btn-default" name="updatestat" value="2">下架</button>
           	<button id="btn_del" class="btn btn-default">删除</button>
        </div>
       <!--contentBegin-->
        <div id="content" >
        	<div class="">
       			<table class="table-hide" id="packagePutaway" lay-data="{id: 'idPackagePutaway'}" lay-filter="PackagePutaway"></table>
            </div>
        </div>
</body>

<script type="text/html" id="titleTpl1">
  {{#  if(d.status===1){ }}
		上架
  {{#  } else if(d.status===2){ }}
       	下架
  {{#  } }}
</script>
<script type="text/html" id="titleTpl2">
  {{#  if(d.type===1){ }}
		运营商套餐
  {{#  } else if(d.type===2){ }}
       	自定义套餐
  {{#  } }}
</script>
<!-- 有效期 -->
<script type="text/html" id="titleTpl3">
  {{#  if( d.validity == 1){ }}
   			1个月
  {{#  }else if( d.validity == 2){ }}
   			1季度
  {{#  }else if( d.validity == 3){ }}
   			1年
  {{#  } }}
</script>
<script type="text/javascript">
$(function(){
		//加载数据
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#packagePutaway',
				url:'getPackagePutawayList',
				id: 'idPackagePutaway',
				cellMinWidth:120,
				page:true,
				cols:[[
				 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:80}
			      ,{field:'type', width:120, title: '类型', sort: true,templet: '#titleTpl2'}
			      ,{field:'qname', width:120, title: '前台显示套餐名称',edit:'text'}
			      ,{field:'hname', width:120, title: '套餐名称'}
			      ,{field:'validity', width:120, title: '有效期', sort: true,templet: '#titleTpl3'}
			      ,{field:'total', width:120, title: '套餐总量', sort: true,edit:'text'}
			      ,{field:'price', width:120, title: '金额', sort: true,edit:'text'}
			      ,{field:'status', width:120, title: '状态', sort: true,templet: '#titleTpl1'}
			      ,{field:'remark', width:120, title: '点击说明', sort: true,edit:'text'}
			      ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
				]],
			})
 		    var $ = layui.$, active = {
		        reload: function(){
		            table.reload('idPackagePutaway', {
		                where: {
		                	total: $('#total').val(),
		                	validity: $('#validity').val(),
		                }
		            });
		        }
		    };
			//监听搜索查询
			$('#search').on('click', function(){
			    var type = $(this).data('type');
			    active[type] ? active[type].call(this) : '';
			});
			
			//监听批量上下架按钮
			$("button[name='updatestat']").on('click', function(){
				var checkStatus = table.checkStatus('idPackagePutaway'); //idProduct即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					}
					 var param = {"titles":chk_value,"status":$(this).val()}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "setPackagePutawayStatusById",
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
				//console.log(checkStatus.data) //获取选中行的数据
				//console.log(checkStatus.data.length) //获取选中行数量，可作为是否有选中行的条件
			});
			
			//监听批量删除按钮
			$('#btn_del').on('click', function(){
			      layer.confirm('确认是否删除', function(index){
			    	  layer.close(index);
				var checkStatus = table.checkStatus('idPackagePutaway'); //test即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					for (var i = 0; i < checkStatus.data.length; i++) {
						if(1==checkStatus.data[i].status){
							alert("存在已上架的套餐!");
							return;
						}
						chk_value.push(checkStatus.data[i].id);
					}
					 var param = {"titles":chk_value}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "delPackagePutawayById",
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
				}else{
					layer.msg("请选择至少一条数据");
				}
			});
			  });
			
			//监听单元格编辑
			  table.on('edit(PackagePutaway)', function(obj){
			    var value = obj.value, //得到修改后的值
			    data = obj.data, //得到所在行所有键值
			    field = obj.field; //得到字段
			    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
			    $.ajax({
			 	 	type: "POST",
			   		url: "editPackagePutaway",
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
			  table.on('tool(PackagePutaway)', function(obj){
			    var data = obj.data;
			    var checkStatus = table.checkStatus('idPackagePutaway');
			    console.log(checkStatus.data);
			    if(obj.event === 'del'){
			      layer.confirm('确认是否删除', function(index){
							var chk_value=[data.id];
							 var param = {"titles":chk_value}; 
						    $.ajax({
						 	 	type: "POST",
						   		url: "delPackagePutawayById",
						   	 	data: param,
						   	 	success: function(data){
						     	  }
						     });
			        obj.del();
			        layer.close(index);
			      });
			    }else if(obj.event === 'updatestatus1'){
			    	 var chk_value =[];
				 	 var statu = 1;
				 	 	 chk_value.push(data.id);
				  var param = {"titles":chk_value,"status":statu}; 
				 $.ajax({
				 	url:"setPackagePutawayStatusById", 
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
					    }else if(obj.event === 'updatestatus2'){
					    	 var chk_value =[];
						 	 var statu = 2;
						 	 	 chk_value.push(data.id);
						  var param = {"titles":chk_value,"status":statu}; 
						 $.ajax({
						 	url:"setPackagePutawayStatusById", 
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
	})
</script>
<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
<script type="text/html" id="barTools">
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestatus1">上架</a>
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestatus2">下架</a>
  {{#  if(d.status===2){ }}
<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
  {{#  } else if(d.status===2){ }}
  {{#  } }}
</script>
<script type="text/html" id="selectTpl">
    <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="selects">查询</a>
</script>
</html>
