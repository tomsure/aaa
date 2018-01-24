<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>卡片管理-停复机规则设置</title>
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
                <span>ICCID/用户自编码：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询ICCID/用户自编码">
            </div>
             <div id="" class="">
             	<span id="">
             		客户名称
             	</span>
             	<input type="text" class="form-control" placeholder="查询客户名称" name="" id="" value="" />
             </div>
                <div style="margin-left: 0px;">
                <span>实名名称：</span>
                 <input type="text" class="form-control" placeholder="查询实名名称" name="" id="" value="" />
            </div>
           
            <div class="">
            	<span>证件号码：</span>
             <input type="checkbox" class="form-control"  placeholder="查询证件号码" name="" id="" value="" />
            </div>
             <div style="margin-left: 0px;">
               <span>实名来源：</span>
                <select class="form-control" id="" name="">
                	
                	<option value="">全部</option>
                	<option value="">WEB</option>
                	<option value="">公众号</option>
                	<option value="">后台实名</option>
                	
               	    
                </select>
            </div>
            <div class="">
            	<span>性别</span>
            	<select name="" class="form-control">
            		<option value="">全部</option>
            		<option value="">男</option>
            		<option value="">女</option>
            	</select>
            </div>
                <div>
                	<span>实名时间：</span>
                	<input type="date" class="form-control" name="" id="" value="" />
                	<input type="date" class="form-control" name="" id="" value="" />
                	
                </div>
             <div class="">
             	<input type="reset" class="form-control btn btn_reset" name="" id="" value="重置" />
             	<input type="search" class="form-control btn btn_search" value="搜索"  />
             </div>   
                
        </form>
          
    </div>
    
       
        <div class="check-btn">
        	<button class="btn btn-default" onclick="">通过</button>
        	<button class="btn btn-default" onclick="">新增</button>
        	<button class="btn btn-default" onclick="">修改</button>
           	<button class="btn btn-default" onclick="">删除</button>
        </div>
         
     <h5 class="position-title">当前位置：首页>卡片管理>停复机规则设置</h5>

       <!--contentBegin-->  
        <div id="content" >
       
               <table class="table table-bordered">
               	<thead>
  
               		<tr style="text-align: center;">
               			<th><input type="checkbox" /></th>
               			<th>序号</th>
                        <th></th>
               			<th></th>
               			<th></th>
               			<th></th>
               			<th></th>
               			<th></th>
               			<th></th>
               			<th></th>
               			<th></th>
               			<th></th>
               			<th>操作</th>
               		</tr>
               	</thead>
               	<tbody>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>2</td>
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
               			<td><a href="">审核通过/修改/删除</a></td>
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>3</td>
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
               			<td><a href="">审核通过/修改/删除</a></td>
               		</tr>
               		<tr>
               			<td><input type="checkbox" class="checkb" name="" id="" value="" /></td>
               			<td>4</td>
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
               			<td><a href="">审核通过/修改/删除</a></td>
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
               			<td><a href="">审核通过/修改/删除</a></td>
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
