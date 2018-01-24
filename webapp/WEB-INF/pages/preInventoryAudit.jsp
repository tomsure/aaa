<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>财务管理-预存审核</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="css/table_public.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="vendor/layui/layui.js"></script>
<script src="js/data_table.js"></script>
<script type="text/javascript" src="js/public.js">
	
</script>

</head>
 
<body class="page-body">
	
	   <div class="search-box">
    	   <form>
            <div>
                <span>预选单号：</span>
                <input type="text" class="form-control" name="" value="" placeholder="查询预选单号">
            </div>
             <div id="" class="">
             	<span id="">
             		申请人
             	</span>
             	<input type="text" class="form-control" placeholder="查询申请人" name="" id="" value="" />
             </div>
             <div style="margin-left: 0px;">
                <span>状态：</span>
                 <select name="" id="">
                 	<option value="">全部</option>
                 	<option value="">1</option>
                 	<option value="">2</option>
                 </select>
            </div>
                <div style="margin-left: 0px;">
                <span>到账方式：</span>
                 <select name="" id="">
                 	<option value="">全部</option>
                 	<option value="">余额</option>
                 	<option value="">信用</option>
                 </select>
            </div>
           
           
             <div style="margin-left: 0px;">
               <span>支付方式：</span>
                <select class="form-control" id="" name="">
                	
                	<option>全部</option>
               
                	<option>支付宝</option>
                	<option value="">微信</option>
                	
               	    
                </select>
            </div>
            <div class="">
            	<span id="">
            		审核人：
            	</span>
            	<input type="text" placeholder="查询审核人" class="form-control"  name="" id="" value="" />
            </div>
            <div class="">
            	<span id="">
            		申请时间：
            	</span>
            	<input type="date" class="form-control"   name="" id="" value="" />- <input type="date" name="" id="" class="form-control" value="" />
            </div>
             
            <div class="">
              <span>通过时间：</span><input type="date" class="form-control" />-<input type="date" class="form-control" />
             </div>
             <div class="">
             	 <input type="reset" class="btn btn_reset" name="" id="" value="重置" style="margin-left: 30px;"/>
             <input id="search" type="button" class="btn btn_search" value="搜索" onclick="" style="height:34px;margin-left: 30px;">
            
             </div>
        </form>
          
    </div>
    
       
        <div class="check-btn">
        	<!--<button class="btn btn-default" onclick="">全选</button>-->
        	<button class="btn btn-default" onclick="">预存</button>
        	<button class="btn btn-default" onclick="">申请</button>
        </div>
         
     <h5 class="position-title">当前位置：首页>财务管理>预存审核</h5>

       <!--contentBegin-->  
        <div id="content" >
       
             <table class="table-hide" id="preInventoryAudit">
		   
		</table>
		<!-- 数据表格 -->
	<div class="ibox-content">
		<table class="layui-hide" id="PrestoreApply"
			lay-data="{id: 'idPrestoreApply'}" lay-filter="Apply"></table>
	</div>
	<!-- 支付证明图片 -->
	<div id="payImageId" class="purchaseOrderModal" style="display: none;">
		
	</div>
	<!--contentEnd-->
	<div class="predepositModal" id="predeposit">
		<form class="layui-form" action="" id="form1">
			<input type="hidden" name="id" id="deliverId" value="" /> 
				<span class="modal_title">预存单号</span><input type="text" name="code"
					lay-verify="required" />
			</p>
			<p>
				<span class="modal_title">经销商名称</span><input type="text" name="dealer"
					lay-verify="required" />
			</p>
			<p>
				<span class="modal_title">预存金额</span><input type="text" name="monney"
					lay-verify="required" /><span>元</span>
			</p>
			<p>
				<span class="modal_title">支付方式</span><select name="payType" id="">
					<option value="0">微信</option>
					<option value="1">支付宝</option>
				</select>
			</p>
			<p>
				<span class="modal_title">上传证明</span>
				 <button type="button" class="layui-btn layui-btn-sm" id="test1">
				  <i class="layui-icon">&#xe67c;</i>上传图片
				</button> 
				<input type="hidden" name="payImage" id="payImageDisgestId" lay-verify="required"/>
			</p>
			<div class="form_btn"  id="applyBtn" style="clear: left;">
				<button lay-submit class="btn btn_ok layui-btn-sm" lay-filter="formDemo">提交</button>
				<button class="btn btn_cancel layui-btn-sm">取消</button>
   	   	   	  <button type="reset" class="layui-btn layui-btn-primary layui-btn-sm">重置</button>
			</div>
		</form>
	</div>
</body>
<!-- 支付方式 -->
<script type="text/html" id="titleTpl4">
  {{#  if( d.payType === 0){ }}
   			余额
  {{#  }else if( d.payType === 1){ }}
   			信用
  {{#  } }}
</script>
<!-- 状态,0申请中,1通过,2驳回,3取消)-->
<script type="text/html" id="titleTpl5">
  {{#  if( d.state === 0){ }}
   				待审核
  {{#  }else if( d.state === 1){ }}
   				通过
  {{#  }else if( d.state === 2){ }}
   				驳回
  {{#  }else if( d.state === 3){ }}
   				取消
  {{#  } }}
</script>
<!--  -->
<script type="text/html" id="checkTpl">
	{{#  if(d.payImage){ }}
   			<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="showPayImage" >查看</a>
	{{#  }else{  }}
			<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="uploadPayImage">上传</a>
	{{#	 }	}}
</script>
<script>
layui.use('upload', function(){
  var upload = layui.upload;
  //执行实例
  var uploadInst = upload.render({
    elem: '#test1' //绑定元素
    ,url: 'attach/doUpload' //上传接口
     ,data: {"title":"payPic"}
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
<script type="text/javascript">
function showPic(data){
	layui.use('layer',function(){
		debugger
		var srcs=data.split(",");
		if(srcs.length>=1){
			for(var i=0;i<srcs.length;i++){//<img src="" ></img>
				var img='<img src="attach/doDownload?disgest='+srcs[i]+'" ></img>';
				$("#payImageId").append(img);
			}
		}
		var layer=layui.layer;
		    layer.open({
		    	type:1,
		    	title:['支付证明','font-size:18px;font-weight:800;'],
		    	area:['400px','600px'],
		    	content:$('#payImageId'),
		    })
	})
}
function uploadPic(data){
	layui.use('layer',function(){
		var layer=layui.layer;
		    layer.open({
		    	type:1,
		    	title:['支付证明上传','font-size:18px;font-weight:800;'],
		    	content:$('#uploadId'),
		    })
	})
}
//监听表单提交
layui.use('form', function(){
	  var form = layui.form;
	  form.on('submit(formDemo)',function(){
			/* 
			逻辑校验
			*/
			var url="addPrestoreApplyOrde";
			var param=$("#form1").serialize();
			console.log(param);
			console.log($("#form1").data());
			$.post(url,param,function(result){
				if(result.code==0){
					layer.msg("创建申请单成功");
				}else{
					layer.msg(result.msg);
				}
			});
		}); 
});
$(function(){
		//debugger;
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#PrestoreApply',
				url:'getPrestoreApplyOrdeList',
				id: 'idPrestoreApply',
				cellMinWidth:120,
				page:true, 
				cols:[[
			     {title:'序号',templet: '#indexTpl',width:60},
				 {field:'code','title':'预存单号',width:120,sort:true},
				 {field:'dealer','title':'经销商名称',width:100,sort:true},
				 {field:'monney','title':'预存金额',width:80,sort:true},
				 {field:'payType','title':'支付方式',width:100,sort:true,templet: '#titleTpl4'},
				 {field:'payImage','title':'支付证明',width:100,sort:true,templet: '#checkTpl'},
				 {field:'state','title':'状态',width:100,sort:true,templet: '#titleTpl5'},
				 {field:'applyUser','title':'申请人',width:100,sort:true},
				 {field:'applyDate','title':'申请时间',width:100,sort:true},
				 {field:'verifier','title':'审核人',width:100,sort:true},
				 {field:'verifierDate','title':'审核时间',width:100,sort:true},
				 {field:'dismissal','title':'驳回原因',width:100,sort:true},
			     {fixed: 'right', title: ' 操作', align:'center',width:180, toolbar: '#barTools'}
				]],
			});
			//查询提交的表单数据
 		    var $ = layui.$, active = {
		        reload: function(){
		        	console.log("do reload by query......");
		            table.reload('idPurchaseApply', {
		                where: {
		                	code:$('#codeId').val(),
							distributorName:$('#distributorNameId').val(),
							status:$('#statusId').val(),
							type:$('#typeId').val(),
							applicant:$('#applicantId').val(),
							combo:$('#comboId').val(),
							landBusiness:$('#landBusinessId').val() ,
		               /*  productName:.val(),
		        		status:$("#status").get(0).selectedIndex,
		        		apply:$("#apply").get(0).selectedIndex,
		        		instal lment:$("#installment").get(0).selectedIndex */
		                }
		            });
		            
		        }
		    };
 		 //监听搜索查询
			$('#search').on('click', function(){
			    var type = $(this).data('type');
			    console.log("do reload by query......"+type);
			    active[type] ? active[type].call(this) : '';
			});
 		
			//监听工具条
			  table.on('tool(Apply)', function(obj){
			    var data = obj.data;//得到所在行所有键值
			    //console.log(data);
			    if(obj.event==="showPayImage"){
			    	debugger
					var param = {"code":data.code}; 
					 console.log(param);
					 showPic(data.payImage);
				}
			   /*  if(obj.event==="uploadPayImage"){
					var param = {"code":data.code}; 
					 console.log(param);
					 uploadPic(data.payImage);
				} */
			    if(obj.event==="apply"){
					var param = {"code":data.code,"state":1}; 
					 console.log(param);
					 $.post("updatePrestoreApplyOrdeState",param,function(result){
					  		if(result.code==0){
					 			layer.msg("处理成功");
					 		}else{
					 			layer.msg(result.msg);
					 		}
				     	  }
				     );
				}else if(obj.event === 'reject'){
					 var param = {"code":chk_value,"state":2}; 
					  layer.prompt({title: '请输入驳回原因，并确认', formType: 2}, function(text, index){
						    layer.close(index);
						    layer.msg("驳回原因"+text);
						    param.rejectCause=text;
						  console.log(param);
						 $.post("updatePrestoreApplyOrdeState", param,function (result){
						 		if(result.code==0){
						 			layer.msg("处理成功");
						 		}else{
						 			layer.msg(result.msg);
						 		}
						 	}
						 );
					  });
			    }
			    if(obj.event==="cancel"){
					var param = {
								"code":data.code
								,"state":3
								}; 
					 console.log(param);
					 $.post("updatePrestoreApplyOrdeState",param,function(result){
					  		if(result.code==0){
					 			layer.msg("处理成功");
					 		}else{
					 			layer.msg(result.msg);
					 		}
				     	  }
				     );
				}else if(obj.event === 'del'){
			      layer.confirm('确认是否删除', function(index){
							 var param = {"code":data.code}; 
							 $.post("delPrestoreApplyOrde",param,function(result){
							  		if(result.code==0){
							 			layer.msg("处理成功");
							 		}else{
							 			layer.msg(result.msg);
							 		}
						     	  }
						     );
			        obj.del();
			        layer.close(index);
			        return;
			      });
			    } else if(obj.event === 'reapply'){
			    	 layer.confirm('确认是否重新申请', function(index){
					  	var param = {"code":data.code,"state":0}; 
					  	console.log(param);
					  	$.post("updatePrestoreApplyOrdeState",param,function(result){
					  		if(result.code==0){
					 			layer.msg("处理成功");
					 		}else{
					 			layer.msg(result.msg);
					 		}
				     	  }
				     );
					layer.close(index);
			    	 });
			 }
			 		//刷新数据表格
				    tableIns.reload( {page: {
				    	    curr: 1 //重新从第 1 页开始
				    	  }
				    });  
				  });  
		});
	})
</script>

<script type="text/html" id="barTools">
	{{#  if(d.state === 3){ }}
  			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	{{#  } else if(d.state === 2){ }}
   			<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="reapply">重新申请</a>
   			<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="update">修改</a>
  			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="cancel">取消</a>
    {{#  } else if(d.state === 1){ }}
  			<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>

    {{#  } else if(d.state === 0){ }}
			<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="apply">通过</a>
   			<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="reject">驳回</a>

    {{#  } }}
</script>

<script type="text/html" id="barTools">
  <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat1">预存</a>
<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="updatestat3">驳回</a>
</script>
</html>
