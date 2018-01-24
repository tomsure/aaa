<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>商品管理-商品退货订单</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="../css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../vendor/bootstrap/bootstrap-table.min.css" rel="stylesheet">
<link href="../css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="../vendor/layui/css/layui.css"/>
<script src="../vendor/jquery-3.1.1.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../vendor/layui/layui.js"></script>
<script src="../js/public.js" ></script>
<script src="../js/data_table.js"></script>
</head>

<body class="page-body">
	
	 <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<a href="javascript:void(0)" onclick="location.reload()" style="float: right;"><i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;" title="刷新"></i> </a>    	 
    	当前位置：商品管理&gt;商品退货订单
        </h5>
   
       <!--contentBegin-->  
        <div id="content" >
         <div class="search-box">
    	   <form>
            <div>
                <span>订单编号：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询订单编号">
            </div>
           
            <div>
                <span>快递单号：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询快递单号">
            </div>
            
            <div>
                <span>商品名称：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询商品名称">
            </div>
            
            <div>
                <span>收件人电话：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询收件人电话">
            </div>
            
            <div>
                <span>下单用户：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询下单用户">
            </div>
            
           <div style="margin-left: 0px;">
                <span>商品类型：</span>
                <select class="form-control" id="" name="" style="width:120px">               	
                	<option>设备+套餐</option>
                	<option>设备</option>
                	<option>空卡</option>  
                	<option>合约机</option> 
                	<option>套餐(含卡)</option>  
                	
                </select>
            </div>
           
            <div style="margin-left: 0px;">
               <span>快递公司：</span>
                <select class="form-control" id="" name="">
                	
                	<option>顺丰</option>
                	<option>申通</option>
                	<option>其他</option>
               	
                </select>
            </div>
              <div id="">
                	<input type="reset" class="btn btn_reset" name="" id="" value="重置" />
                	<input type="button" class="btn btn_search" name="" id="" value="搜索" />
                </div>
          </form>
    </div>
    <div class="search-box check-btn">
        <div class="check-btn">
        
        
        	<button class="btn btn-default" onclick="">删除</button>
      
        </div>
         <div class="validityTime" style="float: right;">
	 	   	   <span>
	 	   	   	退单时间:
	 	   	   </span>
	 	   	 
	 	   	 	<input type="date" name="" id="" value=""  style="position: static"/>-
	 	   	   <input type="date" name="" id="" value="" style="position: static"/>
	 	   	 
	 	   	 </div>
       
    </div>
    

    <div class="ibox-content">
       		
		   <table id="commodityReturn"  class="table-hide"></table>
    </div>
        
</div>
 <!--contentEnd-->


</body>
	<script type="text/html" id="indexTpl">
       {{d.LAY_TABLE_INDEX+1}} 
  </script>
<script type="text/html" id="barTools">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat">上/下架</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>

</html>
