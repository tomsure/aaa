<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>分销管理-abc分销</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="vendor/layui/css/layui.css" />
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
    	当前位置：分销管理&gt;abc分销
        </h5>
      
       <!--contentBegin-->  
        <div id="content" >
    
    

    <div class="ibox-content">
       		
		<table class="table-hide" id="abcdistribution" lay-data="{id: 'idDistributionabc'}" lay-filter="Distributionabc">
		
		</table>
      	 </div>
          <!--paginationBegin-->
    
</div>
 <!--contentEnd-->

</body>
<script type="text/javascript">
	$(function(){
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#abcdistribution',
				url:'showDistributionabc',
				id: 'idDistributionabc',
				cellMinWidth:120,
				page:true,
				cols:[[
	  		         {type:'checkbox'},
	                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
					      ,{field:'grade', width:120, title: '等级', sort: true}
					      ,{field:'concern1', width:120, title: '关系1' , sort:true}
					      ,{field:'profit', width:120, title: '分润比例', sort: true,edit:'text'}
					      ,{field:'concern2', width:120, title: '关系2' , sort:true}
	  		]],
			});
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
			
		    }; */
			//监听搜索查询
/* 			$('#search').on('click', function(){
			    var type = $(this).data('type');
			    active[type] ? active[type].call(this) : '';
			}); */
 		    
			//监听单元格编辑
			  table.on('edit(Distributionabc)', function(obj){
				  layer.confirm('确认是否修改', function(index){
			    var value = obj.value, //得到修改后的值
			    data = obj.data, //得到所在行所有键值
			    field = obj.field; //得到字段
			    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
			    $.ajax({
			 	 	type: "POST",
			   		url: "editDistributionabc",
			   	 	data: "value="+value+"&field="+field+"&id="+data.id,
			   	 	success: function(data){
			   	 	 
			     	  },error:function(date){
			     		 layer.msg("失败");
			     	  }
			     });
				  });
			  });
			  
	})
	})
</script>
<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
</html>
