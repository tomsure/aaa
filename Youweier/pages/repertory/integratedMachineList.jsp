<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>库存管理-一体机库存</title>
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
    	当前位置：库存管理&gt;一体机库存
      </h5>
      
      
       <!--contentBegin-->  
        <div id="content" >
         
    <div class="search-box check-btn">
        <div class="check-btn">
        
        	<button class="btn btn-default" id="integratedMachineBuilding" onclick="">建库+</button>
            </div>
            <div class="check-btn">
        
        	<button class="btn btn-default" id="integratedMachineBuilding" onclick="">删除</button>
            </div>
         </div>
    
 <div class="">
       		
		<table class="table-hide" id="aioInventoryList" lay-filter="aioInventory">
		   
		</table>
    		</div>
   	 </div>
    <!--建库表单开始-->
   <div class="buildingModal" id="aioBuildModal" >
   	      <form action="" id="form1" class="layui-form">
   	      	  <p><span style="margin-right: 30px;">库存编号</span><input type="text" placeholder="自动生成" /></p>
   	      	   <p><span style="margin-right: 10px;">APK版本号</span><input type="text" name="apk" placeholder="自动生成" id="formApkId"/></p>
   	      	   <div class="layui-form-item">
				    <label class="layui-form-label" style="width:90px">运营商</label>
				    <div class="layui-input-block">
			   	   	 	<select name="operator" id="operator">
			   	   	 		<option value="0" checked>移动</option>
			   	   	 		<option value="1">电信</option>
			   	   	 		<option value="2">联通</option>
			   	   	 	</select></div>
		   	   	 </div>
		   	   	
			    <div class="layui-form-item">
                	 <label class="layui-form-label" style="width:90px;">流量套餐</label>
                 		<div class="layui-input-block"  style="width:270px">
                 			<select name="combo" lay-verify="required" id="comboId">
					        <option value="0" checked>套餐1</option>
			   	   	 		<option value="1">套餐2</option>
			   	   	 		<option value="2">套餐3</option>
					      </select>
                 		</div>
                </div>
              	<input id="comboName" name="comboName" style="display:none;"/>
                <p class="layui-form-item">
		   	   	  	 <span style="margin-right: 30px;">归属地</span>
				      <input type="text" name="location" lay-verify="required" id="location"/>
			    </p>
   	      	    <p><span style="margin-right: 30px;">MCU版本</span><input type="text" name="mcu" placeholder="MCU" lay-verify="required"/></p>
   	      	     <p><span style="margin-right: 60px;">IMEI</span><input type="text" name="imeiStart" placeholder="IMEI" lay-verify="required"/>&nbsp;&nbsp;-&nbsp;&nbsp;<input type="text" name="imeiEnd" id="" value="" placeholder="IMEI" lay-verify="required"/></p>
   	      	     <p><span style="margin-right: 60px;">ICCID</span><input type="text" name="iccidStart" placeholder="iccid" lay-verify="required"/>&nbsp;&nbsp;-&nbsp;&nbsp;<input type="text" name="iccidEnd" id="" value="" placeholder="iccid" lay-verify="required"/></p>
   	      	
  	      		<div class="form_btn"  id="createBtn" style="clear: left;">
					<button lay-submit class="btn btn_ok layui-btn-sm" lay-filter="formDemo">提交</button>
					<button class="btn btn_cancel layui-btn-sm">取消</button>
  	   	   	  			<button type="reset" class="layui-btn layui-btn-primary layui-btn-sm">重置</button>
				</div>
   	      </form>
   </div>
    <!--建库表单结束-->
    
	<!-- IMEI/ICCID查看div开始 -->
   <div class="viewIccidImeiModal" id="viewIccidImei">
   	     <p><span style="margin-right: 27px;">IMEI</span><input type="text" id="imeiStartId" />&nbsp;&nbsp;- &nbsp;&nbsp;<input type="text" id="imeiEndId" /><span id="imeiNumId" >1000台</span></p>
   	    <p><span style="margin-right: 18px;">ICCID</span><input type="text" id="iccidStartId" />&nbsp;&nbsp;-&nbsp;&nbsp;<input type="text" id="iccidEndId"/><span>1000张</span></p>
   	    <p><span style="margin-right: 16px;">运营商</span><input type="text" id="operatorId"/></p>
   	    <p><span style="margin-right: 16px;">归属地</span><input type="text" id="locationId"/></p>
   	    <p><span style="margin-right: 14px;">流量套餐</span><input type="text" id="comboNameId"/></p>
   	    
   	   
   </div>
        
</body>
<script type="text/javascript">
		$(function(){
			$('#integratedMachineBuilding').click(function(){
				layui.use('layer',function(){
					var layer=layui.layer;
					   layer.open({
					   	type:1,
					   	area:['500px','500px'],
					   	title:['建库','font-size:18px','font-weight:800;'],
					   	content:$('#aioBuildModal')

					   })
				})
			})
		})
      function viewImei(){
     	   layui.use('layer',function(){
					var layer=layui.layer;
					   layer.open({
					   	type:1,
					   	area:['500px','240px'],
					   	title:['IMEI/ICCID','font-size:18px','font-weight:800;'],
					   	content:$('#viewIccidImei')

					   })
				})
     }
</script>
<script type="text/html" id="barTools">
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
 <script type="text/html" id="viewImei">
		  	     <a class="layui-btn layui-btn layui-btn-xs" lay-event="showIemi">查看</a>
		  </script>
<!-- 引入公共jsp字段模板 -->
<%@ include file="../jsCommon/baseFiled.jsp" %>

<%@ include file="../js/LoadCombo.jsp" %>

<script type="text/javascript">
	$(function(){
		
		var tableIns;
		layui.use('form', function(){
			  var form = layui.form;
			  form.on('submit(formDemo)',function(){
			 debugger
				/* var com= $("form1").verify();
				if(!com){
					return;
				} */
				var url="addRepertoryAio";
				//获取选中的套餐名字
				var conboName=$("#combo option:selected").html();
				$("#comboName").val(conboName);
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
				elem:'#aioInventoryList',
				url:'getRepertoryAioList',
				id: 'idAioInventoryList',
				cellMinWidth:120,
				page:true,
				cols:[[
				 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:80},
				 {field:'code','title':'库存编号',width:120,sort:true},
				 {field:'mcu','title':'MCU版本',width:120,sort:true,edit:'text'},
				 {field:'apk','title':'APK版本',width:120,sort:true,edit:'text'},
				 {field:'operator','title':'运营商',width:100,sort:true,templet: '#titleTpl6'},
				 {field:'location','title':'归属地',width:120,sort:true,edit:'text'},
				 {field:'comboName','title':'流量套餐',width:100,sort:true},
				 {field:'','title':'IMEI',width:120,sort:true,templet: '#viewImei'},
				 /* {field:'repertory','title':'库存数',width:80,sort:true}, */
			     {fixed: 'right', title: '操作', align:'center',width:100, toolbar: '#barTools'}
				]],
			})
			//监听工具条
			  table.on('tool(aioInventory)', function(obj){
			    var data = obj.data;//得到所在行所有键值
			    //console.log(data);
			    // 显示号段
			    if(obj.event === 'showIemi'){
			    	debugger
			    	if(data.imeiEnd>=0&&data.imeiStart>=0){
			    		var num=(Number)((Number)(data.imeiEnd)-(Number)(data.imeiStart)+1);
			    		$("#imeiStartId").val(data.imeiStart);
			    		$("#imeiEndId").val(data.imeiEnd);
			    		$("#iccidStartId").val(data.iccidStart);
			    		$("#iccidEndId").val(data.iccidEnd);
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
			    	var operator;
			    	if(data.operator==0){
			    		operator='移动';
			    	}else if( data.operator == 1){ 
			    			operator='电信';
		  			}else if( data.operator == 2){
		  					operator='联通';
			    	}
			    	$("#operatorId").val(operator);
			    	$("#locationId").val(data.location);
			    	$("#comboNameId").val(data.comboName);
			   	   
			   	    
			    	viewImei();
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
							 $.post("delRepertoryAioByCode",param,function(result){
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
</html>
