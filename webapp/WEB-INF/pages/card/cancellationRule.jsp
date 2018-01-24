<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>卡片管理-预销号规则</title>
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
    	当前位置：卡片管理&gt;预销号规则
        </h5>
      
       <!--contentBegin-->  
        <div id="content" >
    
    

    <div class="ibox-content">
       		
		<table class="table-hide" id="cancellationRule" lay-data="{id: 'idCancellationRule'}" lay-filter="CancellationRule">
		
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
				elem:'#cancellationRule',
				url:'getCancellationRuleList',
				id: 'idCancellationRule',
				cellMinWidth:120,
				page:true,
				cols:[[
	  		         {type:'checkbox'},
	                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
					      ,{field:'rule', width:120, title: '规则名', sort: true}
					      ,{field:'value', width:120, title: '时间值/月' , sort:true,edit:'text'}
	  		]],
			});
 		    
			//监听单元格编辑
			  table.on('edit(CancellationRule)', function(obj){
				  layer.confirm('确认是否修改', function(index){
			    var value = obj.value, //得到修改后的值
			    data = obj.data, //得到所在行所有键值
			    field = obj.field; //得到字段
			    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
			    $.ajax({
			 	 	type: "POST",
			   		url: "editCancellationRule",
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
