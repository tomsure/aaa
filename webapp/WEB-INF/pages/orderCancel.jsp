<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>商品管理-商品取消</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap/bootstrap-table.min.css" rel="stylesheet">
<link href="css/public.css" rel="stylesheet">

</head>

<body class="page-body">
	
	   <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<a href="javascript:void(0)" onclick="location.reload()" style="float: right;"><i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;" title="刷新"></i> </a>    	 
    	当前位置：商品管理&gt;商品取消
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
          
             </form>
    </div>
    <div class="search-box check-btn">
        <div class="check-btn">
    
        	<button class="btn btn-default" onclick="">新增</button>
        	<button class="btn btn-default" onclick="">删除</button>
      
        </div>
       
    </div>
    

    <div class="ibox-content">
       		
		<table class="table table-bordered">
		
		  <thead>
			<tr>
				<th><input type="checkbox"></th>
			  <th>序号</th>
			  <th>商品名称</th>
			  <th>金额</th>
			  <th>商品类型</th>
			  <th>优惠</th>
			  <th>实付金额</th>
			  <th>规则名称</th>
			  <th>订单编号</th>
			  <th>收件人地址</th>
			  <th>收件人</th>
			  <th>收件人电话</th>
			  <th>快递公司</th>
			  <th>快递单号</th>
			  <th>快递费</th>
			  <th>状态</th>
			  <th>用户手机号</th>
			  <th>来源</th>
						
			  <th>操作</th>
			</tr>
			  </thead>
			  <tbody>
			<tr>
				<td><input type="checkbox"></td>
			  <td>1</td>
			  <td>xxxx</td>
			  <td>1999 元</td>
			   <td>xxxx</td>
			   <td>xxxx</td>
			  <td>99元</td>
			  <td>xx</td>
			  <td>xx</td>
			   <td>xxxx</td>
			  <td>99元</td>
			  <td>xx</td>
			   <td>xxx</td>
			   <td>500元</td>
			  <td>xxx</td>
			  <td>500元</td>
			  <td>xxx</td>
			
			  <td>无</td>
			  <td><a href="">重新发货</a>/<a href="">修改订单</a>/<a href="">删除</a></td>
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
