<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>商品管理-商品上架</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap/bootstrap-table.min.css" rel="stylesheet">
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/customModal.css"/>
<link rel="stylesheet" type="text/css" href="css/table_public.css"/>
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/layer/layer.min.js" ></script>
<script src="js/public.js" ></script>
<script type="text/javascript" src="vendor/layui/layui.js"></script>
<script type="text/javascript" src="vendor/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/DateFormate.js"></script>
</head>

<body class="page-body">
	
	
	
        <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<a href="javascript:void(0)" onclick="location.reload()" style="float: right;"><i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;" title="刷新"></i> </a>    	 
    	当前位置：商品管理&gt;商品上架
        </h5>
         <!--contentBegin-->  
			 <div id="content" >
			    <div class="search-box">
			            <div>
			                <span>商品名称：</span>
			                <input type="text" name="CommodityName"  placeholder="请输入商品名称" class="form-control"  value="" id="productName">
			            </div>
			            
			           <div style="margin-left: 40px;">
			                <span>商品类型：</span>
			                <select class="form-control" id="searchPropType" name="CommodityType" style="width:120px">
			                	<option>全部</option>
			                	<option>设备+套餐</option>
			                	<option>设备</option>
			                	<option>空卡</option>
			                	<option>合约机</option>
			                	<option>套餐(含卡)</option>
			                	
			                </select>
			            </div>
			            <div style="margin-left: 40px;">
			               <span>商品状态：</span>
			                <select class="form-control" id="searchAuditType" name="auditType">
			                	<option>全部</option>
			                	<option>上架</option>
			                	<option>下架</option>
			                	<option>库存不足</option>
			                	
			                </select>
			            </div>
			            	 	<div id="">
             	 <input type="reset" class="btn btn_reset" name="" id="" value="重置" style="margin-left: 30px;"/>
             <input id="search" type="button" class="btn btn_search" data-type="reload" value="搜索"/>
            
             </div>
			    </div>
			    <div class="search-box check-btn">
			        <div class="check-btn">
			        
			        	<button id="addTable" class="btn btn-default" >新增</button>
			        	<button name='updatestat' class="btn btn-default" value='1'>上架</button>
			        	<button name='updatestat' class="btn btn-default" value='2'>下架</button>
			        	<button id="btn_del" class="btn btn-default" data-type="dele">删除</button>
			         
			        </div>
			    </div>
			       
			    </div>
			    
			          <div class="">
			          	  <table id="demo"   class="layui-hide" lay-data="{id: 'idProduct'}" lay-filter="Product">

			            </table>
                         <script type="text/html" id="viewTpl1">
                             <div> <a class="viewPic1" onclick="viewPic1()">查看</a></div>
                         </script>
                         <script type="text/html" id="viewTpl2">
                             <div><a  class="viewPic2" onclick="viewPic2()">查看</a></div> 
                         </script>
			          </div>
			  
 <!--新增弹窗-->
 <form class="layui-form layui-form-pane" id="uploadExcelForm" action="" method="post" enctype="multipart/form-data" >
 	 <div id="modalContent" class="modalContent">
	<p>
		<span>商品名称：</span> <input type="text" />
	</p>
<!-- 	<p >
		<span style="margin-right: 42px;">金额</span>
		<input type="text" name="" id="" value="" />
	</p> -->
<!-- 	<p>
		<span>展示图片内容</span>
		<input type="file" />
	</p> -->
	<p>
		<span>商品类型</span>
		<select name="" id="" style="margin-left:14px ;" >
			<option value="">设备</option>
			<option value="">卡片</option>
			<option value="">一体机</option>
		</select>
	</p>
<!-- 	<p>
                <input id="excelFile" type="file" name="excelFile" lay-type="file"  " class="layui-upload-file" >
                <button class="layui-btn" lay-submit lay-filter="uploadExcel">提交</button>
                lay-submit定义一个触发表单提交的button，不用填写值  ;
                lay-submit 事件过滤器。你可能会在很多地方看到他，他一般是用于监听特定的自定义事件。你可以把它看作是一个ID选择器
	</p> -->
<!--  	<p>
		<span>展示图片</span>
		<input type="file" name="excelFile1"> 
	</p> 
	<p>
		<span>详情图片</span>
		<input type="file" name="excelFile2"/>
	</p> -->
			<p>
				<span class="modal_title">上传证明</span>
				<button type="button" class="layui-btn layui-btn-sm" id="test1">
				  <i class="layui-icon">&#xe67c;</i>上传图片
				</button>
				<input type="hidden" name="payImage" id="payImageDisgestId" lay-verify="required"/>
			</p>
	<p>
		<div class="modal_link_left">
			<span>链接名称</span>
			<input type="text" name="" id="" value="" />
		</div>
		<div class="modal_link_right">
		<span>链接类型</span>
		<select name="" id="">
				<option value="">内页</option>
				<option value="">链接</option>
		</select>
		</div>
	</p>
	<p>
		<div class="modal_link_left">
			<span>链接名称</span>
			<input type="text" name="" id="" value="" />
		</div>
		<div class="modal_link_right">
		<span>链接类型</span>
		<select name="" id="">
				<option value="">内页</option>
				<option value="">链接</option>
			</select>
		</div>
	</p>
	<p>
		<div class="modal_link_left">
			<span>链接名称</span>
			<input type="text" name="" id="" value="" />
		</div>
		<div class="modal_link_right">
		<span>链接类型</span>
		<select name="" id="">
				<option value="">内页</option>
				<option value="">链接</option>
			</select>
		</div>
	</p>
<!-- 	<p>
		<span style="margin-right: 16px;">促销活动</span>
		<select name="" id="">
			<option value="">无</option>
			<option value="">活动规则里的名称</option>
			<option value=""></option>
		</select>
	</p> -->
	    <div class=" modal_btn">
<!-- 	    <button type="button" class="layui-btn" id="test1">
  		<i class="layui-icon">&#xe67c;</i>上传图片
		</button> -->
	  	  <button class="btn btn_ok" id="test1">确定</button>
	  	  <button class='btn btn_cancel'>取消</button>
	  	  <button class='btn btn_reset'>重置</button>
	  </div>
</div>
 	</form> 
 <!--新增弹窗结束-->
     	
     	<!--展示图片弹窗开始-->
     		<div id="viewModal1" style="display: none;">
     			<img src="img/a1.jpg" alt="" />
     		</div>
     	<!--展示图片弹窗结束-->
     	<!--详情图片弹窗-->
     		<div id="viewModal2" style="display: none;">
     			<img src="img/a1.jpg" alt="" />
     		</div>
     	<!--详情图片弹窗结束-->
</body>
<script>
layui.use('upload', function(){
  var upload = layui.upload;
  //执行实例
  var uploadInst = upload.render({
    elem: '#test1' //绑定元素
    ,url: 'attach/doUpload' //上传接口
     ,data: {"title":"shopListPic"}
    ,done: function(res){
      //上传完毕回调
      if(res.code==0){
    	  console.log(res.data)
    	  $("#payImageDisgestId").val(res.data);
     	 layer.msg("上传成功");
      }else{
    	 layer.msg("上传失败"+res.msg);
      }
    }
    ,error: function(){
      //请求异常回调
    	layer.msg("上传失败!服务器繁忙,请稍后再试");
    }
  }); 
});
</script>
<script type="text/html" id="titleTpl">
  {{#  if(d.status === 1){ }}
   				 上架
  {{#  } else if(d.status === 2){ }}
            	下架
  {{#  } }}
</script>
<script type="text/html" id="titleTpl2">
  {{#  if(d.productType === 1){ }}
   				 设备+套餐
  {{#  } else if(d.productType === 2){ }}
            	设备
  {{#  } else if(d.productType === 3){ }}
				空卡
  {{#  } else if(d.productType === 4){ }}
    			合约机
  {{#  } else if(d.productType === 5){ }}
    			套餐(含卡)
  {{#  } }}
</script>
<script type="text/html" id="titleTpl3">
  {{#  if(d.operator === 1){ }}
   				 移动
  {{#  } else if(d.operator === 2){ }}
            	联通
  {{#  } else if(d.operator === 3){ }}
				电信
  {{#  } }}
</script>
<script type="text/javascript">
	$(function(){
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#demo',
				url:'showProducts',
				id: 'idProduct',
				cellMinWidth:120,
				page:true,
				cols:[[
				 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:80},
				 {field:'productName','title':'商品名称',width:120,sort:true},
				/*  {field:'price','title':'金额',width:80,sort:true,edit:'text'}, */
				 {field:'packages','title':'套餐',width:80,sort:true},
				 {field:'productType','title':'商品类型',width:120,sort:true,templet: '#titleTpl2'},
				 /* 	 {field:'operator','title':'运营商',width:120,sort:true,templet: '#titleTpl3'},
				 {field:'location','title':'归属地',width:120,sort:true},
				 {field:'apk','title':'APK版本号',width:80,sort:true},
				 {field:'color','title':'颜色',width:120,sort:true}, */
				 {field:'status','title':'状态',width:80,sort:true,templet: '#titleTpl'},
				 {field:'picture',templet:'#viewTpl1' , 'title':'展示图片',width:140,sort:true},
				 {field:'pictureDetails', templet:'#viewTpl2', 'title':'详情图片',width:120,sort:true},
				 {field:'urlName','title':'链接接名称',width:80,sort:true,edit:'text'},
				 {field:'url','title':'链接',width:120,sort:true,edit:'text'},
				 {field:'urlName2','title':'链接名称2',width:200,sort:true,edit:'text'},
				 {field:'url2','title':'链接2',width:180,sort:true,edit:'text'},
				 {field:'urlName3','title':'链接名称3',width:180,sort:true,edit:'text'},
				 {field:'url3','title':'链接3',width:180,sort:true,edit:'text'},
				 {field:'urlName4','title':'链接名称4',width:180,sort:true,edit:'text'},
				 {field:'url4','title':'链接4',width:180,sort:true,edit:'text'},
				 {field:'urlName5','title':'链接名称5',width:180,sort:true,edit:'text'},
				 {field:'url5','title':'链接5',width:180,sort:true,edit:'text'},
			      {fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
				]],
			})
 		    var $ = layui.$, active = {
		        reload: function(){
		            table.reload('idProduct', {
		                where: {
		                	productName: $('#productName').val(),
		                	productType: $('#searchPropType').get(0).selectedIndex,
		                	status: $('#searchAuditType').get(0).selectedIndex
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
				var checkStatus = table.checkStatus('idProduct'); //test即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					}
					 var param = {"titles":chk_value}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "deleteBySelect",
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
				   		url: "updateStatus",
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
			  table.on('edit(Product)', function(obj){
			    var value = obj.value, //得到修改后的值
			    data = obj.data, //得到所在行所有键值
			    field = obj.field; //得到字段
			    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
			    $.ajax({
			 	 	type: "POST",
			   		url: "editProduct",
			   	 	data: "value="+value+"&field="+field+"&id="+data.id,
			   	 	success: function(data){
			   	 	 
			     	  },error:function(date){
			     		 layer.msg("失败");
			     	  }
			     });
			  });
			  
			//监听工具条
			  table.on('tool(Product)', function(obj){
			    var data = obj.data;
			    var checkStatus = table.checkStatus('idProduct');
			    console.log(checkStatus.data);
			    if(obj.event === 'del'){
			      layer.confirm('确认是否删除', function(index){
							var chk_value=[data.id];
							 var param = {"titles":chk_value}; 
						    $.ajax({
						 	 	type: "POST",
						   		url: "deleteBySelect",
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
			 	url:"updateStatus", 
			 	type:"post", 
			 	data:param, 
			 	async: false,
			 	dataType:"json",
			 	success:function (date){
			 	}
			 });
			    tableIns.reload({
			    	  where: { //设定异步数据接口的额外参数，任意设
		                	productName: $('#productName').val(),
		                	productType: $('#searchPropType').get(0).selectedIndex,
		                	status: $('#searchAuditType').get(0).selectedIndex
			    	  }
			    	  ,page: {
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
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat">上/下架</a>
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script type="text/javascript">
		$("form").validate({
			rules: {
				CommodityName: {
					required: true
				},
				CommodityType: {
					required: true
				}
			},
			messages: {
				CommodityName: {
					required: function() {
						alert("请填写商品名称")
					}
				},
			}
		})
		
		function viewPic1(){
			layui.use('layer',function(){
				 var layer=layui.layer; 
				layer.open({
					type:1,
					content:$('#viewModal1')
				})
			})
		}
		function viewPic2(){
			layui.use('layer',function(){
				 var layer=layui.layer; 
				layer.open({
					type:1,
					content:$('#viewModal2')
				})
			})
		
		}


	</script>
</html>
