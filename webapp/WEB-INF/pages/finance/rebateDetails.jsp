<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>返佣管理-返佣明细</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/layui/css/layui.css" rel="stylesheet">
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="css/table_public.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/layui/layui.js" ></script>
<script src="js/public.js" ></script>
</head>

<body class="page-body">
	
	
        <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：返佣管理&gt;返佣明细 
        </h5>
      
       <!--contentBegin-->  
        <div id="content" >
         <div class="search-box">
    	   <form>
         
            <div>
                <span>采购单号：</span>
                <input id="purchaseNum" type="text" class="form-control" name="" value="" placeholder="采购单号">
            </div>
            
           <div>
                <span>用户编号：</span>
                <input id="userNum" type="text" class="form-control" name="" value="" placeholder="查询用户编号">
            </div>
            
            <div>
                <span>客户名称：</span>
                <input id="customerName" type="text" class="form-control" name="" value="" placeholder="查询客户名称">
            </div>
           <div>
                <span>ICCID：</span>
                <input id="iccid" type="text" class="form-control" name="" value="" placeholder="查询ICCID">
            </div>
<!--            <div style="margin-left: 0px;">
                <span>返佣类型：</span>
                <select class="form-control" id="" name="" style="width:120px">               	
                	<option>全部</option>
                	<option>差价</option>
                	<option>折扣</option> 
                	
                </select>
            </div> -->
               <div id="">
                	<input type="reset" class="btn btn_reset" name="" id="" value="重置" />
                	<input type="button" class="btn btn_search" data-type="reload" name="" id="search" value="搜索" />
               </div>
        </form>
    </div>
    
<!--     <div class="search-box check-btn">
        <div class="check-btn">
   
        	<button class="btn btn-default" onclick="">修改</button>
            <button class="btn btn-default" onclick="">删除</button>
            
        </div>
        <div class="validityTime" style="float: right;">
	 	   	   <span>
	 	   	   	申请日期:
	 	   	   </span>
	 	   	 
	 	   	 	<input type="date" name="" id="" value=""  style="position: static"/>-
	 	   	   <input type="date" name="" id="" value="" style="position: static"/>
	 	   	 
	 	   	 </div>
	 	   	   <div class="validityTime" style="float: right;">
	 	   	   <span>
	 	   	   	审核日期:
	 	   	   </span>
	 	   	 
	 	   	 	<input type="date" name="" id="" value=""  style="position: static"/>-
	 	   	   <input type="date" name="" id="" value="" style="position: static"/>
	 	   	 
	 	   	 </div>
    </div> -->
    

    <div class="ibox-content">
		<table class="table-hide" id="rebateDetails" lay-data="{id: 'idRebateDetails'}" lay-filter="RebateDetails"></table>
    </div>
     <!--paginationBegin-->
	 <!--paginationEnd-->
</div>
 <!--contentEnd-->

</body>
<script type="text/javascript">
$(function(){
	layui.use('table',function(){
		var table=layui.table;
var tableIns = table.render({
			elem:'#rebateDetails',
			url:'showRebateDetails',
			id: 'idRebateDetails',
			cellMinWidth:120,
			page:true,
			cols:[[
			 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'}
             ,{field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
	      ,{field:'userNum', width:120, title: '用户编号' , sort:true}
	       ,{field:'purchaseNum', width:120, title: '采购单号' , sort:true}
	       ,{field:'iccid', width:120, title: 'ICCID', sort: true}
	      ,{field:'customerName', width:120, title:'客户名称',  sort:true} 
	      ,{field:'rechargeTotal', width:120, title: '充值总金额', sort: true}
	      ,{field:'rechargeAmount', width:120, title: '充值单数' ,sort:true}
	       ,{field:'rebateType', width:120, title: '返佣类型',sort:true}
	       ,{field:'rebateResult', width:120, title: '返佣值',sort:true}
	      ,{field:'rebateMoney', width:120, title:'返佣金额', sort:true} 
	       ,{field:'clearing', width:120, title: '结算',sort:true}
		     ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
			]],
		});
		    var $ = layui.$, active = {
	        reload: function(){
	            table.reload('idRebateDetails', {
	                where: {
	                	purchaseNum : $("#purchaseNum").val(),
	                	userNum : $("#userNum").val(),
	                	customerName : $("#customerName").val(),
	            		iccid : $("#iccid").val()
	                }
	            });
	        }
	    };
		//监听搜索查询
		$('#search').on('click', function(){
		    var type = $(this).data('type');
		    active[type] ? active[type].call(this) : '';
		});
	});
});
</script>
<script type="text/html" id="barTools">
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="xxx">详情</a>
</script>
<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
</html>
