<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>商品管理-促销活动</title>
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
    	当前位置：商品管理&gt;促销活动
        </h5>
   

      <!--contentBegin-->  
        <div id="content" >
         <div class="search-box">
    	   <form>
            <div>
                <span>活动名称：</span>
                <input type="text" class="form-control" value="">
            </div>
           
           <div style="margin-left: 40px;">
                <span>活动类型：</span>
                <select class="form-control" id="" name="" style="width:120px">               	
                	<option>全部</option>
                	<option>满减</option>
                	<option>返现</option>  
                	<option>满送</option>  
                	
                </select>
            </div>
            
           <div style="margin-left: 40px;">
                <span>栏目：</span>
                <select class="form-control" id="" name="" style="width:120px">               	
                	<option>全部</option>
                	<option>推荐</option>
                	<option>热门</option> 
                	<option>进行中</option>
                	<option>往期回顾</option>
                </select>
            </div>
            <div style="margin-left: 40px;">
               <span>状态：</span>
                <select class="form-control" id="" name="">
                	
                	<option>全部</option>
                	<option>置顶</option>
                	<option>正常</option>
                	<option>失效</option>
                	
                </select>
            </div>
             <div style="margin-left: 40px;">
               <span>打开方式：</span>
                <select class="form-control" id="" name="">
                	
                	<option>全部</option>
                	<option>链接</option>
                	<option>内页</option>
                	
                </select>
            </div>
            <!-- <input id="search" type="button" class="btn btn-info" value="查询" onclick="" style="height:34px;margin-left: 30px;">-->
        </form>
    </div>
    <div class="search-box check-btn">
        <div class="check-btn">
        	
        	<button class="btn btn-default" onclick="">新增</button>
        	<button class="btn btn-default" onclick="">上架</button>
        	<button class="btn btn-default" onclick="">下架</button>
        	<button class="btn btn-default" onclick="">置顶</button>
        	<button class="btn btn-default" onclick="">删除</button>
        
        </div>
       
    </div>
    

    <div class="ibox-content">
       
		
		<table class="table table-bordered">
		  
		  <thead>
			<tr>
			  <th><input type="checkbox"></th>
			  <th>序号</th>
			  <th>活动名称</th>	
			  <th>活动类型</th>
			  <th>栏目</th>
			  <th>状态</th>
			  <th>活动图片</th>
			  <th>打开方式</th>
			  <th>有效期</th>
			  <th>活动文字介绍</th>			 			
			  <th>操作</th>
			</tr>
			  </thead>
			  <tbody>
			<tr>
				<td><input type="checkbox"></td>
			  <td>1</td>
			  <td>100 元</td>
			  <td>1999 元</td>
			   <td>充值</td>
			  <td>上架</td>
			  <td>添加</td>
			   <td>否</td>
			  <td>无</td>
			  <td>无</td>			   			  
			  <td><a href="">取消置顶</a>/<a href="">上架</a>/<a href="">下架</a>/<a href="">修改</a>/<a href="">删除</a></td>
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
