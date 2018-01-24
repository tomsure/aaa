<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>卡片激活</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="../css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../vendor/bootstrap/bootstrap-table.min.css" rel="stylesheet">
<link href="../css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="../css/table_public.css"/>
<script src="../vendor/jquery-3.1.1.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../vendor/bootstrap/bootstrap-table.min.js"></script>
<script src="../vendor/bootstrap/bootstrap-table-locale-all.min.js"></script>
<script src="../vendor/layer/layer.min.js" ></script>
</head>
 
<body class="page-body">
	 <div class="filter_content">
	 	<form action="" method="post">
	 	   <div class="filter_left">
	 	   	<div class="usercode">
	 	   		 <span id="">
	 	    	<span id="">
	 	    		ICCID/用户自编码
	 	    	</span><input type="text" name="" placeholder="查询ICCID/用户自编码" id="" value="" />	
	 	    </span>
	 	    
	 	   	</div>
	 	    <div class="filter_line">
	 	    	<span id="">
	 	    	在线
	 	    </span>
	 	  <select name="" id="">
	 	  	 
	 	   
	 	  	<option value="">全部</option>
	 	  	<option value="">是</option>
	 	  	<option value="">否</option>
	 	  </select>
	 	    </div>
	 	 <div class="filter_area">
	 	 	 <span id="">
	 	  	归属地
	 	  </span>
	 	  <select name="" id="">
	 	  	
	 	  	<option value="">全部</option>
	 	  	<option value="">深圳市</option>
	 	  	<option value="">东莞市</option>
	 	  	<option value="">显示更多城市...</option>
	 	  </select>
	 	 </div>
	 	 <div class="filter_can">
	 	 	 <span>运营商</span>
	 	  <select name="" id="">
	 	  	<option value="">全部</option>
	 	  	<option value="">联通卡</option>
	 	  	<option value="">移动卡</option>
	 	  	<option value="">电信卡</option>
	 	  </select>
	 	 </div>
	 	  <div class="filter_kind">
	 	  	 <span>流量套餐</span>
	 	  <select name="" id="">
	 	  	<option value="">全部</option>
	 	  	<option value="">套餐有什么</option>
	 	  	<option value="">就显示什么</option>
	 	  	<option value="">很多很多</option>
	 	  </select>
	 	  </div>
	 	   <div class="filter_left_btn">
	 	   	 <button>全选</button>
	 	   	 <button>批量修改套餐</button>
	 	   	 <button>能否停复机</button>
	 	   	 <button>能否改套餐</button>
	 	   	 <button>修改状态</button>
	 	   	 <button>批量删除</button>
	 	   </div>
	 	   </div>
	 	   <div class="filter_right">
	 	   	 <div class="issuingTime">
	 	   	 	<span>发卡时间：</span>
	 	   	 	<input type="date" name="" id="" value="" />-
	 	   	 	<input type="date" name="" id="" value="" />
	 	   	 </div>
	 	   	 <div class="form_btn">
	 	   	 	 <input type="button" class="btn" name="" id="" value="重置" />
	 	    <input type="button" class="btn btn_search" name="" id="" value="搜索" />
	 	   	 </div>
	 	   	 <div class="validityTime">
	 	   	   <span>
	 	   	   	有效期:
	 	   	   </span>
	 	   	 
	 	   	 	  <input type="date" name="" id="" value="" />
	 	   	   <input type="date" name="" id="" value="" />
	 	   	 
	 	   	 </div>
	 	   	 
	 	   
	 	   	 <div class="activationTime">
	 	   	 	<span>激活时间:</span>
	 	   	 	<input type="date" name="" id="" value="" />
	 	   	 	<input type="date" name="" id="" value="" />
	 	   	 </div>
	 	   </div>
	 	</form>
	 </div>
	
    <h5 class="position-title">当前位置：首页>卡片管理>卡片激活</h5>

       <!--contentBegin-->  
        <div id="content" >
       
               <table class="table table-bordered">
               	<thead>
  
               		<tr style="text-align: center;">
               			<th><input type="checkbox" name="" id="" value="" /></th>
               			<th>序号</th>
               			<th>ICCID</th>
               			<th>用户自编码</th>
               			<th>运营商</th>
               			<th>归属地</th>
               			<th>SIM卡状态</th>
               			<th>套餐群组</th>
               			<th>套餐名称</th>
               			<th>套餐流量</th>
               			<th>有效期</th>
               			<th>是否限量</th>
               			<th>是否限速</th>
               			<th>限速规则</th>
                    <th>限速（上）</th>
               			<th>限速（下）</th>
               			<th>是否能更改套餐</th>
               			<th>更改套餐类型</th>
               			<th>能否申请停复机</th>
               			<th>激活时间</th>
               			<th>操作</th>
               		</tr>
               	</thead>
               	<tbody>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="order1" id="" value="" /></td>
               			<td>1</td>
               			<td>15648794654878854</td>
               			<td></td>
               			<td>联通卡</td>
               			<td>深圳市</td>
               			<td style="color: #00CC00;">已激活</td>
               			<td>月流量包</td>
               			<td>36G/月</td>
               			<td>36G</td>
               			<td>月</td>
               			<td>是</td>
               			<td>否</td>
               			<td>无</td>
               			<td>0</td>
               			<td>0</td>
               			<td>是</td>
               			<td>查看</td>
               			<td>是</td>
               			<td>2017/12/12</td>
               		  <td><a href="">矫正/编辑卡片/删除</a></td>
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="order2" id="" value="" /></td>
               			<td>2</td>
               			<td></td>
               			<td></td>
               			<td>移动卡</td>
               			<td>广州市</td>
                    <td style="color:#00CC00;;">已激活</td>
               			<td>季度流量包</td>
               			<td>58G/季</td>
               			<td>58G</td>
               			<td>年</td>
               			<td>是</td>
               			<td>否</td>
               			<td>无</td>
               			<td>0</td>
               			<td>0</td>
               			<td>否</td>
               			<td></td>
               			<td>否</td>
               			<td></td>
               			<td><a href="">改变状态/编辑信息/删除</a></td>
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="order3" id="" value="" /></td>
               			<td>3</td>
               			<td></td>
               			<td></td>
               			<td>移动卡</td>
               			<td>广州市</td>
               			<td style="color: #00CC00;">已激活</td>
               			<td>年度流量包</td>
               			<td>288G/年</td>
               			<td>288G</td>
               			<td>年</td>
               			<td>是</td>
               			<td>否</td>
               			<td>无</td>
               			<td>0</td>
               			<td>0</td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="order4" id="" value="" /></td>
               			<td>4</td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td>叠加包</td>
               			<td>188G/月</td>
               			<td>188G</td>
               			<td>月</td>
               			<td>是</td>
               			<td>否</td>
               			<td>无</td>
               			<td>0</td>
               			<td>0</td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="order5" id="" value="" /></td>
               			<td>5</td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td >无量宝</td>
               			<td>不限量</td>
               			<td>年</td>
               			<td>否</td>
               			<td>是</td>
               			<td>无套餐限速1</td>
               			<td>80k</td>
               			<td>0</td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>6</td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td>无量包</td>
               			<td>不限量超快</td>
               			<td>不限量</td>
               			<td>年</td>
               			<td>否</td>
               			<td>是</td>
               			<td>无限量套餐限速2</td>
               			<td>200kb</td>
               			<td>0</td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
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
