<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>用户信息</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap/bootstrap-table.min.css" rel="stylesheet">
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="css/table_public.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/bootstrap/bootstrap-table.min.js"></script>
<script src="vendor/bootstrap/bootstrap-table-locale-all.min.js"></script>
<script src="vendor/layer/layer.min.js" ></script>
</head>
 
<body class="page-body">
	 <div class="filter_content" >
	 	<form action="" method="post">
	 	   <div class="filter_content_top"  >
	 	   	<div class="usercode" >
	 	   		 <span id="">
	 	    	<span id="">
	 	    		ICCID/用户自编码
	 	    	</span><input type="text" name="" placeholder="查询ICCID/用户自编码" id="" value="" />	
	 	    </span>
	 	    
	 	   	</div>
	 	    <div class="CustomerName" style="margin-left: 180px;">
	 	    	<span id="">
	 	    	客户名称
	 	    </span>
	 	     <input type="text" class="filter_input" name="" id="" placeholder="查询客户名称" value="" />
	 	    </div>
	 	 <div class="RealName" style="margin-left:35px ;">
	 	 	 <span id="">
	 	  	实名名称
	 	  </span>
	 	  <input type="text" name="" class="filter_input" placeholder="查询真实名称" id="" value="" />
	 	 </div>
	 	 <div class="IdentificationNumber" style="margin-left: 20px;">
	 	 	 <span>证件号码</span>
	 	  <input type="text" name="" class="filter_input" placeholder="查询证件号码" id="" value="" />
	 	 </div>
	 	   <div class="form_btn" style="margin-left: 360px;">
	 	   	<button class="btn btn_reset" >重置</button>
	 	   	<button  class="btn btn_search">搜索</button>
	 	   </div>
	 	   </div>
	 	   
	 	  <div class="filter_content_bottom" >
	 	   	<div class="filter_left_btn">
	 	   	 
	 	   	 <button class="btn_step_authentication">新增</button>
	 	   	 <button class="btn_step_authentication">修改</button>
	 	   	 <button class="btn_step_authentication">批量删除</button>
	 	   	 
	 	   </div>
	 	   	 <div class="RealNameSource" >
	 	   	 	<span>实名来源:</span>
	 	   	 	<select name="" id="">
	 	   	 		<option value="">全部</option>
	 	   	 		<option value="">WEB</option>
	 	   	 		<option value="">公众号</option>
	 	   	 		<option value="">后台实名</option>
	 	   	 	</select>
	 	   	 </div>
	 	   	 <div class="sex_select" style="margin-left: 100px;" >
	 	   	 	<span>性别</span>
	 	   	 	<select name="">
	 	   	 	<option value="sex01">男</option>
	 	   	 	<option value="sex02">女</option>
	 	   	 	</select>
	 	   	 </div>
	 	   	 <div class="RealNameTime" style="margin-left: 120px;">
	 	   	   <span>
	 	   	     实名时间：
	 	   	   </span>
	 	   	 
	 	   	 	  <input type="date" class="filter_input" name="" id="" value="" /> -
	 	   	     <input type="date" class="filter_input" name="" id="" value="" />
	 	   	 
	 	   	 </div>
	 	   	 <div class="TransitTime" >
	 	   	 	<span>通过时间:</span>
	 	   	 	<input type="date" class="filter_input" name="" id="" value="" />
	 	   	 	<input type="date" class="filter_input" name="" id="" value="" />
	 	   	 </div>
	 	   </div> 
	 	  
	 	  
	 	</form>
	 </div>
	
    <h5 class="position-title">当前位置：首页>卡片管理>用户信息</h5>

       <!--contentBegin-->  
        <div id="content" >
       
               <table class="table table-bordered">
               	<thead>
  
               		<tr style="text-align: center;">
               			<th><input type="checkbox" name="" id="" value="" /></th>
               			<th>序号</th>
               			<th>用户编号</th>
               			<th>实名来源</th>
               			<th>客户名称</th>
               			<th>用户电话</th>
               			<th>实名姓名</th>
               			<th>性别</th>
               			<th>证件号码</th>
               			<th>图片</th>
               			<th>ICCID</th>
               			<th>用户自编码</th>
               			<th>状态</th>
               			<th>实名时间</th>
               			<th>通过时间</th>
               			
               			<th>操作</th>
               		</tr>
               	</thead>
               	<tbody>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>1</td>
               			<td>ABC00111111</td>
               			<td>WEB</td>
               			<td>经销商名称</td>
               			<td>13588888888</td>
               			<td>张三</td>
               			<td >男</td>
               			<td>440204196878985145</td>
               			<td><a href="">查看</a></td>
               			<td>454879456541236548962</td>
               			<td>4648798454444664</td>
               			<td>审核通过</td>
               			<td>2017/11/11</td>
               			<td>2017/10/10</td>
              			<td><a href="">修改/删除</a></td>
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>1</td>
               			<td>ABC00111112</td>
               			<td>公众号</td>
               			<td>经销商名称</td>
               			<td>13588888889</td>
               			<td>李四</td>
               			<td >女</td>
               			<td>440204196878985145</td>
               			<td><a href="">查看</a></td>
               			<td>454879456541236548962</td>
               			<td>4648798454444664</td>
               			<td>审核通过</td>
               			<td>2017/11/11</td>
               			<td>2017/10/10</td>
              			<td><a href="">修改/删除</a></td>
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>1</td>
               			<td>ABC00111111</td>
               			<td>后台实名</td>
               			<td>经销商名称</td>
               			<td>13588888888</td>
               			<td>张三</td>
               			<td >男</td>
               			<td>440204196878985145</td>
               			<td><a href="">查看</a></td>
               			<td>454879456541236548962</td>
               			<td>4648798454444664</td>
               			<td>审核通过</td>
               			<td>2017/11/11</td>
               			<td>2017/10/10</td>
              			<td><a href="">修改/删除</a></td>
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>1</td>
               			<td>ABC00111111</td>
               			<td>WEB</td>
               			<td>经销商名称</td>
               			<td>13588888888</td>
               			<td>张三</td>
               			<td >男</td>
               			<td>440204196878985145</td>
               			<td><a href="">查看</a></td>
               			<td>454879456541236548962</td>
               			<td>4648798454444664</td>
               			<td>审核通过</td>
               			<td>2017/11/11</td>
               			<td>2017/10/10</td>
              			<td><a href="">修改/删除</a></td>
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
			 <!--contentEnd-->
                   



</body>

</html>
