<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>库存管理-卡片库存</title>
		<meta name="keywords" content="">
		<meta name="description" content="">
		<link href="css/homeAbout/font-awesome.css" rel="stylesheet">
		<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="vendor/bootstrap/bootstrap-table.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
		<link rel="stylesheet" type="text/css" href="css/customModal.css"/>
		<link href="css/public.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
		<script src="vendor/jquery-3.1.1.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="vendor/layui/layui.js"></script>
		<script src="js/public.js" ></script>
		
	</head>
  
	<body class="page-body">
		<h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：库存管理&gt;卡片库存
        </h5>

		<!--contentBegin-->
		<div id="content">
			
			<div class="search-box check-btn">
				<div class="check-btn">

					<button class="btn btn-default" id="building" onclick="">建库+</button>
					
				 </div>
					
			</div>

			<div class="ibox-content">

				<table id="inventoryList" class="table-hide" id="idCardInventoryList" 
						lay-data="{id: 'idPrestoreApply'}" lay-filter="inventory">
				
				</table>
                 <script type="text/html" id="indexTpl">
                            {{d.LAY_TABLE_INDEX+1}} 
                         </script>
                         <script type="text/html" id='showCardIccid'>
                         	  <div id="">
                         	  	<a class="layui-btn layui-btn layui-btn-xs" lay-event="showCardNum">查看</a>
                         	  </div>
                         </script>
			   

			</div>

		</div>
			  <!--表格新增弹窗开始-->
		<div id="modal_AccountAllocation" class="modal_AccountAllocation" style="padding: 10px; display: none;">
		   <form class="layui-form" action="" id="form1">
				<div class="addAccount Modal_left" style=" ">
				<div class="layui-form-item">
		   	   	 	<label class="layui-form-label" style="width:90px">运营商</label>
					    <div class="layui-input-block"  style="width:270px">
					      <select lay-verify="required" name="operator" id="operator">
					        <option value="0" checked>移动</option>
			   	   	 		<option value="1">电信</option>
			   	   	 		<option value="2">联通</option>
					      </select>
					    </div>
					   </div>
		   	   	 	<label class="layui-form-label" style="width:90px">归属地</label>
					    <div class="layui-input-block"  style="width:270px">
					      <input type="text" name="location" id="location" lay-verify="required"/>
					    </div>
					   <div class="layui-form-item">
	                 	 <label class="layui-form-label" style="width:90px">流量套餐</label>
	                  		<div class="layui-input-block"  style="width:270px">
	                  			<select name="combo" lay-verify="required" id="combo" lay-filter="combofilter">
							        <option value="0" checked>套餐1</option>
					   	   	 		<option value="1">套餐2</option>
					   	   	 		<option value="2">套餐3</option>
							      </select>
	                  		</div>
	                  	</div>
	                  	<input type="text" name="comboName" id="comboName" lay-verify="required" style="display: none;"/>
	                  	<div class="layui-form-item">
	                  <label class="layui-form-label" style="width:90px">ICCID</label>
		                  <div class="layui-input-block"  style="width:270px">
			                  <input type="text" name="iccidStart" id="iccidStart" lay-verify="required"/>&nbsp;&nbsp-&nbsp&nbsp
			                  </div>
		                  <div class="layui-input-block"  style="width:270px">
			             		<input type="text" name="iccidEnd"  id="iccidEnd" lay-verify="required"/>
			             	</div>
		             	</div>
		             		<div class="layui-form-item">
	                  <label class="layui-form-label" style="width:90px">套餐描述</label>
	                  <div class="layui-input-block"  style="width:270px">
	                  		<textarea name="comboDesc" rows="4" cols="30" id="comboDesc" lay-verify="required"></textarea>
	                  </div>
	                  </div>
	            </div> 
	             	<div class="form_btn"  id="createBtn" style="clear: left;">
						<button lay-submit class="btn btn_ok layui-btn-sm"  lay-filter="formDemo">提交</button>
						<button class="btn btn_cancel layui-btn-sm">取消</button>
   	   	   	  			<button type="reset" class="layui-btn layui-btn-primary layui-btn-sm">重置</button>
					</div>
     </form>
 	</div>
               <!--弹窗内容结束-->

	          <!--卡号段-->
	             <div id="CardIccid" class="iccidModal" style="display: none;">
	             <p>	<input type="text" name="iccidStart" id="iccidStartId"/>&nbsp;&nbsp-&nbsp&nbsp
	             		<input type="text" name="iccidEnd"  id="iccidEndId"/><span id=cardNumId>1000张</span></p>
	             <p><span>运营商</span> <input type="text"  id="operatorId" style="margin-left: 12px;"></p>
	             <p><span>流量套餐</span><input type="text" id="comboNameId"/></p>
	             	
	             </div>
	          <!--卡号段-->
			

</body>
<!-- 引入公共jsp字段模板 -->
<%@ include file="../jsCommon/baseFiled.jsp" %>

<%@ include file="../js/LoadCombo.jsp" %>
<script type="text/javascript">
	$(function(){
		var tableIns;
		//监听表单提交
		layui.use('form', function(){
			  var form = layui.form;
			  form.on('submit(formDemo)',function(){
				/* 
				} */
				var url="addRepertory";
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
			//下拉选事件监听
			  form.on('select(combofilter)', function(data){
			  	  //console.log(data.elem); //得到select原始DOM对象
			  	  //console.log(data.value); //得到被选中的值
			  	 // console.log(data.othis); //得到美化后的DOM对象
			  	//debugger
			  	var param={id:data.value};
			  	$.getJSON("findComboById",param,function(result){
			  		if(result.code==0){
			  			console.log(result.data)
			  			//debugger
			  			var text=result.data[0].comboDesc;
			  			$("#comboDesc").val(text);
			  			$("#comboName").val(result.data[0].name);
			  			layui.use('form', function(){
			  				  var form = layui.form;
			  				form.render(); //更新全部
			  				});
			  		}
			  	});
			  	});    
		});
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#inventoryList',
				url:'getRepertoryList',
				id: 'idCardInventoryList',
				cellMinWidth:120,
				page:true,
				cols:[[
				 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:80},
				 {field:'code','title':'库存编号',width:120,sort:true},
				 {field:'operator','title':'运营商',width:120,sort:true,edit:'text',templet: '#titleTpl6'},
				 {field:'location','title':'归属地',width:120,sort:true,edit:'text'},
				 {field:'comboName','title':'流量套餐',width:120,sort:true},
				 {field:'comboDesc','title':'套餐描述',width:180,sort:true},
				 {field:'repertory','title':'库存数',width:80,sort:true},
				 {field:'carNum','title':'卡号段',width:80,sort:true,templet: '#showCardIccid'},
			     {fixed: 'right', title: '操作', align:'center',width:100, toolbar: '#barTools'}
				]],
			})
			//监听工具条
			  table.on('tool(inventory)', function(obj){
			    var data = obj.data;//得到所在行所有键值
			    //console.log(data);
			    // 显示号段
			    if(obj.event === 'showCardNum'){
			    	//debugger
			    	if((Number)(data.iccidEnd)>=0&&(Number)(data.iccidStart)>=0){
						//var num=(Iccid)((Number)(data.iccidEnd)-(Number)(data.iccidStart)+1);
			    		$("#iccidStartId").val(data.iccidStart);
			    		$("#iccidEndId").val(data.iccidEnd);
			    		if(data.repertory>0){
			    			$("#cardNumId").html(data.repertory);
			    		}else{
				    		$("#cardNumId").html("没有卡片");
				    	}
			    	}else{
			    		$("#cardNumId").html("没有卡片");
			    	}
			    	var operator;
			    	if(data.operator==0){
			    		operator='移动';
			    	}else if( data.operator == 1){ 
			    			operator='电信';
		  			}else if( data.operator == 2){
		  					operator='联通';
			    	}
			    	$("#operatorId").val(operator);
			    	$("#comboNameId").val(data.comboName);
			    	
			    	showCardIccid();
				    return;
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
			    } 
			 		/* //刷新数据表格
				    tableIns.reload( {page: {
				    	    curr: 1 //重新从第 1 页开始
				    	  }
				    });   */
				  }); 
		});
	});
</script>	
<script type="text/html" id="barTools">
  <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
</script>
<script type="text/javascript">
   $(function(){
   $("#building").click(function(){
   	     layui.use('layer',function(){
   	     		layer.open({
    	title:['建库','font-size:18px;font-weight:800;'],
   	 	type:1,
   	    area:['480px','480px'],
   	 	offset:['100px'],
   	 	content:$("#modal_AccountAllocation")
   	 })
   	     })
   	
    	
     
    })
    })
     function showCardIccid(){
        layui.use('layer',function(){
        	var layer=layui.layer
        	 layer.open({
        	 	type:1,
        	 	title:['卡号段','font-size:18px;'],
                area:['420px','200px'],
        	 	content:$('#CardIccid')
        	 })
        })
    }
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
</script>

</html>