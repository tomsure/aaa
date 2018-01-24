<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>套餐群组</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="css/table_public.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

</head>
 
<body class="page-body">
	
	   <div class="search-box">
    	   <form>
            <div>
                <span>套餐名称：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询套餐名称（可模糊）">
            </div>
                <div style="margin-left: 0px;">
                <span>套餐群组：</span>
                <select class="form-control" id="" name="" style="width:120px">               	
                	<option value="">全部</option>
                	<option value="">月流量包</option>
                	<option value="">季度流量包</option>
                	<option value="">年流量包</option>
                	<option value="">叠加包</option>
                	<option value="">无量套餐</option>
                </select>
            </div>
           
            <div style="margin-left: 0px;">
               <span>有效期：</span>
                <select class="form-control" id="" name="">
                	
                	<option>全部</option>
                	<option>月</option>
                	<option>年</option>
               	    <option>季度</option>
                </select>
            </div>
             <div style="margin-left: 0px;">
               <span>是否限量：</span>
                <select class="form-control" id="" name="">
                	
                	<option>全部</option>
                	<option>是</option>
                	<option>否</option>
               	    
                </select>
            </div>
            <div class="">
            	<span id="">
            		限速规则：
            	</span>
            	<select name="" id="" class="form-control">
            		<option value="">全部</option>
            		<option value="">有什么</option>
            		<option value="">就显示什么</option>
            		
            	</select>
            </div>
            <div class="">
            	<span id="">
            		状态：
            	</span>
            	<select name="" id="" class="form-control">
            		<option value="">全部</option>
            		<option value="">启用</option>
            		<option value="">半禁状态</option>
            		<option value="">全禁状态</option>
            	</select>
            </div>
            <div class="">
            	<span id="">
            		能否更改套餐：
            	</span>
            	<select name="" id="" class="form-control">
            		<option value="">全部</option>
            		<option value="">是</option>
            		<option value="">否</option>
            	</select>
            </div>
            <div class="">
            	<span id="">
            		能否申请停复机：
            	</span>
            	<select name="" id="" class="form-control">
            		<option value="">全</option>
            		<option value="">是</option>
            		<option value="">否</option>
            	</select>
            </div>
             
            <div class="">
              <span>创建时间：</span><input type="date" class="form-control" />-<input type="date" class="form-control" />
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
        	<button class="btn btn-default" onclick="">批量编辑</button>
           	<button class="btn btn-default" onclick="">批量删除</button>
        </div>
         
     <h5 class="position-title">当前位置：首页>卡片管理>套餐群组</h5>

       <!--contentBegin-->  
        <div id="content" >
       
               <table class="table table-bordered">
               	<thead>
  
               		<tr style="text-align: center;">
               			<th><input type="checkbox" /></th>
               			<th>序号</th>
               			<th>套餐群组</th>
               			<th>有效期</th>
               			<th>是否限量</th>
              			<th>创建时间</th>
               			<th>操作</th>
               			
               		</tr>
               	</thead>
               	<tbody>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>1</td>
               			<td>月流量包</td>
               			<td>月</td>
               			<td>是</td>
               			<td>2017/12/12</td>
               			<td><a href="">编辑群组/删除</a></td>
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>2</td>
               				
               			<td>季度流量包</td>
               			<td>季度</td>
               			
               			<td>是</td>
               			
               			<td></td>
               			<td><a href="">权限/编辑套餐/删除</a></td>
               			
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>3</td>
               			
               			<td>季度流量包</td>
               		
               			<td>季度</td>
               			<td>是</td>
               			
               			<td></td>
               			<td></td>
               			
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>4</td>
               			<td>叠加包</td>
               			<td>月</td>
               			<td>是</td>
               			
               			<td></td>
               			<td></td>
               			<td></td>
               			
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>5</td>
               			<td>叠加包</td>
               			<td>年</td>
               			<td>是</td>
               			
               			<td></td>
               			<td></td>
               			<td></td>
               			
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>6</td>
               			<td>叠加包</td>
               			<td>季度</td>
               			<td>是</td>
               			
               			<td></td>
               			<td></td>
               			<td></td>
               			
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>7</td>
               			<td>无量套餐</td>
               			<td>年</td>
               			
               			<td></td>
               			<td></td>
               			<td></td>
               		</tr>
               		<tr>
               			<td><input type="checkbox" name="" id="" value="" /></td>
               			<td>8</td>
               			
               			<td>无量套餐</td>
               			<td>月</td>
               			<td>否</td>
               			
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
