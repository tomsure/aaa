<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>分销提现申请</title>
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
    	当前位置：分销管理&gt;分销提现申请 
        </h5>
      
       <!--contentBegin-->  
        <div id="content" >
         <div class="search-box">
    	   <form>
            <div>
                <span>用户编号：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询用户编号">
            </div>
           
            <div>
                <span>绑定编号：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询绑定编号">
            </div>
            
           <div>
                <span>银行卡号：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询卡号">
            </div>
            
             <div>
                <span>客户名称：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询客户名称">
            </div>
           <div>
                <span>负责人：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询负责人">
            </div>
          <div>
                <span>负责人电话：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询负责人电话">
            </div>
           <div style="margin-left: 0px;">
                <span>身份：</span>
                <select class="form-control" id="" name="" style="width:120px">               	
                	<option>全部</option>
                	<option>A</option>
                	<option>B</option> 
                	<option>C</option>
                	<option>D</option>
                	<option>X</option>
                </select>
            </div>
           <div style="margin-left: 0px;">
                <span>状态：</span>
                <select class="form-control" id="" name="" style="width:120px">               	
                	<option>全部</option>
                	<option>代提现</option>
                	<option>提现中</option>                	
                </select>
            </div>
        </form>
    </div>
    
    <div class="search-box check-btn">
        <div class="check-btn">
     
        	<button class="btn btn-default" onclick="">申请</button>
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
    </div>
    

    <div class="ibox-content">
       		
		<table class="table table-bordered">
		
		  <thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>序号</th>
				<th>用户编号</th>
       			<th>ICCID</th>
       			<th>实名用户</th>
       		    <th>购买总额</th>       			
       			<th>分润比例</th>
       			<th>可分润金额</th>
       		    <th>等级</th>       			
       			<th>绑定编号</th>
       			<th>经销商名称 </th>
       			<th>身份 </th>
       			<th>提现方式 </th>
       			<th>银行卡号 </th>
       			<th>状态 </th>
       			<th>负责人 </th>
       			<th>负责人电话 </th>     	
       			<th>申请日期</th>       			
       			<th>操作</th>
			</tr>
			  </thead>
			  <tbody>
			<tr>
		      <td><input type="checkbox"></td>
			  <td>1</td>
			  <td>A00000002</td>
			  <td>655400111112</td>
			  <td>张三</td>
			  <td>50.00</td>
			  <td>2%</td>
			  <td>1.00</td>
			  <td>O</td>
			  <td>经销商编号</td>
			  <td>经销商名称</td>
			  <td>区域经销商</td>
			  <td>中国银行</td>
			  <td>15488888888888888888</td>
			  <td>代提现</td>
			  <td>小三</td>
			  <td>138 8888 8888</td>		
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
