<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>经销商订单审核</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="../css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../vendor/bootstrap/bootstrap-table.min.css" rel="stylesheet">
<link href="../css/public.css" rel="stylesheet">
</head>

<body class="page-body">
	
	
    <h5 class="position-title">当前位置：订单管理&gt;经销商订单审核</h5>

       <!--contentBegin-->  
        <div id="content" >
         <div class="search-box">
    	   <form>
            <div>
                <span>经销商编号：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询经销商编号">
            </div>
           
            <div>
                <span>经销商：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询经销商">
            </div>
            
            <div>
                <span>收件人电话：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询收件人电话">
            </div>
            
           
            
            
           <div style="margin-left: 0px;">
                <span>归属地：</span>
                <select class="form-control" id="" name="" style="width:120px">               	
                	<option>深圳市</option>
                	<option>广州市</option>
                	<option>揭阳市</option>                 	
                </select>
            </div>
           
            <div style="margin-left: 0px;">
               <span>运营商：</span>
                <select class="form-control" id="" name="">
                	
                	<option>全部</option>
                	<option>电信</option>
                	<option>联通</option>
               	    <option>移动</option>
                </select>
            </div>
           <div style="margin-left: 0px;">
               <span>购买类型：</span>
                <select class="form-control" id="" name="">               	
                	<option>全部</option>
                	<option>套餐(含卡)</option>
                	<option>空卡</option>
                	<option>设备</option>
               	    <option>设备(含套餐)</option>
               	    <option>合约机</option>
                </select>
            </div>
             <input id="search" type="button" class="btn btn-info" value="查询" onclick="" style="height:34px;margin-left: 30px;">
        </form>
    </div>
    <div class="search-box check-btn">
        <div class="check-btn">
        	<button class="btn btn-default" onclick="">全选</button>
        	<button class="btn btn-default" onclick="">通过</button>
        	<button class="btn btn-default" onclick="">新增</button>
            <button class="btn btn-default" onclick="">批量删除</button>
        </div>
       
    </div>
    

    <div class="ibox-content">
       		
		<table class="table table-bordered">
		
		  <thead>
			<tr>
				<th></th>
			  <th>序号</th>
			  <th>采购单号</th>
			  <th>状态</th>
			  <th>经销商编号</th>
			  <th>经销商</th>
			  <th>运营商</th>
			  <th>归属地</th>
			  <th>数量</th>
			  <th>购买类型</th>
			  <th>套餐描述</th>
			  <th>分润模式</th>
			  <th>类型</th>
			  <th>订单金额</th>
			  <th>支付方式</th>
			  <th>支付证明</th>
			  <th>套餐</th>
			  <th>行业用途</th>
			  <th>快递信息</th>
			  <th>申请时间</th>		
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
			  <td>xxx</td>
			  <td>xxx</td>
			  <td>www</td>
			  <td><a href="">划卡</a>/<a href="">修改订单</a>/<a href="">删除</a></td>
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
</div>
 <!--contentEnd-->
<script src="../vendor/jquery-3.1.1.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../vendor/bootstrap/bootstrap-table.min.js"></script>
<script src="../vendor/bootstrap/bootstrap-table-locale-all.min.js"></script>
<script src="../vendor/layer/layer.min.js" ></script>

</body>

</html>
