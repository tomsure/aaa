<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>分销管理-经销商分销</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<link rel="stylesheet" type="text/css" href="css/customModal.css"/>
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="css/table_public.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/layui/layui.js"></script>
<script src="js/public.js" ></script>


</head>

<body class="page-body">

      <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：分销管理&gt;经销商分销
        </h5>
      
       <!--contentBegin-->  
        <div id="content" >
         <div class="search-box">
    	  
      </div>    
    <div class="search-box check-btn">
        <div class="check-btn">      
        	<button id="addDistributionSet" class="btn  " onclick="">新增</button>           
        </div>
       
    </div>
    
  <div class="ibox-content">
		      <div class="table">
		      	 <table class="table-hide" id="regionalDistributor" lay-data="{id: 'idDistributor'}" lay-filter="Distributor">
		   
		         </table>
		      </div>
            
    </div>
</div>
 <!--contentEnd-->
<!--  新增开始 -->
<div class="predepositModal" id="modalContent">
		<form class="layui-form" action="" id="form1">
			<input type="hidden" name="id" id="deliverId" value="" /> 
			<p>
				<span class="modal_title">分润规则名:</span><input type="text" name="position"
					lay-verify="required" />
			</p>
			<p>
				<span class="modal_title">分润比例:</span><input type="text" name="profit"
					lay-verify="required" />
			</p>
			<div class="form_btn"  id="applyBtn" style="clear: left;">
				<button lay-submit class="btn btn_ok layui-btn-sm" id="but_ok">提交</button>
				<button class="btn btn_cancel layui-btn-sm">取消</button>
   	   	   	  <button type="reset" class="layui-btn layui-btn-primary layui-btn-sm">重置</button>
			</div>
		</form>
</div>
<!--  新增结束 -->
</body>
<script type="text/javascript">
//新增
$('#addDistributionSet').click(function(){
	layui.use('layer',function(){
		var layer=layui.layer;
		layer.open({
			type:1,
			area:['450px','550px'],
			title:['新增经销商分销信息',"font-size:18px;font-weight:800;"],
			content:$("#modalContent")
		})
	})
})
</script>
<script type="text/javascript">
	$(function(){
		$("#but_ok").click(function(){
				var url="addDistributor";
				var param=$("#form1").serialize();
				$.post(url,param,function(result){
					if(result.code==0){
						layer.msg("新增成功");
					}else{
						layer.msg(result.msg);
					}
				});
			}); 
		
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#regionalDistributor',
				url:'showDistributor',
				id: 'idDistributor',
				cellMinWidth:120,
				page:true,
				cols:[[
	  		           {type:'checkbox'},
	                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
					      ,{field:'position', width:120, title: '分润规则名',sort:true,edit: 'text'}
					      ,{field:'profit', width:120, title:'分润比例(%)',  sort:true,edit: 'text'} 
	  		
	  		]],
			})
/*  		    var $ = layui.$, active = {
		        reload: function(){
		            table.reload('idProduct', {
		                where: {
		                	productName: $('#productName').val(),
		                	productType: $('#searchPropType').get(0).selectedIndex,
		                	status: $('#searchAuditType').get(0).selectedIndex
		                }
		            });
		        }
			
		    };
			//监听搜索查询
			$('#search').on('click', function(){
			    var type = $(this).data('type');
			    active[type] ? active[type].call(this) : '';
			}); */
			
/* 			//监听批量删除按钮
			$('#btn_del').on('click', function(){
			      layer.confirm('确认是否删除', function(index){
			    	  layer.close(index);
				var checkStatus = table.checkStatus('idProduct'); //test即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					}
					 var param = {"titles":chk_value}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "deleteBySelect",
				   	 	data: param,
				   	 	success: function(data){
				     	  }
				     });
				    //表格重载
				    tableIns.reload({
				    	  where: { //设定异步数据接口的额外参数，任意设
			                	productName: $('#productName').val(),
			                	productType: $('#searchPropType').get(0).selectedIndex,
			                	status: $('#searchAuditType').get(0).selectedIndex
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
			
			//监听单元格编辑
			  table.on('edit(Distributor)', function(obj){
			    var value = obj.value, //得到修改后的值
			    data = obj.data, //得到所在行所有键值
			    field = obj.field; //得到字段
			    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
			    $.ajax({
			 	 	type: "POST",
			   		url: "editDistributor",
			   	 	data: "value="+value+"&field="+field+"&id="+data.id,
			   	 	success: function(data){
			   	 	 
			     	  },error:function(date){
			     		 layer.msg("失败");
			     	  }
			     });
			  });
			  
			//监听工具条
/* 			  table.on('tool(Product)', function(obj){
			    var data = obj.data;
			    var checkStatus = table.checkStatus('idProduct');
			    console.log(checkStatus.data);
			    if(obj.event === 'del'){
			      layer.confirm('确认是否删除', function(index){
							var chk_value=[data.id];
							 var param = {"titles":chk_value}; 
						    $.ajax({
						 	 	type: "POST",
						   		url: "deleteBySelect",
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
			 	url:"updateStatus", 
			 	type:"post", 
			 	data:param, 
			 	async: false,
			 	dataType:"json",
			 	success:function (date){
			 	}
			 });
			    tableIns.reload({
			    	  where: { //设定异步数据接口的额外参数，任意设
		                	productName: $('#productName').val(),
		                	productType: $('#searchPropType').get(0).selectedIndex,
		                	status: $('#searchAuditType').get(0).selectedIndex
			    	  }
			    	  ,page: {
			    	    curr: 1 //重新从第 1 页开始
			    	  }
			    	});
			    }
			  }); */
		});
	})
</script>
<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
</html>
