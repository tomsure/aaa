<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>订单管理-退款管理</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap/bootstrap-table.min.css" rel="stylesheet">
<link href="css/public.css" rel="stylesheet">
</head>

<body class="page-body">
	<!--headerBegin-->
	 <header class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                   <div class="navbar-header"><img src="" style="width: 200px;height: 61px;"> 
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        
                        <li id="users"><b style="font-size: 15px;margin: 0 10px">admin</b></li>
                     
                         <li class="dropdown">
                    
                             <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#" onclick="logOut()" style="text-align: center;" title="退出">
                                <i class="fa fa-power-off fa-2x" style="position: relative;top:5px"></i> 
                            </a>
                        </li>
                    </ul>
                    <div style="clear: both;"></div>
	                <div>
						<ul class="nav navbar-nav nav-border" >
							<li><a href="home.html">首页</a></li>
						
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									商品管理
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
								<li><a href="shopList.html">商品列表</a></li>
									<li><a href="shopRecharge.html">充值缴费</a></li>
									<li><a href="shopActivity.html">促销活动</a></li>
									<li><a href="shopRule.html">活动规则</a></li>
								
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									订单管理
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
									<li><a href="orderList.html">订单列表</a></li>
									<li><a href="orderOutLibrary.html">订单出库</a></li>
									<li><a href="orderReturns.html">订单退货</a></li>								
									<li><a href="orderCancel.html">订单取消</a></li>
									<li><a href="orderDealerPurchase.html">经销商采购订单</a></li>
									<li><a href="orderDealerReview.html">经销商订单审核</a></li>
									<li><a href="orderFaultReporting.html">故障申报</a></li>
									<li><a href="orderRefundManagement.html">退款管理</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									卡片管理
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
								
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									卡池管理
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
								
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">
									库存管理
									<b class="caret"></b>
								</a>
								<ul class="dropdown-menu">
								
								</ul>
							</li>
						</ul>
	                  </div>
	</header>
	
	<!--headerEnd-->
	
    <h5 class="position-title">当前位置：订单管理&gt;退款管理【这个页面还没原型图】</h5>

       <!--contentBegin-->  
       <!-- <div id="content" >
         <div class="search-box">
    	   <form>
            <div>
                <span>故障单号：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询故障单号">
            </div>
           
            <div>
                <span>ICCID：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询ICCID">
            </div>
            
            <div>
                <span>保修用户：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询保修用户">
            </div>
            
          
            
           <div>
                <span>保修类型：</span>
                <select class="form-control" id="" name="" style="width:120px">               	
                	<option>全部</option>
                	<option>卡</option>
                	<option>合约机</option>  
                	<option>设备</option> 
                	<option>其他</option>  
                	
                </select>
            </div>
           
            <div>
               <span>状态：</span>
                <select class="form-control" id="" name="">                	
                	<option>待处理</option>
                	<option>已处理</option>               	
                </select>
            </div>
             
             <div>
               <span>保修渠道：</span>
                <select class="form-control" id="" name="">
                	
                	<option>客服</option>
                	<option>公众号</option>
                	<option>官网</option>
                </select>
            </div>
          
             <input id="search" type="button" class="btn btn-info" value="查询" onclick="" style="height:34px;margin-left: 30px;">
        </form>
    </div>
    <div class="search-box check-btn">
        <div class="check-btn">
        	<button class="btn btn-default" onclick="">全选</button>
        	<button class="btn btn-default" onclick="">删除</button>
        	<button class="btn btn-default" onclick="">新增</button>
      
        </div>
       
    </div>
    

    <div class="ibox-content">
       		
		<table class="table table-bordered">
		
		  <thead>
			<tr>
				<th></th>
			  <th>序号</th>
			  <th>故障单号</th>
			  <th>ICCID</th>
			  <th>报修类型</th>
			  <th>报修用户</th>
			  <th>状态</th>
			  <th>联系人</th>
			  <th>图片</th>
			  <th>问题描述</th>
			  <th>报修渠道</th>
			  <th>结果反馈</th>
			  <th>申请日期</th>			  
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
			  <td><a href="">处理完成</a>/<a href="">修改</a>/<a href="">删除</a></td>
			</tr>
	  </tbody>
		</table>
           
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
</div>-->
 <!--contentEnd-->

<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/layer/layer.min.js" ></script>
<script src="js/public.js" ></script>


</body>

</html>
