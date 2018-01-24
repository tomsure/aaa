<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>返佣管理-返佣规则</title>
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
<script type="text/javascript" src="js/DateFormate.js"></script>
</head>

<body class="page-body">
	
	
        <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：返佣管理&gt;返佣规则
        </h5>
      
       <!--contentBegin-->  
        <div id="content" >
         <div class="search-box">
    	   <form>
         
            <div>
                <span>规则名称：</span>
                <input type="text" class="form-control" id="dataInput" name="" value="" placeholder="查询规则名称">
            </div>
              <div id="">
                	<input type="reset" class="btn btn_reset" name="" id="" value="重置" />
                	<input type="button" class="btn btn_search" name="" id="" value="搜索" />
                </div>
                
          </form>
    </div>
    
    <div class="search-box check-btn">
        <div class="check-btn">
        
        	<button class="btn btn-default" id="rebateAdd">新增</button>
            <button class="btn btn-default" onclick="">删除</button>
            
        </div>
	 	   	  
    </div>
    

    <div class="ibox-content">
       		
		<table class="table-hide" id="rebateRules" class="layui-hide" lay-data="{id: 'idRebateRules'}"
				lay-filter="Rebate">
		
		</table>
		  <script type="text/html" id="indexTpl">
		 	  {{d.LAY_TABLE_INDEX+1}} 
		 </script>
		 <script type="text/html" id="templet2">
                            <div id="">
                            	 <a >修改</a> / <a >删除</a>
                            </div>
                         </script>
     
    </div>
     <!--paginationBegin-->
    <!--新增弹窗开始-->
 	<form class="layui-form" action="" id="form1">
   	   <div id="rebateModalBox" class="modal_content" class="layui-hide">
   	   	 <p>
   	   	 	<span class="boxTitle">规则名称</span>
   	   	 	<input type="text" name="name"  lay-verify="required"/>
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle" style="margin-right: 25px;">返佣类型</span>
   	   	 	<select name="rebateType" id=""  style="text-align:right;">
   	   	 		<option value="0">折扣</option>
   	   	 		<option value="1">定额</option>
   	   	 		<option value="2">定额发票</option>
   	   	 	</select>
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle">返佣详情</span>
   	   	 	<input type="text" name="rebateNum"  lay-verify="required"/>
   	   	 </p>
<!--    	   	 <p>
   	   	 	<span class="boxTitle" style="vertical-align: top;">规则描述</span>
   	   	 	<textarea name="rebateDescribe" rows="5" cols="30" lay-verify="required"></textarea>
   	   	 </p> -->
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
<script type="text/html" id="titleTp">
  {{#  if(!(d.createDate)){ }}
  {{#  } else { }}
  {{formatDate(new Date(d.createDate))}}
  {{#  } }}
</script>
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
			var url="addRebateRule";
			var param=$("#form1").serialize();
			console.log(param);
			console.log($("#form1").data());
			$.post(url,param,function(result){
				if(result.code==0){
					layer.msg("创建套餐成功");
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
		table.render({
			elem : '#rebateRules',
			id : 'idRebateRules',
			// height: 315,
			url : 'getRebateRuleList', //数据接口
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
				field : 'name',
				title : '规则名称'
			}, {
				field : 'rebateType',
				title : '返佣类型',sort : true,templet: '#titleTpl2'
			}, {
				field : 'rebateNum',
				title : '返佣详情',sort : true,templet: '#titleTpl3'
			},
			/* {
				field : 'rebateDescribe',
				title : '规则描述'
			}, {
				field : 'createUser',
				title : '创建人',
				sort : true
			}, {
				field : 'createDate',
				title : '创建时间',
				sort : true,templet: '#titleTp'
			}, {
				field : 'modifyUser',
				title : '修改人',
				sort : true
			}, {
				field : 'modifyDate',
				title : '修改时间',
				sort : true
			},  */
			{
				fixed : 'right',
				title : '操作',
				align : 'center',
				toolbar : '#barTools'
			} ] ]
		});

		var $ = layui.$, active = {
			reload : function() {
				var nameReload = $('#nameReload');
				var phoneReload = $('#phoneReload');
				var departmentValueReload = $('#departmentValueReload');
				var jobReload = $('#jobReload');
				var registerTimeReload = $('#registerTimeReload');
				var loginAccountReload = $('#loginAccountReload');
				var jobNumberReload = $('#jobNumberReload');
				//执行重载
				table.reload('idMeal', {
					page : {
						curr : 1
					//重新从第 1 页开始
					},
					where : {
						name : nameReload.val(),
						phone : phoneReload.val(),
						departmentValue : departmentValueReload.val(),
						job : jobReload.val(),
/* 						registerTime : registerTimeReload.val(),
						loginAccount : loginAccountReload.val(), */
						jobNumber : jobNumberReload.val()
					}
				});
			}
		};

		$('#xddSearch').on('click', function() {
			var type = $(this).data('type');
			active[type] ? active[type].call(this) : '';
		});

		//监听单元格编辑
		table.on('edit(Rebate)', function(obj) {
			var value = obj.value, //得到修改后的值
			data = obj.data, //得到所在行所有键值
			field = obj.field; //得到字段
			debugger;
			layer.msg('[ID: ' + data.id + '] ' + field + ' 字段更改为：' + value);
			$.ajax({
				type : "POST",
				url : "updateMeal",
				data : "value=" + value + "&field=" + field + "&id=" + data.id,
				success : function(data) {

				}
			});
		});

		//监听工具条
		table.on('tool(Rebate)', function(obj) {
			var data = obj.data;
			if (obj.event === 'detail') {
				layer.msg('ID：' + data.id + ' 的查看操作');
			} else if (obj.event === 'del') {
				layer.confirm('真的删除行么', function(index) {
					$.ajax({
						type : "POST",
						url : "delRebateRuleById",
						data : "id=" + data.id,
						success : function(data) {

						}
					});
					obj.del();
					layer.close(index);
				});
			} else if (obj.event === 'edit') {
				layer.alert('编辑行：<br>' + JSON.stringify(data))
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
