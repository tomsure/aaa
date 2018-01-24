<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>大客户充值缴费</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="../css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="../css/table_public.css"/>
<script src="../vendor/jquery-3.1.1.js"></script>
<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>

</head>
 
<body class="page-body">
	
	   <div class="search-box">
    	   <form>
            <div>
                <span>客户编号：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询客户编号">
            </div>
             <div id="" class="">
             	<span id="">
             		客户名称
             	</span>
             	<input type="text" class="form-control" placeholder="查询客户名称" name="" id="" value="" />
             </div>
                <div style="margin-left: 0px;">
                <span>银行卡号：</span>
                 <input type="text" class="form-control" placeholder="查询银行卡号" name="" id="" value="" />
            </div>
           
           
             <div style="margin-left: 0px;">
               <span>打款方式：</span>
                <select class="form-control" id="" name="">
                	
                	<option>全部</option>
                	<option>微信</option>
                	<option>支付宝</option>
                	<option value="">银行卡</option>
                	<option value="">信用额度</option>
               	    
                </select>
            </div>
            <div class="">
            	<span id="">
            		返利模式：
            	</span>
            	<select name="" id="" class="form-control">
            		<option value="">全部</option>
            		<option value="">折扣</option>
            		<option value="">差价</option>
            		
            	</select>
            </div>
            <div class="">
            	<span id="">
            		申请时间：
            	</span>
            	<input type="date" class="form-control"   name="" id="" value="" />- <input type="date" name="" id="" class="form-control" value="" />
            </div>
             
            <div class="">
              <span>充值时间：</span><input type="date" class="form-control" />-<input type="date" class="form-control" />
             </div>
             <div class="">
             	 <input type="reset" class="btn btn_reset" name="" id="" value="重置" style="margin-left: 30px;"/>
             <input id="search" type="button" class="btn btn_search" value="搜索" onclick="" style="height:34px;margin-left: 30px;">
            
             </div>
        </form>
          
    </div>
    
       
        <div class="check-btn">
        	<!--<button class="btn btn-default" onclick="">全选</button>-->
        	<button class="btn btn-default" onclick="">新增</button>
        	<button class="btn btn-default" onclick="">修改</button>
           	<button class="btn btn-default" onclick="">删除</button>
        </div>
         
     <h5 class="position-title">当前位置：首页>卡片管理>大客户充值缴费</h5>

       <!--contentBegin-->  
        <div id="content" >
       
               <table class="table table-bordered">
               	<thead>
  
               		<tr style="text-align: center;">
               			<th><input type="checkbox" /></th>
               			<th>序号</th>
                        <th>客户编号</th>
               			<th>客户名称</th>
               			<th>打款方式</th>
               			<th>打款证明</th>
               			<th>银行卡号</th>
               			<th>银行名称</th>
               			<th>充值金额</th>
               			<th>返利模式</th>
               			<th>申请时间</th>
               			<th>充值时间</th>
               			<th>操作</th>
               		</tr>
               	</thead>
               	<tbody>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>1</td>
               			<td>124589344</td>
               			<td>经销商名称</td>
               			<td>微信</td>
               			<td><a href="">查看</a></td>
               			<td>440204196878985145</td>
               			<td>工商银行</td>
               			<td>10000元</td>
               			<td>折扣</td>
               			<td>2017/12/12</td>
               			<td>2017/12/12</td>
               			<td><a href="">修改/删除</a></td>
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>2</td>
               				
               			<td>442424547</td>
               			<td>经销商名称</td>
               			
               			<td>支付宝</td>
               			
               			<td><a href="">查看</a></td>
               			<td><a href="">440204196878985145</a></td>
               			<td>中国银行</td>
               			<td><a href="">20000 元</a></td>
               			<td>差价</td>
               			<td></td>
               		    <td></td>
               			<td><a href="">修改/删除</a></td>
               			
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>3</td>
               			
               			<td>124589345</td>
               		    <td>经销商名称</td>
               			<td>银行卡</td>               			
               			<td><a href="">查看</a></td>
               			<td>440204196878985145</td>
               			<td>浦发银行</td>
               			<td>10000元</td>
               			<td>差价</td>
               			<td></td>
               			<td></td>
               			<td><a href="">修改/删除</a></td>
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>4</td>
               			<td></td>
               			<td></td>
               			<td>信用额度</td>
               			
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			<td></td>
               			
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>5</td>
               			<td></td>
               			<td></td>
               			<td></td>
               			
               			<td></td>
               			<td></td>
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
               			<td></td>
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
