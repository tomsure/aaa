<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>订单管理-故障申报</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap/bootstrap-table.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<link rel="stylesheet" type="text/css" href="css/customModal.css"/>
<link rel="stylesheet" type="text/css" href="css/table_public.css"/>
<link href="css/public.css" rel="stylesheet">
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="vendor/layui/layui.js"></script>
<script src="js/public.js" ></script>
<script type="text/javascript" src="js/DateFormate.js"></script>
</head>

<body class="page-body">
	
	  <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<a href="javascript:void(0)" onclick="location.reload()" style="float: right;"><i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;" title="刷新"></i> </a>    	 
    	当前位置：订单管理&gt;故障申报
        </h5>
       <!--contentBegin-->  
        <div id="content" >
         <div class="search-box">
    	   <form>
            <div>
                <span>故障单号：</span>
                <input id="malfunctionNum" type="text" class="form-control" name="" value="" placeholder="查询故障单号">
            </div>
           
            <div>
                <span>ICCID：</span>
                <input id="iccid" type="text" class="form-control" name="" value="" placeholder="查询ICCID">
            </div>
            
            <div>
                <span>IMEI：</span>
                <input id="imei" type="text" class="form-control" name="" value="" placeholder="查询IMEI">
            </div>
            
          
            
           <div>
                <span>保修来源：</span>
                <select id="source" class="form-control" id="" name="" style="width:120px">             	
                	<option>全部</option>
                	<option>WEB</option>
                	<option>公众号</option>  
                	<option>后台</option> 
                </select>
            </div>
           
            <div>
               <span>类型：</span>
                <select id="type" class="form-control" id="" name="">       
                	<option>全部</option>           	
                	<option>卡片</option>
                	<option>设备</option> 
                	<option>一体机</option>
                </select>
            </div>
                <div id="">
                	<input type="reset" class="btn btn_reset" name="" id="" value="重置" />
                	<input type="button" class="btn btn_search" name="" id="search" data-type="reload" value="搜索" />
                </div>
              </form>
    </div>
    <div class="search-box check-btn">
        <div class="check-btn">
        	<button id="artificial" class="btn btn-default" onclick="">手动申报</button>
        	<button id="btn_del" class="btn btn-default" onclick="">删除</button>
        </div>
    </div>
    <div class="">
       		 <table class="table-hide" id="failureDeclaration" lay-data="{id: 'idFailureDeclaration'}" lay-filter="FailureDeclaration"></table>
    </div>
</div>


   <!--新增弹窗开始-->
   	   <div class="addDealerModal" id="addArtificial">
   	   	  <form class="" action="" id="form1">
   	   	  <p style="margin-left: 0;"><span class="" >故障单号:</span><input type="text" name="malfunctionNum"/></p>
   	      <p>
   	   	  	<span>类型</span>
			<select name="type" id="" style="margin-left:14px ;" >
				<option value="1">设备</option>
				<option value="2">卡片</option>
				<option value="3">一体机</option>
			</select>
   	   	  </p>
   	   	  <p><span class="addtitle1">IMEI</span><input type="text" placeholder="输入IMEI" name="imei"/></p>
   	   	  <p><span class=" addtitle1">ICCID</span><input type="text" placeholder="输入iccid" name="iccid"/></p>
   	   	  <p><span class="addtitle1" style="margin-right: 30px;">问题描述</span><input type="text" placeholder="输入问题描述" name="problemDescription"/></p>
   	       <div id="applyBtn" class="modal_btn">
   	   	    	<button class="btn btn_ok">确定</button>
   	   	    	<button class="btn btn_cancel ">取消</button>
   	   	    	<button class="btn btn_reset">重置</button>
   	   	    </div>	   
   	   	  </form>
   	   </div>
   	   
   <!--新增弹窗结束--><!----><!---->
</body>
<script type="text/html" id="titleTpl4">
  {{#  if(!(d.declarationTime)){ }}
  {{#  } else { }}
  {{formatDate(new Date(d.declarationTime))}}
  {{#  } }}
</script>
<script type="text/html" id="titleTpl3">
  {{#  if(d.status===1){ }}
		待解决
  {{#  } else { }}
       	已解决
  {{#  } }}
</script>
<script type="text/html" id="titleTpl2">
  {{#  if(d.source===1){ }}
		WEB
  {{#  } else if(d.source===2){ }}
       	公众号
  {{#  } else if(d.source===3){ }}
       	后台
  {{#  } }}
</script>
<script type="text/html" id="titleTpl1">
  {{#  if(d.type === 1){ }}
   				 设备+套餐
  {{#  } else if(d.type === 2){ }}
            	设备
  {{#  } else if(d.type === 3){ }}
				空卡
  {{#  } else if(d.type === 4){ }}
    			合约机
  {{#  } else if(d.type === 5){ }}
    			套餐(含卡)
  {{#  } }}
</script>
<script type="text/javascript">
	$(function(){
		//提交按钮.
		$("#applyBtn").on('click',".btn_ok",function(){
			var url="addFaultReport";
			var param=$("#form1").serialize();
			$.post(url,param,function(result){
				//console.log(result.date);
				if(result.code==0){
					//成功则调用上传图片按钮
					/* uploads(); */
					layer.msg("新增经销商成功");
					 //表格重载
				    tableIns.reload({
				    	  page: {
				    	    curr: 1 //重新从第 1 页开始
				    	  }
				    	});					
				}else{
					layer.msg(result.msg);
				}
			});
		}); 
		
		//加载数据
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#failureDeclaration',
				url:'showFaultReport',
				id: 'idFailureDeclaration',
				cellMinWidth:120,
				page:true,
				cols:[[
				 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:80}
			      ,{field:'malfunctionNum', width:120, title: '故障单号',sort:true}
			      ,{field:'source', width:120, title: '保修来源', sort: true,templet: '#titleTpl2'}
			      ,{field:'type', width:120, title: '类型' , sort:true,templet: '#titleTpl1'}
			      ,{field:'picture', width:120, title:'图片',  sort:true} 
			       ,{field:'imei', width:120, title: 'IMEI',sort:true}
			      ,{field:'iccid', width:120, title: 'ICCID' ,sort:true}
			      ,{field:'problemDescription', width:120, title: '问题描述' ,sort:true,edit:'text'}
			      ,{field:'status', width:120, title: '状态',sort:true,templet: '#titleTpl3'}			
			      ,{field:'declarationTime', width:120, title: '申报时间',sort:true,templet: '#titleTpl4'}
			      ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
				]],
			})
 		    var $ = layui.$, active = {
		        reload: function(){
		            table.reload('idFailureDeclaration', {
		                where: {
		                	malfunctionNum: $('#malfunctionNum').val(),
		                	imei: $('#imei').val(),
		                	iccid: $('#iccid').val(),
		                	source: $('#source').get(0).selectedIndex,
		                	type: $('#type').get(0).selectedIndex
		                }
		            });
		        }
		    };
			//监听搜索查询
			$('#search').on('click', function(){
			    var type = $(this).data('type');
			    active[type] ? active[type].call(this) : '';
			});
			
			//监听批量删除按钮
			$('#btn_del').on('click', function(){
			      layer.confirm('确认是否删除', function(index){
			    	  layer.close(index);
				var checkStatus = table.checkStatus('idFailureDeclaration'); //test即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					}
					 var param = {"titles":chk_value}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "deleteFaultReportBySelect",
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
				} else{
					layer.msg("请选择至少一条数据");
				}
			});
			  });
			//监听批量上下架按钮
			$("button[name='updatestat']").on('click', function(){
				var checkStatus = table.checkStatus('idProduct'); //idProduct即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					 var statu = 0;
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					}		
					 var param = {"titles":chk_value,"status":$(this).val()}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "",
				   	 	data: param,
				   	    async:false,
				   	 	success: function(data){
				   	 		
				     	  }
				     });
				} else{
					layer.msg("请选择至少一条数据");
				}
				    tableIns.reload({
				    	 page: {
				    	    curr: 1 //重新从第 1 页开始
				    	  }
				    	});
				//console.log(checkStatus.data) //获取选中行的数据
				//console.log(checkStatus.data.length) //获取选中行数量，可作为是否有选中行的条件
			});
			
			//监听单元格编辑
			  table.on('edit(FailureDeclaration)', function(obj){
			    var value = obj.value, //得到修改后的值
			    data = obj.data, //得到所在行所有键值
			    field = obj.field; //得到字段
			    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
			    $.ajax({
			 	 	type: "POST",
			   		url: "editFaultReport",
			   	 	data: "value="+value+"&field="+field+"&id="+data.id,
			   	 	success: function(data){
			   	 	 
			     	  },error:function(date){
			     		 layer.msg("失败");
			     	  }
			     });
			  });
			  
			//监听工具条
			  table.on('tool(FailureDeclaration)', function(obj){
			    var data = obj.data;
			    var checkStatus = table.checkStatus('idFailureDeclaration');
			    console.log(checkStatus.data);
			    if(obj.event === 'del'){
			      layer.confirm('确认是否删除', function(index){
							var chk_value=[data.id];
							 var param = {"titles":chk_value}; 
						    $.ajax({
						 	 	type: "POST",
						   		url: "deleteFaultReportBySelect",
						   	 	data: param,
						   	 	success: function(data){
						     	  }
						     });
			        obj.del();
			        layer.close(index);
			      });
			    } else if(obj.event === 'updatestat'){
			 	 var chk_value =[];
			 	 var statu = 0;
			 	 	 chk_value.push(data.id);
			 	     statu=data.status==1?2:1;
			  var param = {"titles":chk_value,"status":statu}; 
			 $.ajax({
			 	url:"updateFailure", 
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
			  });
			
		});
	})
</script>

<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
<script type="text/html" id="barTools">
  {{#  if(d.status===1){ }}
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat">确认</a>
  {{#  } else { }}
  {{#  } }}
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
</html>
