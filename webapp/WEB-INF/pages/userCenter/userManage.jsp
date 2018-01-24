<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>用户中心-用户管理</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/homeAbout/font-awesome.min.css"/>
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="css/customModal.css"/>
<link rel="stylesheet" type="text/css" href="css/table_public.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="vendor/layui/layui.js"></script>
<script type="text/javascript" src="js/public.js"></script>
</head>
 
<body class="page-body">
	 
        <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：用户中心&gt;用户管理
        </h5>
       <div class="search-box">
	   <form>
            <div>
                <span>用户编号：</span>
                <input id="userNum" type="text" class="form-control" placeholder="查询用户编号">
            </div>
	        <div>
                <span>姓名：</span>
                <input id="name" type="text" class="form-control" placeholder="查询姓名">
            </div>
            <div>
                <span>电话：</span>
                <input id="phone" type="text" class="form-control" placeholder="查询电话">
            </div>
            <div style="margin-left: 0px;">
                <span>性别：</span>
                 <select name="" id="gender">
                 	<option value="">全部</option>
                 	<option value="0">男</option>
                 	<option value="1">女</option>
                 </select>
            </div>
             <div class="">
             	 <input type="reset" class="btn btn_reset" name="" id="" value="重置" style="margin-left: 30px;"/>
             <input id="search" data-type="reload" type="button" class="btn btn_search" value="搜索" style="height:34px;margin-left: 30px;">
             </div>
       </form>
  		</div>
<!--   		<div class="check-btn">
        	<button class="btn btn-default" id="addReissueApply">变更</button>
           	<button id="btn_del" class="btn btn-default">删除</button>
        </div> -->
       <!--contentBegin-->
        <div id="content" >
        	<div class="">
       			<table class="table-hide" id="userManage" lay-data="{id: 'idUserManage'}" lay-filter="UserManage"></table>
            </div>
        </div>
</body>

<script type="text/html" id="titleTpl1">
  {{#  if(d.gender===0){ }}
		男
  {{#  } else if(d.gender===1){ }}
 		女
  {{#  } }}
</script>
<script type="text/javascript">
$(function(){
		//加载数据
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#userManage',
				url:'getUserManageList',
				id: 'idUserManage',
				cellMinWidth:120,
				page:true,
				cols:[[
			       {title:'序号',templet: '#indexTpl',width:80}
			      ,{field:'userNum', width:120, title: '用户编号', sort: true,edit:'text'}
			      ,{field:'name', width:120, title: '姓名'}
			      ,{field:'phone', width:120, title: '用户手机号', sort: true}
			      ,{field:'gender', width:120, title: '性别', sort: true,templet: '#titleTpl1'}
				]],
			})
 		    var $ = layui.$, active = {
		        reload: function(){
		            table.reload('idUserManage', {
		                where: {
		                	name: $('#name').val(),
		                	userNum: $('#userNum').val(),
		                	phone: $('#phone').val(),
		                	gender: $('#gender').val(),
		                }
		            });
		        }
		    };
			//监听搜索查询
			$('#search').on('click', function(){
			    var type = $(this).data('type');
			    active[type] ? active[type].call(this) : '';
			});
			
		});
	});
</script>
<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
</html>
