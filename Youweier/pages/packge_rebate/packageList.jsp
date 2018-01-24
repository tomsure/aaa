<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>套餐/群组设置</title>
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
<script src="vendor/layui/layui.js" charset="utf-8"></script>
<script src="js/public.js"></script>
</head>
 
<body class="page-body">
	
	   <div class="search-box">
    	   <form>
            <div>
                <span>套餐名称：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询套餐名称（可模糊）">
            </div>
           
            
           <!--<div style="margin-left: 0px;">
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
            </div>-->
            <div style="margin-left: 0px;">
               <span>有效期：</span>
                <select class="form-control" id="" name="">
                	<option>全部</option>
                	<option>月</option>
                	<option>年</option>
               	    <option>季度</option>
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
            <!--<div class="">
            	<span id="">
            		能否申请停复机：
            	</span>
            	<select name="" id="" class="form-control">
            		<option value="">全</option>
            		<option value="">是</option>
            		<option value="">否</option>
            	</select>
            </div>-->
             
<!--             <div class="">
              <span>创建时间：</span><input type="date" class="form-control" />-<input type="date" class="form-control" />
             </div>
             <div class="">
             	 <input type="reset" class="btn btn_reset" name="" id="" value="重置" style="margin-left: 30px;"/>
             <input id="search" type="button" class="btn btn_search" value="搜索" onclick="" style="height:34px;margin-left: 30px;">
            
             </div> -->
        </form>
          
    </div>
    
       
        <div class="check-btn">
        	<!--<button class="btn btn-default" onclick="">全选</button>-->
        	<button class="btn btn-default" id="packageAdd">新增</button>
        	<button class="btn btn-default" onclick="">删除</button>
            
        </div>
         
     <h5 class="position-title">当前位置：首页>卡片管理>套餐/群组设置</h5>

	<table id="dataGrid" class="layui-hide" lay-data="{id: 'idMeal'}"
		lay-filter="setmeal"></table>
 <!--新增弹窗开始-->
 	<form class="layui-form" action="" id="form1">
   	   <div id="packageModalBox" class="modal_content" class="layui-hide">
   	   	 <p>
   	   	 	<span class="boxTitle">套餐名字</span>
   	   	 	<input type="text" name="name"  lay-verify="required"/>
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle">套餐总量</span>
   	   	 	<input type="text" name="total"  lay-verify="required"/>GB
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle" style="margin-right: 37px;">归属地</span>
   	   	 	<input type="text" name="location" lay-verify="required"/>
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle" style="margin-right: 25px;">运营商</span>
   	   	 	<select name="operator" id=""  lay-verify="required" style="text-align:right;">
   	   	 		<option value="">请选择</option>
   	   	 		<option value="0">移动</option>
   	   	 		<option value="1">电信</option>
   	   	 		<option value="2">联通</option>
   	   	 	</select>
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle">有效期</span>
   	   	 	<select name="validity" id="" lay-verify="required" style="text-align:right;">
   	   	 		<option value="">请选择</option>
   	   	 		<option value="0">月</option>
   	   	 		<option value="1">季</option>
   	   	 		<option value="2">年</option>
   	   	 		
   	   	 	</select>
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle">能否变更套餐</span>
   	   	 	<select name="isChange" id="" lay-verify="required" style="text-align:right;">
   	   	 		<option value="">请选择</option>
   	   	 		<option value="1">是</option>
   	   	 		<option value="0">否</option>
   	   	 	</select>
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle">变更次数</span>
   	   	 	<input type="text" name="changeCount"/>次
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle">金额</span>
   	   	 	<input type="text" name="price"/>元
   	   	 </p>
   	   	 <p>
   	   	 	<span class="boxTitle" style="vertical-align: top;">套餐描述</span>
   	   	 	<textarea name="comboDescribe" rows="5" cols="30" lay-verify="required"></textarea>
   	   	 </p>
   	   	    <div class="modal_btn" id="applyBtn">
   	   	   	  <button lay-submit class="btn btn_ok"  lay-filter="formDemo">提交</button>
   	   	   	  <button class="btn btn_cancel">取消</button>
   	   	   	  <button type="reset" class="layui-btn layui-btn-primary">重置</button>
   	   	   </div>
   	   </div>
	</form>
	 <!--新增弹窗结束-->
</body>
<!-- 能否变更套餐 -->
<script type="text/html" id="titleTpl3">
  {{#  if( true ){ }}
   			{{d.total}}G
  {{#  } }}
</script>
<!-- 能否变更套餐 -->
<script type="text/html" id="titleTpl2">
  {{#  if( true ){ }}
   			{{d.price}}元
  {{#  } }}
</script>
<!-- 能否变更套餐 -->
<script type="text/html" id="titleTpl4">
  {{#  if( d.isChange == 0){ }}
   			否
  {{#  }else if( d.isChange == 1){ }}
   			是
  {{#  } }}
</script>
<!-- 能否变更套餐 -->
<script type="text/html" id="titleTpl5">
  {{#  if( d.validity == 0){ }}
   			1个月
  {{#  }else if( d.validity == 1){ }}
   			1季度
  {{#  }else if( d.validity == 2){ }}
   			1年
  {{#  } }}
</script>
<!-- 运营商 -->
<script type="text/html" id="titleTpl6">
  {{#  if( d.operator == 0){ }}
   				移动
  {{#  }else if( d.operator == 1){ }}
   				电信
  {{#  }else if( d.operator == 2){ }}
   				联通
  {{#  } }}
</script>
<script type="text/javascript">
layui.use('form', function(){
	  var form = layui.form;
	  form.on('submit(formDemo)',function(){
			debugger
			/* 此处需要校验 
			var com= $("form1");
			if(!com){
				return;
			} */
			var url="addCombo";
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
			elem : '#dataGrid',
			id : 'idMeal',
			// height: 315,
			url : 'getComboList', //数据接口
			page : true, //开启分页
			cellMinWidth : 60,
			cols : [ [ //表头
			{
				field : 'id',
				type : 'checkbox',
				title : 'ID',
				sort : true,
				fixed : 'left'
			}, {
				title : '序号',
				templet : '#indexTpl',
				width : 60
			}, {
				field : 'operator',
				title : '运营商',templet: '#titleTpl6'
			}, {
				field : 'location',
				title : '归属地'
			}, {
				field : 'name',
				title : '套餐名称'
			}, {
				field : 'total',
				title : '套餐总量',
				sort : true,templet: '#titleTpl3'
			}, {
				field : 'validity',
				title : '有效期',templet: '#titleTpl5'
			}, {
				field : 'price',
				title : '金额',templet: '#titleTpl2'
			}, {
				field : 'comboDescribe',
				title : '套餐描述'
			}, {
				field : 'isChange',
				title : '能否变更套餐',templet: '#titleTpl4'
			}, {
				field : 'canChanges',
				title : '能变更的套餐'
			}, {
				field : 'createDate',
				title : '创建时间',
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
		table.on('edit(setmeal)', function(obj) {
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
		table.on('tool(setmeal)', function(obj) {
			var data = obj.data;
			if (obj.event === 'detail') {
				layer.msg('ID：' + data.id + ' 的查看操作');
			} else if (obj.event === 'del') {
				layer.confirm('真的删除行么', function(index) {
					$.ajax({
						type : "POST",
						url : "delComboById",
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
	/* function btn() {
		layui.use('layer', function() {
			var layer = layui.layer;
			layer.open({
				title : '增加',
				type : 1,
				area : [ '800px', '700px' ],
				content : $('#modal_AccountAllocation')
			//这里content是一个普通的String
			});
		});
	} */
</script>
<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
<script type="text/html" id="barTools">
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
</html>
