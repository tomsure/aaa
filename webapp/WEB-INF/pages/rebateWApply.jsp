<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>返佣管理-返佣提现申请</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap/bootstrap-table.min.css" rel="stylesheet">
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="css/table_public.css"/>
</head>

<body class="page-body">
	
	
        <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：返佣管理&gt;返佣提现申请 
        </h5>
      
       <!--contentBegin-->  
        <div id="content" >
         <div class="search-box">
    	   <form>
         
            <div>
                <span>采购单号：</span>
                <input type="text" class="form-control" name="" value="" placeholder="采购单号">
            </div>
            
           <div>
                <span>经销商编号：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询经销商编号">
            </div>
            
            <div>
                <span>经销商名称：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询经销商名称">
            </div>
           
           <div style="margin-left: 0px;">
                <span>返佣类型：</span>
                <select class="form-control" id="" name="" style="width:120px">               	
                	<option>全部</option>
                	<option>差价</option>
                	<option>折扣</option> 
                	
                </select>
            </div>
         </form>
    </div>
    
    <div class="search-box check-btn">
        <div class="check-btn">
        
        	<button class="btn btn-default" onclick="">申请</button>
            <button class="btn btn-default" onclick="">删除</button>
            
        </div>
        <div class="validityTime" style="float: right;">
	 	   	   <span>
	 	   	   	申请日期:
	 	   	   </span>
	 	   	 
	 	   	 	<input type="date" name="" id="" value=""  style="position: static"/>-
	 	   	   <input type="date" name="" id="" value="" style="position: static"/>
	 	   	 
	 	   	 </div>
	 	   	  
    </div>
    

    <div class="ibox-content">
       		
		<table class="table table-bordered">
		
		  <thead>
			<tr>
				<th><input type="checkbox" id=""></th>
				<th>序号</th>
				<th>ICCID</th>
       			<th>经销商编号</th>
       			<th>经销商名称</th>
       			<th>可返佣金额</th>
       			<th>返佣名称</th>
       			<th>返佣类型</th>
       		    <th>消费总金额</th>       			       	
       			<th>订单总数</th>
       			<th>状态</th>
       			<th>返佣方式</th>      	
       			<th>银行卡号 </th>
       			<th>联系方式 </th>      
       			<th>申请时间</th>
       			<th>操作</th>
			</tr>
			  </thead>
			  <tbody>
			<tr>
		      <td><input type="checkbox"></td>
			  <td>1</td>
			  <td>158464789546565</td>
			  <td>SZ00001</td>
			  <td>深圳XX1科技有限公司</td>
			  <td>400.00</td>
			  <td>差价20元</td>
			  <td>差价</td>
			  <td>2000.0</td>			  
			  <td>200</td>
			  <td>待提现</td>
			  <td>银行卡</td>
			  <td>215648798777777777</td>
			  <td>18899814587</td>
			  <td>2017/12/12</td>
			  <td><a href="">申请</a>/<a href="">修改</a>/<a href="">删除</a></td>
			</tr>
		
	  </tbody>
		</table>
       
    </div>
     <!--paginationBegin-->
    <div id="pagination">
	    <ul class="pagination" style="float: right;">
				    <li><a href="#">&laquo;</a></li>
				    <li class="active"><a href="#">1</a></li>
				    <li><a href="#">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
				    <li><a href="#">&raquo;</a></li>
		</ul>	
	</div>
	 <!--paginationEnd-->
</div>
 <!--contentEnd-->

<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/layer/layer.min.js" ></script>
<script src="js/public.js" ></script>


</body>

</html>
