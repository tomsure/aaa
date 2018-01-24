<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>返佣管理-返佣规则更改</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/customModal.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/bootstrap/bootstrap-table.min.js"></script>
<script src="vendor/layui/layui.js"> </script>
<script src="js/public.js"></script>
</head>

<body class="page-body">
	
	
        <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：返佣管理&gt;返佣规则更改
        </h5>
      
       <!--contentBegin-->  
        <div id="content" >
         <div class="search-box">
    	   <form>
         
            <div>
                <span>经销商名称：</span>
                <input type="text" class="form-control" id="dataInput" name="" value="" placeholder="查询经销商名称">
            </div>
            <div>
                <span>采购单号：</span>
                <input type="text" class="form-control" id="dataInput" name="" value="" placeholder="查询采购单号">
            </div>
              <div id="">
                	<input type="reset" class="btn btn_reset" name="" id="" value="重置" />
                	<input id="search" data-type="reload" type="button" class="btn btn_search" name="" value="搜索" />
                </div>
                
          </form>
    </div>
    
    <div class="search-box check-btn">
        <div class="check-btn">
        
        	<button class="btn btn-default" id="rebateAdd">新增</button>
            <button class="btn btn-default" id="btn_del">删除</button>
            
        </div>
	 	   	  
    </div>
    

    <div class="ibox-content">
       		
		<table class="table-hide" id="rebateRulesSet" class="layui-hide" lay-data="{id: 'idRebateRulesSet'}" lay-filter="RebateRulesSet"></table>
     
    </div>
     <!--paginationBegin-->
    <!--新增弹窗开始-->
 	<form class="layui-form" action="" id="form1">
   	   <div id="rebateModalBox" class="modal_content" class="layui-hide">
   	   	 <p>
   	   	 	<span class="boxTitle">经销商名称</span>
   	   	 	<input type="text" name="name"  lay-verify="required"/>
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle">采购单选择</span>
   	   	 	<input type="text" name="rebateNum"  lay-verify="required"/>
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle" style="margin-right: 25px;">变更规则:</span>
   	   	 	<select name="rebateType" id=""  style="text-align:right;">
   	   	 		<option value="0">==请选择==</option>
   	   	 		<option value="1">正在从返佣规则加载中..</option>
   	   	 	</select>
   	   	 </p>
   	   	    <div class="modal_btn" id="applyBtn">
   	   	   	  <button lay-submit class="btn btn_ok"  lay-filter="formDemo">提交</button>
   	   	   	  <button class="btn btn_cancel">取消</button>
   	   	   	  <button type="reset" class="layui-btn layui-btn-primary">重置</button>
   	   	   </div>
   	   </div>
	</form>
	 <!--新增弹窗结束-->
</div>
 <!--contentEnd-->
 
 <!-- 公共字段显示格式数据 -->
<%@ include file="../jsCommon/filedDisplay.jsp" %>

</body>
<script type="text/javascript">
layui.use('form', function(){
	  var form = layui.form;
	  form.on('submit(formDemo)',function(){
			//debugger
			/* 此处需要校验 
			var com= $("form1");
			if(!com){
				return;
			} */
			var url="";//接口
			var param=$("#form1").serialize();
			console.log(param);
			console.log($("#form1").data());
			$.post(url,param,function(result){
				if(result.code==0){
					layer.msg("新增成功");
				}else{
					layer.msg(result.msg);
				}
			});
		}); 
})
$(function(){
	layui.use('table', function() {
		var table = layui.table;
		//第一个实例
var tableIns = table.render({
			elem : '#rebateRulesSet',
			id : 'idRebateRulesSet',
			// height: 315,
			url : 'getRebateRulesSetList', //数据接口
			page : true, //开启分页
			cellMinWidth : 60,
			cols : [ [ //表头
			{
				field : 'id',
				type : 'checkbox',
				title : 'ID',
				fixed : 'left'
			}, {
				title : '序号',
				templet : '#indexTpl',
				width : 60
			}, {
				field : 'dealerName',	
				title : '经销商名称'
			}, {
				field : 'purchaseNum',
				title : '采购编号',sort : true
			}, {
				field : 'oldRebateRule',
				title : '原返佣规则',sort : true
			}, {
				field : 'oldRebateType',
				title : '原返佣类型'
			}, {
				field : 'oldRebateResult',
				title : '原返佣值',
				sort : true
			}, {
				field : 'newRebateRule',
				title : '变更返佣规则',
				sort : true
			}, {
				field : 'newRebateType',
				title : '变更返佣类型',
				sort : true
			}, {
				field : 'newRebateResult',
				title : '变更返佣值',
				sort : true
			}, {
				field : 'changeTime',
				title : '更改时间',
				sort : true
			}, {
				fixed : 'right',
				title : '操作',
				align : 'center',
				toolbar : '#barTools'
			} ] ]
		});

		var $ = layui.$, active = {
			reload : function() {
				var dealerName = $('#dealerName');
				var purchaseNum = $('#purchaseNum');
				//执行重载
				table.reload('idRebateRulesSet', {
					page : {
						curr : 1
					//重新从第 1 页开始
					},
					where : {
						dealerName : dealerName.val(),
						purchaseNum : purchaseNum.val(),
					}
				});
			}
		};

		$('#search').on('click', function() {
			var type = $(this).data('type');
			active[type] ? active[type].call(this) : '';
		});

		//监听批量删除按钮
		$('#btn_del').on('click', function(){
		      layer.confirm('确认是否删除', function(index){
		    	  layer.close(index);
			var checkStatus = table.checkStatus('idRebateRulesSet'); //test即为基础参数id对应的值
			if(checkStatus.data.length!=0){
				var chk_value=[];
				for (var i = 0; i < checkStatus.data.length; i++) {
					chk_value.push(checkStatus.data[i].id);
				}
				 var param = {"titles":chk_value}; 
			    $.ajax({
			 	 	type: "POST",
			   		url: "delRebateRulesSetById",
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
		  });
		
		//监听单元格编辑
		table.on('edit(RebateRulesSet)', function(obj) {
			var value = obj.value, //得到修改后的值
			data = obj.data, //得到所在行所有键值
			field = obj.field; //得到字段
			layer.msg('[ID: ' + data.id + '] ' + field + ' 字段更改为：' + value);
			$.ajax({
				type : "POST",
				url : "editRebateRulesSet",
				data : "value=" + value + "&field=" + field + "&id=" + data.id,
				success : function(data) {

				}
			});
		});

		//监听工具条
		table.on('tool(RebateRulesSet)', function(obj) {
			var data = obj.data;
			if (obj.event === 'detail') {
				layer.msg('ID：' + data.id + ' 的查看操作');
			} else if (obj.event === 'del') {
				layer.confirm('确认是否删除', function(index){
					var chk_value=[data.id];
					 var param = {"titles":chk_value}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "delRebateRulesSetById",
				   	 	data: param,
				   	 	success: function(data){
				     	  }
				     });
	        obj.del();
	        layer.close(index);
	      });
			} 
		});
	});
});
</script>
<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
<script type="text/html" id="barTools">
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
</html>
