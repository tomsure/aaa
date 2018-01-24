<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>库存管理-设备库存</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/customModal.css"/>
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/layui/layui.js"></script>
<script src="js/public.js" ></script>


<body class="page-body">
	
	    <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<a href="javascript:void(0)" onclick="location.reload()" style="float: right;"><i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;" title="刷新"></i> </a>    	 
    	当前位置：库存管理&gt;设备库存
      </h5>
      
      
       <!--contentBegin-->  
        <div id="content" >
       
    <div class="search-box check-btn">
              <div class="check-btn">
              	<button class="btn btn-default" id="deviceBuilding" onclick="">建库+</button>
              </div>
              <div class="check-btn">
              	<button class="btn btn-default" id="" onclick="">删除</button>
              </div>
       
    </div>
      

    <div class="ibox-content">
       		
		<table id="deviceInventoryList" class="table-hide" id="idCardInventoryList" 
						lay-data="{id: 'idDeviceInventoryList'}" lay-filter="deviceInventory">
				
				</table>
		 <script type="text/html" id="indexTpl">
                            {{d.LAY_TABLE_INDEX+1}} 
           
		 </script>
		  <script type="text/html" id="viewImei">
		  	     <div> 
		  	     <a onclick="showImei()">查看 </a>
		  	     </div>
		  </script>
     
    </div>
   
</div>
 <!--contentEnd-->
   <div class="buildingModal" id="deviceBuildModal" >
   	      <form action=""  class="layui-form" >
   	      	  <p><span style="margin-right: 30px;">库存编号</span><input type="text" name="code" placeholder="自动生成" name=""/></p>
   	      	   <p><span style="margin-right: 10px;">APK版本号</span><input type="text"  name="apk" placeholder="自动生成"/></p>
   	      	    <p><span style="margin-right: 30px;">颜色分类</span><input type="text" name="color" placeholder="颜色" /></p>
   	      	     <p><span style="margin-right: 60px;">IMEI</span><input type="text" name="imeiStart" placeholder="IMEI start"/>&nbsp;&nbsp;-&nbsp;&nbsp;<input type="text" name="imeiEnd" id="" value="" placeholder="IMEI End" /></p>
   	      	
   	      			<div class="form_btn"  id="createBtn" style="clear: left;">
						<button lay-submit class="btn btn_ok layui-btn-sm" lay-filter="formDemo">提交</button>
						<button class="btn btn_cancel layui-btn-sm">取消</button>
   	   	   	  			<button type="reset" class="layui-btn layui-btn-primary layui-btn-sm">重置</button>
					</div>
   	      </form>
   </div>
       <div id="showImei" class="ImeiModal">
	            <p>	<input type="text" name="imeiStart" id="imeiStartId"/>&nbsp;&nbsp-&nbsp&nbsp
	             		<input type="text" name="imeiEnd"  id="imeiEndId"/><span id=imeiNumId>1000张</span></p>
	             <p><span>MCU</span> <input type="text" id="mcuId" style="margin-left: 12px;"></p>
	             <p><span>APK</span><input type="text" id="apkId"/></p>
	             	
	             </div>
 
</body>
 <script type="text/javascript">
 	  $(function(){
 	  	  $('#deviceBuilding').click(function(){
 	  	  	  layui.use('layer',function(){
 	  	  	  	var layer=layui.layer;
 	  	  	  	     layer.open({
 	  	  	  	     	type:1,
 	  	  	  	     	title:['建库','font-size:18px;font-weight:800;'],
 	  	  	  	     	area:['500px','310px'],
   	  	  	  	     	content:$('#deviceBuildModal')
 	  	  	  	     })
 	  	  	  })
 	  	  })
 	  })
  	  function showImei(){
  	  	   layui.use('layer',function(){
  	  	   	    var layer=layui.layer;
  	  	   	        layer.open({
  	  	   	        	type:1,
  	  	   	        	title:['IMEI','font-size:18px;font-weight:800;'],
  	  	   	        	area:['480px','200px'],
  	  	   	        	content:$('#showImei')
  	  	   	        })
  	  	   })
  	  }
  </script>
<script type="text/javascript">
	$(function(){
		var tableIns;
		layui.use('form', function(){
			  var form = layui.form;
			  form.on('submit(formDemo)',function(){
			// debugger
				/* var com= $("form1").verify();
				if(!com){
					return;
				} */
				var url="addRepertoryDevice";
				var param=$("#form1").serialize();
				console.log(param);
				console.log($("#form1").data());
				$.post(url,param,function(result){
					if(result.code==0){
						layer.msg("创建申请单成功");
						//刷新数据表格
					    tableIns.reload( {page: {
					    	    curr: 1 //重新从第 1 页开始
					    	  }
					    });  
					}else{
						layer.msg(result.msg);
					}
				});
			}); 
		});
		layui.use('table',function(){
			//debugger
			var table=layui.table;
	tableIns = table.render({
				elem:'#deviceInventoryList',
				url:'getRepertoryDeviceList',
				id: 'idDeviceInventoryList',
				cellMinWidth:120,
				page:true,
				cols:[[
				 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:80},
				 {field:'code','title':'库存编号',width:120,sort:true},
				 {field:'mcu','title':'MCU版本',width:120,sort:true,edit:'text'},
				 {field:'apk','title':'APK版本',width:120,sort:true,edit:'text'},
				 {field:'','title':'IMEI',width:120,sort:true,templet: '#viewImei'},
				 {field:'repertory','title':'库存数',width:80,sort:true},
			     {fixed: 'right', title: '操作', align:'center',width:100, toolbar: '#barTools'}
				]],
			})
			//监听工具条
			  table.on('tool(deviceInventory)', function(obj){
			    var data = obj.data;//得到所在行所有键值
			    //console.log(data);
			    // 显示号段
			    if(obj.event === 'showIemi'){
			    	debugger
			    	if(data.imeiEnd>=0&&data.imeiStart>=0){
						var num=(Number)(data.imeiEnd-data.imeiStart+1);
			    		$("#imeiStartId").val(data.imeiStart);
			    		$("#imeiEndId").val(data.imeiEnd);
			    		if(num>0){
			    			$("#imeiNumId").html(num+'张');
			    		}else{
				    		$("#imeiNumId").html("没有卡片");
				    	}
			    	}else{
			    		$("#imeiNumId").html("没有卡片");
			    	}
			    	$("#mcuId").val(data.mcu);
			    	$("#apkId").val(data.apk);
			    	
			    	showImei();
			    	/* var param = {"code":data.code}; 
				    $.ajax({
				 	 	type: "POST",
				   		url: "getICCIDBySelect",
				   	 	data: param,
				   	 	success: function(result){
					   	 	if(result.code==0){
					   	 		showPic(result.data);
					 			layer.msg("处理成功");
					 		}else{
					 			layer.msg(result.msg);
					 		}
				     	  }
				     }); */
			    }else if(obj.event === 'del'){
			      layer.confirm('确认是否删除', function(index){
							 var param = {"code":data.code}; 
							 $.post("delRepertoryDeviceByCode",param,function(result){
							  		if(result.code==0){
							 			layer.msg("处理成功");
							 		}else{
							 			layer.msg(result.msg);
							 		}
						     	  }
						     );
			        obj.del();
			        layer.close(index);
			      });
			    } 
			  }); 
		});
	});
</script>	
<script type="text/html" id="barTools">
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
</html>
