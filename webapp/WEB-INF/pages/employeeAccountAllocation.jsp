<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>权限管理-员工账号分配</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/customModal.css"/>
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="css/table_public.css"/>
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="vendor/layui/layui.js"></script>
<script type="text/javascript" src="vendor/layer/layer.min.js"></script>
<script type="text/javascript" src="js/public.js"></script>
</head>
 <body class="page-body">
	
        <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：权限管理&gt;员工账号分配
        </h5>
	   <div class="search-box">
    	   <form>
                 <div style="margin-left: 0px;">
                  <span>工号：</span>
                   <input type="text" class="form-control" placeholder="查询工号" name="" id="" value="" />
                  </div>
                 <div class="">
                 <span>经销商名称：</span>
                 <input type="text" class="form-control" placeholder="查询经销商名称"  name="" id="" value="" />
                 </div>
             <div style="margin-left: 0px;">
               <span>部门：</span>
                  <select name="" id="">
                  	<option value="">全部</option>
                  	<option value="">超级管理员</option>
                  	<option value="">运营</option>
                  	<option value="">财务</option>
                  	<option value="">客服</option>
                  </select>
            </div>
               <div style="margin-left: 0px;">
               <span>职位：</span>
                  <select name="" id="">
                  	<option value="">全部</option>
                  	<option value="">CEO</option>
                  	<option value="">经理</option>
                  	<option value="">主管</option>
                  	<option value="">员工</option>
                  </select>
            </div>
             <div class="">
             	 <input type="reset" class="btn btn_reset" name="" id="" value="重置" style="margin-left: 30px;"/>
                 <input id="search" data-type="reload" type="button" class="btn btn_search" value="搜索" style="height:34px;margin-left: 30px;">
             </div>
        </form>
    </div>
      	<div class="check-btn">
        	<button id="permissionEdit" class="btn btn-default" onclick="">新增</button>
           	<button id="btn_del" class="btn btn-default">删除</button>
        </div>
       

       <!--contentBegin-->  
        <div id="content" >
        	 <div class="">
       		 <table class="table-hide" id="employeeAccount" lay-data="{id: 'idEmployeeAccount'}" lay-filter="EmployeeAccount"></table>
                 </div>
         </div>
			  <!--表格新增弹窗开始-->
		     
		<div id="modal_AccountAllocation" class="modal_AccountAllocation" style="padding: 10px; display: none;">
			<div class="addAccount Modal_left" style=" ">
                  <p><span class="spanTitle">账号</span><input type="text" placeholder="查询账号" /></p>
                  <p><span class="spanTitle">密码</span><input type="text" placeholder="查询账号" /></p>
                  <p><span class="spanTitle">部门</span><input type="text" placeholder="查询账号" /></p>
                  <p><span class="spanTitle">职位</span><input type="text" placeholder="查询账号" /></p>
                  <p><span class="spanTitle">姓名</span><input type="text" placeholder="查询账号" /></p>
                  <p><span class="spanTitle">工号</span><input type="text" placeholder="查询账号" /></p>
                  <p><span class="spanTitle1">联系方式</span><input type="text" placeholder="查询账号" /></p>
            </div> 
             <div class="Modal_right">
             	  <span>选择客户档案</span><button id="selectDealerBtn" class="btn">选择</button>
             </div>
             	<div class="bottom_btn" style="clear: left;">
					<input type="submit" class="btn btn_ok" value="确定" />
					<input type="button" class=" btn btn_cancel " value="取消" />
					<input type="reset" class=" btn  btn_reset " value="重置" style="width: 80px;" />
				</div>
			
 </div>
                <!--选择客户档案弹窗-->
                	 <div id="selectDealer" class="selectDealerFile" style="display: none;position: absolute;">
                
                	 		<p>
                	 		<div class="dataBox">
                	 		<input type="checkbox" /> <input type="text" name="" id="" value="" />
                	 	    </div>
                	 	    <div class="dataBox">
                	 		<input type="checkbox" /> <input type="text" name="" id="" value="" />
                	 	    </div>
                	 	    <div class="dataBox">
                	 		<input type="checkbox" /> <input type="text" name="" id="" value="" />
                	 	    </div>
                	 		</p>
                <div class="bottom_btn_1" style="clear: left;">
					<input type="submit" class="btn btn_ok" value="确定" />
					<input type="button" class=" btn btn_cancel " value="取消" />
					<input type="reset" class=" btn  btn_reset " value="重置" style="width: 80px;" />
				</div>
                	 </div>
                <!--选择客户档案弹窗结束--> 
               <!--弹窗内容结束-->
</body>
<script type="text/html" id="titleTpl1">
  {{#  if(!(d.validDate)){ }}
  {{#  } else { }}
  {{formatDate(new Date(d.validDate))}}
  {{#  } }}
</script>
<script type="text/javascript">
$(function(){
	//新增按钮.
	$("#applyBtn").on('click',".btn_ok",function(){
		var url="addReissueApply";
		var param=$("#form1").serialize();
		$.post(url,param,function(result){
			if(result.code==0){
				layer.msg("新增成功");
				window.location.reload();
			}else{
				layer.msg(result.msg);
			}
		});
	}); 
		//加载数据
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#employeeAccount',
				url:'',
				id: 'idEmployeeAccount',
				cellMinWidth:120,
				page:true,
				cols:[[
				 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:80}
			      ,{field:'', width:120, title: '账号', sort: true,edit:'text'}
			      ,{field:'', width:120, title: '密码'}
			      ,{field:'', width:120, title: '部门', sort: true,edit:'text'}
			      ,{field:'', width:120, title: '职位', sort: true,edit:'text'}
			      ,{field:'', width:120, title: '工号', sort: true,edit:'text'}
			      ,{field:'', width:120, title: '联系方式', sort: true,edit:'text'}
			      ,{field:'', width:120, title: '姓名', sort: true,edit:'text'}
			      ,{field:'', width:120, title: '注册时间', sort: true,edit:'text',templet: '#titleTpl1'}
			      ,{field:'', width:120, title: '跟踪客户', sort: true,edit:'text'}
			      ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
				]],
			})
 		    var $ = layui.$, active = {
		        reload: function(){
		            table.reload('idEmployeeAccount', {
		                where: {
		                	/* name: $('#name').val(),
		                	papersNum: $('#papersNum').val(),
		                	iccid: $('#iccid').val(),
		                	recipientPhone: $('#recipientPhone').val(),
		                	expressNum: $('#expressNum').val(),
		                	newIccid: $('#newIccid').val() */
		                }
		            });
		        }
		    };
			//监听搜索查询
			/* $('#search').on('click', function(){
			    var type = $(this).data('type');
			    active[type] ? active[type].call(this) : '';
			}); */
			
			//监听批量删除按钮
			/* $('#btn_del').on('click', function(){
			      layer.confirm('确认是否删除', function(index){
			    	  layer.close(index);
				var checkStatus = table.checkStatus('idReissueApply'); //test即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					}
					 var param = {"titles":chk_value}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "delReissueApplyById",
				   		async:false,
				   	 	data: param,
				   	 	success: function(data){
				     	  }
				     });
				    //表格重载
				    tableIns.reload({
				    	  page: {
				    	    curr: 1 //重新从第 1 页开始
				    	  }
				    	});
				}else{
					layer.msg("请选择至少一条数据");
				}
			});
			  }); */
			
			//监听单元格编辑
			  /* table.on('edit(ReissueApply)', function(obj){
			    var value = obj.value, //得到修改后的值
			    data = obj.data, //得到所在行所有键值
			    field = obj.field; //得到字段
			    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
			    $.ajax({
			 	 	type: "POST",
			   		url: "editReissueApply",
			   		async:false,
			   	 	data: "value="+value+"&field="+field+"&id="+data.id,
			   	 	success: function(data){
			     	  },error:function(date){
			     		 layer.msg("失败");
			     	  }
			     });
			  //表格重载
			    tableIns.reload({
			    	  page: {
			    	    curr: 1 //重新从第 1 页开始
			    	  }
			    	});
			  }); */
			  
			//监听工具条
			 /*  table.on('tool(ReissueApply)', function(obj){
			    var data = obj.data;
			    var checkStatus = table.checkStatus('idReissueApply');
			    console.log(checkStatus.data);
			    if(obj.event === 'del'){
			      layer.confirm('确认是否删除', function(index){
							var chk_value=[data.id];
							 var param = {"titles":chk_value}; 
						    $.ajax({
						 	 	type: "POST",
						   		url: "delReissueApplyById",
						   	 	data: param,
						   	 	success: function(data){
						     	  }
						     });
			        obj.del();
			        layer.close(index);
			      });
			    }else if(obj.event === 'selects'){
			    	 var chk_value =[];
				 	 var statu = 2;
				 	 	 chk_value.push(data.id);
				  var param = {"titles":chk_value,"status":statu}; 
				 $.ajax({
				 	url:"setReissueApplyStatusById", 
				 	type:"post", 
				 	data:param, 
				 	async: false,
				 	dataType:"json",
				 	success:function (date){
				 	}
				 });
				    tableIns.reload({
				    	  page: {
				    	    curr: 1 //重新从第 1 页开始
				    	  }
				    	});
					    }else if(obj.event === 'reject'){
					    	 var chk_value =[];
						 	 var statu = 1;
						 	 	 chk_value.push(data.id);
						  var param = {"titles":chk_value,"status":statu}; 
						 $.ajax({
						 	url:"setReissueApplyStatusById", 
						 	type:"post", 
						 	data:param, 
						 	async: false,
						 	dataType:"json",
						 	success:function (date){
						 	}
						 });
						    tableIns.reload({
						    	  page: {
						    	    curr: 1 //重新从第 1 页开始
						    	  }
						    	});
						    }
			  }); */
			
		});
	})
</script>
<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
<script type="text/html" id="barTools">
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="editMessage">编辑信息</a>
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="reset">重置密码</a>
<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
</html>
