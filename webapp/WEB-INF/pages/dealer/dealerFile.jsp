<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>经销商管理-经销商档案</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/bootstrap/bootstrap-table.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<link rel="stylesheet" type="text/css" href="css/customModal.css"/>
<link href="css/public.css" rel="stylesheet">

<link rel="stylesheet" type="text/css" href="css/table_public.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/layer/layer.min.js" ></script>
<script type="text/javascript" src='vendor/layui/layui.js'></script>
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/DateFormate.js"></script>


</head>

<body class="page-body">
	 
	
        <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：经销商管理&gt;经销商档案 
        </h5>
      
       <!--contentBegin-->  
        <div id="content" >
    <div class="search-box check-btn">
    
            <div>
                <span>经销商编号：</span>
                <input type="text" class="form-control" value="" placeholder="查询经销商编号" id="dealerNum">
            </div>
    
    		<div style="margin-left: 40px;">
                <span>经销商名称：</span>
                <input type="text" class="form-control" value="" placeholder="查询经销商名称" id="dealerName">
            </div>
            <div style="margin-left: 40px;">
                <span>业务员：</span>
                <input type="text" class="form-control" value="" placeholder="查询业务员" id="salesman">
            </div>
            <div style="margin-left: 40px;">
                <span>联系人：</span>
                <input type="text" class="form-control" value="" placeholder="查询联系人" id="linkman">
            </div>
            <div style="margin-left: 40px;">
                <span>联系方式：</span>
                <input type="text" class="form-control" value="" placeholder="查询联系方式" id="linkway">
            </div>
            <div id="">
             	 <input type="reset" class="btn btn_reset" name="" id="" value="重置" />
             <input id="search" type="button" class="btn btn_search" data-type="reload" value="搜索" />
            
             </div>
        <div class="check-btn">
        
        	<button class="btn btn-default" id="addBtn" onclick="">新增</button>
            <button id="btn_del" class="btn btn-default" onclick="">删除</button>
            
        </div>
<!--         <div class="validityTime" style="float: right;">
	 	   	   <span>
	 	   	   	合作日期:
	 	   	   </span>
	 	   	 
	 	   	 	<input type="date" name="" id="" value=""  style="position: static"/>-
	 	   	   <input type="date" name="" id="" value="" style="position: static"/>
	 	   	 
	 	   	 </div> -->
    </div>
    

    <div class="ibox-content">
       		
		<table class="table-hide" id="dealerFile" lay-data="{id: 'idDealerFile'}" lay-filter="DealerFile">
		    
		</table>
    </div>
</div>
	<!-- 支付证明图片 -->
	<div id="payImageId" class="addDealerModal" style="display: none;">
<!-- 		<button type="button" class="layui-btn layui-btn-sm" id="uploadagain">
				  <i class="layui-icon">&#xe67c;</i>上传图片
		</button>  -->
		<div class="layui-upload">
		  <button type="button" class="layui-btn layui-btn-normal" id="test8">选择图片</button>
		  <button type="button" class="layui-btn" id="test9">开始上传</button>
		  <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px;">
		      <div class="layui-upload-list" id="demo2">
		      <input id="nameImage" name="list[0]" maxlength="255" class="input-xlarge required" type="hidden">
		      </div>
  			</blockquote>
		</div>
		<input type="hidden" name="payImage" id="" lay-verify="required"/>
	</div>
   <!--新增弹窗开始-->
   	   <div class="addDealerModal" id="addDlealer">
   	   	  <form class="" action="" id="form1">
<!--    	   	  <p><span class="addtitle ">账号</span><input type="text" placeholder="自动生成" /></p>
   	   	  <p><span class="addtitle ">密码</span><input type="text" placeholder="默认123456" /></p>
   	   	  <p><span class="addtitle ">编号</span><input type="text" placeholder="自动生成" /></p> -->
   	   	  <p style="margin-left: 0;"><span class="" >经销商名称</span><input type="text" name="dealerName"/></p>
   	   	  <p>
   	   	  	<span class="addtitle ">身份</span>
   	   	  	<input type="radio" name="position" value="1" checked/>
   	   	  	<span>经销商</span> <input type="radio" name="position" id="" value="2" />
   	   	  	<span>区域经销商</span>
   	   	  	</p>
   	   	  	<p>
   	   	  	<span style="margin-left: 35px;">
   	   	  	业务交接人</span><input type="button" value="选择" style="background-color: dodgerblue;color: white;" /></p>
<!--    	   	  <p><span class="addtitle1">营业执照</span><span style="background-color: dodgerblue;color: white;">上传</span></p>-->   	   	  <p>
<!-- 			<p>
				<span class="addtitle1">营业执照</span>
				 <button type="button" class="layui-btn layui-btn-sm" id="test1">
				  <i class="layui-icon">&#xe67c;</i>上传图片
				</button> 
				<input type="hidden" name="payImage" id="payImageDisgestId" lay-verify="required"/>
			</p> -->
   	   	  <p><span class="addtitle1">信用额度</span><input type="text" placeholder="输入信用额度" name="credit"/></p>
   	   	  <p><span class=" addtitle1">行业分类</span><input type="text" placeholder="行业分类" name="industryType"/></p>
   	   	  <p><span class=" " style="margin-right: 30px;">联系人</span><input type="text" placeholder="输入联系人" name="linkman"/></p>
   	   	  <p><span class="addtitle1 ">联系方式</span><input type="text" placeholder="输入联系方式" name="linkway"/></p>
   	   	  </form>
   	       <div id="applyBtn" class="modal_btn">
   	   	    	<button class="btn btn_ok">确定</button>
   	   	    	<button class="btn btn_cancel ">取消</button>
   	   	    	<button class="btn btn_reset">重置</button>
   	   	    </div>	   
   	   </div>
   	   
   <!--新增弹窗结束--><!----><!---->
</body>
<script type="text/html" id="titleTpl4">
  {{#  if(!(d.cooperationDate)){ }}
  {{#  } else { }}
  {{formatDate(new Date(d.cooperationDate))}}
  {{#  } }}
</script>
<script type="text/html" id="checkTpl">
   			<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="showPayImage" >查看</a>
</script>
<script type="text/javascript">
	//新增后再上传图片
layui.use('upload', function(obj){
	debugger;
  var upload = layui.upload;
  $("#payImageId").data("bid");
  //执行实例
	var demoListView=$('#demo2');
  var uploadInst = upload.render({
    elem: '#test8' //绑定元素
    ,url: 'attach/doUpload' //上传接口
     ,data: {"title":"licensePic"}
  	,auto:false
  	,bindAction: '#test9'
  	,choose: function(obj){
  	      //预读本地文件示例，不支持ie8
/*   	      obj.preview(function(index, file, result){
  	        $('#demo1').attr('src', result); //图片链接（base64）
  	      }); */
  	      //***********************************************
  	  //将每次选择的文件追加到文件队列
      	var files=obj.pushFile();
        //预读本地文件示例，不支持ie8
        obj.preview(function(index, file, result){
      	 		$("#nameImage").val($("#nameImage").val()+file.name+":");
              	//$('#demo2').append('<img src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img" width="90px" height="90px">');
        			var tr=$(['<tr id="upload-'+index+'" class="edtimg">'
        			          ,'<td>'
        			          ,'<div class="imgs">'
        			          ,'<img src="'+ result +'" alt="'+ file.name +'" class="layui-upload-img" width="90px" height="90px">'
        			             ,'<a class="close-link demo-delete"> <i class="fa fa-times"></i></a>'
        			             ,'</div>'
        			             ,'</td>'
        			             ,'</tr>'].join(''));
        			 //删除
        	        tr.find('.demo-delete').on('click', function(){
        	          $("#nameImage").val($("#nameImage").val().replace(files[index].name+":",''));
        	          delete files[index]; //删除对应的文件
        	          tr.remove();
        	        });
  //张数限制
        	      	var count = parseInt(index.split("-")[1])+1; //得到文件索引
        	      	if(count>4){
        	      	$("#nameImage").val($("#nameImage").val().replace(files[index].name+":",''));
        	    	//但是layUI的before方法，不管返回什么，还是会进行上传
        	    	delete files[index];
        	    	layer.msg("最多上传4张图片！"); 
        	    	return false;
        	    	}else{
        	        demoListView.append(tr);
        	    	}
        });
        //***************************************************
  	   }
    ,done: function(res){
      //上传完毕回调
      if(res.code==0){
    	  console.log(res.data)
    	  //绑定到bean中
    	  param={
    			  "bid":$("#payImageId").data("bid"),//被绑定的bean id
    			  "aid":res.data,//要绑定的文件 id
    			  };
    	  $.ajax({
		 	 	type: "POST",
		   		url: "touchWith",
		   	 	data: param,
		   	 	success: function(data){
     	 layer.msg("上传成功");
		     	  }
		     });
      }else{
    	 layer.msg("上传失败"+res.msg);
      }
    }
    ,error: function(){
	      //演示失败状态，并实现重传
	      var demoText = $('#demoText');
	      demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
	      demoText.find('.demo-reload').on('click', function(){
	        uploadInst.upload();
	      });
	    }
  }); 
});
function showPic(aid){
/* 	$.getJSON('attach/doDownloadByIds', function(json){
		layer.photos({
	        photos: json,
	        closeBtn:true,
	    });
	}); */
 	layui.use('layer',function(){
		if(aid!=null){
		var srcs=aid.split(",");
		if(srcs.length>=1){
		//$("#lookImageId").empty();
			for(var i=0;i<srcs.length;i++){//<img src="" ></img>
				var img='<img src="attach/doDownloadById?id='+srcs[i]+'" ></img>';
				$("#payImageId").append(img);
			}
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
	$(function(){
		//提交按钮.
		$("#applyBtn").on('click',".btn_ok",function(){
			
			var url="addDealerFile";
			var param=$("#form1").serialize();
			$.post(url,param,function(result){
				console.log(result.date);
				if(result.code==0){
					//成功则调用上传图片按钮
					/* uploads(); */
					layer.msg("新增经销商成功");
					
				}else{
					layer.msg(result.msg);
				}
			});
		}); 
		
		
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#dealerFile',
				url:'showDealerFile',
				id: 'idDealerFile',
				cellMinWidth:120,
				page:true,
				cols:[[
					{type:'checkbox'},
                    {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'dealerNum', width:120, title: '经销商编号',sort:true}
				      ,{field:'dealerName', width:120, title: '经销商名称', sort: true}
				      ,{field:'position', width:120, title: '身份' , sort:true}
				      ,{field:'credit', width:120, title:'信用额度',  sort:true} 
				       ,{field:'higherCustomer', width:120,  title: '上级客户',sort:true}
				      ,{field:'salesman', width:120,  title: '业务员', sort: true}
				      ,{field:'businessLicense', width:120,templet: '#checkTpl', title: '营业执照' ,sort:true}
				      ,{field:'cooperationDate', width:120, title: '合作日期' , sort:true,templet: '#titleTpl4'}
				      ,{field:'accountBalance', width:120, title:'账户余额',  sort:true } 
				       ,{field:'industryType', width:120,  title: '行业分类',sort:true}
				       ,{field:'linkman', width:120, title: '联系人', sort: true,edit:'text'}
				      ,{field:'linkway', width:120, title: '联系方式', sort: true,edit:'text'}
				      ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
				]],
			})
 		    var $ = layui.$, active = {
		        reload: function(){
		            table.reload('idDealerFile', {
		                where: {
		                	dealerNum: $('#dealerNum').val(),
		                	dealerName: $('#dealerName').val(),
		                	salesman: $('#salesman').val(),
		                	linkman: $('#linkman').val(),
		                	linkway: $('#linkway').val(),
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
				var checkStatus = table.checkStatus('idDealerFile'); //test即为基础参数id对应的值
				if(checkStatus.data.length!=0){
					var chk_value=[];
					for (var i = 0; i < checkStatus.data.length; i++) {
						chk_value.push(checkStatus.data[i].id);
					}
					 var param = {"titles":chk_value}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "deleteDealerFile",
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
			
			//监听单元格编辑
			  table.on('edit(DealerFile)', function(obj){
			    var value = obj.value, //得到修改后的值
			    data = obj.data, //得到所在行所有键值
			    field = obj.field; //得到字段
			    layer.msg('[ID: '+ data.id +'] ' + field + ' 字段更改为：'+ value);
			    $.ajax({
			 	 	type: "POST",
			   		url: "editDealerFile",
			   	 	data: "value="+value+"&field="+field+"&id="+data.id,
			   	 	success: function(data){
			   	 	 
			     	  },error:function(date){
			     		 layer.msg("失败");
			     	  }
			     });
			  });
			  
			//监听工具条
			  table.on('tool(DealerFile)', function(obj){
			    var data = obj.data;
			    debugger;
			    var checkStatus = table.checkStatus('idDealerFile');
			    console.log(checkStatus.data);
			    if(obj.event==="showPayImage"){
			    	$("#payImageId").data("bid",data.id);
			    	if(data.businessLicense==null){
			    		showPic(null);
			    	}else{
					 		showPic(data.businessLicense);
			    	}
				}
			    if(obj.event === 'del'){
			      layer.confirm('确认是否删除', function(index){
							var chk_value=[data.id];
							 var param = {"titles":chk_value}; 
						    $.ajax({
						 	 	type: "POST",
						   		url: "deleteDealerFile",
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
	})
</script>
<script type="text/html" id="indexTpl">
    {{d.LAY_TABLE_INDEX+1}}
</script>
<script type="text/html" id="barTools">
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
</html>

