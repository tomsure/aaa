<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>实名认证审核</title>
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
		<script src="vendor/bootstrap/bootstrap-table.min.js"></script>
		<script src="vendor/layui/layui.js"></script>
		<script src="js/public.js" ></script>
		<style type="text/css">
			.modal_title {
				width:56px;
			}
		</style>
</head>
 
<body class="page-body">
    <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：卡片管理&gt;实名认证审核
        </h5>
	 <div class="filter_content">
	 	<form action="" method="post">
	 	   <div class="filter_content_top"  >
	 	   	<div class="usercode" >
	 	    	<span id="">
	 	    		ICCID/用户自编码
	 	    	</span><input type="text" name="" placeholder="查询ICCID/用户自编码" id="" value="" />	
	 	   	</div>
	 	    <div class="CustomerName" style="margin-left: 160px;">
	 	    	<span id="">
	 	    	客户名称
	 	    </span>
	 	     <input type="text" class="filter_input" name="" id="" placeholder="查询客户名称" value="" />
	 	    </div>
	 	 <div class="RealName" style="margin-left:50px;">
	 	 	 <span id="">
	 	  	实名名称
	 	  </span>
	 	  <input type="text" name="" class="filter_input" placeholder="查询真实名称" id="" value="" />
	 	 </div>
	 	 <div class="IdentificationNumber" style="margin-left: 60px;">
	 	 	 <span>证件号码</span>
	 	  <input type="text" name="" class="filter_input" placeholder="查询证件号码" id="" value="" />
	 	 </div>
	 	   <div  style="margin-left: 50px;">
	 	   	<button class="btn btn_reset">重置</button>
	 	   	<button class="btn btn_search">搜索</button>
	 	   </div>
	 	   </div>
	 	   	 <div class="RealNameSource" >
	 	   	 	<span>实名来源:</span>
	 	   	 	<select name="" id="">
	 	   	 		<option value="">全部</option>
	 	   	 		<option value="">WEB</option>
	 	   	 		<option value="">公众号</option>
	 	   	 		<option value="">后台实名</option>
	 	   	 	</select>
	 	   	 </div>
	 	   	 <div class="sex_select" style="margin-left:115px ;margin-right: 210px;">
	 	   	 	<span style="margin-right: 25px;">性别</span>
	 	   	 	<select name="" >
	 	   	 	<option value="sex01">男</option>
	 	   	 	<option value="sex02">女</option>
	 	   	 	</select>
	 	   	 </div>
	 	   	 <div class="RealNameTime" >
	 	   	   <span>
	 	   	     实名时间：
	 	   	   </span>
	 	   	 	  <input type="date" class="filter_input" name="" id="" value="" /> -
	 	   	     <input type="date" class="filter_input" name="" id="" value="" />
	 	   	 </div>
	 	</form>
	 </div>
	
 			<div class="filter_content_bottom" >
	 	   	<div class="filter_left_btn"  style="margin-right: 55px;">
	 	   	 
	 	   	 <button style="width: 70px;">通过</button>
	 	   	 <button style="width: 70px;" id="addAuthen">新增</button>
	 	   	 <button style="width: 70px;">修改</button>
	 	   	 <button style="width: 70px;">删除</button>
	 	   	  </div> 
	 	   </div>
       <!--contentBegin-->  
       <div class="ibox-content">

				<table id="authentication" class="table-hide" lay-data="{id: 'idCardAuthentication'}" lay-filter="authentication">
				</table>
       </div> 
       <!-- 新增表单 -->
       <div class="predepositModal" id="cardAuthentication" style="display: none;">
	
		<form class="layui-form" action="" id="form1">
		
			<input type="hidden" name="id" id="deliverId" value="" /> 
			<div >
   	   	 		<span class="input_title">实名类型</span>
   	   	 		<div class="layui-input-inline">
	   	   	 		<select name="type" id="">
		   	   	 		<option value="0" checked>卡片</option>
		   	   	 		<option value="1">设备</option>
		   	   	 		<option value="2">一体机</option>
	   	   	 		</select>
   	   	 		</div>
   	   		 </div>
   	   		 <div style="height:32px">
				<span class="input_title">实名来源</span>
				<div class="layui-input-inline">
					<input type="text" name="source"
					lay-verify="required" />
				</div>
			</div>
			<div style="height:32px">
				<span class="input_title">实名姓名</span><div class="layui-input-inline"><input type="text" name="realName"
					lay-verify="required" />
				</div>
			</div>
			<div>
   	   	 		<span class="input_title">性别</span>
   	   	 		<div class="layui-input-inline">
	   	   	 		<select name="sex" id="sex">
		   	   	 		<option value="0">男</option>
						<option value="1">女</option>
	   	   	 		</select>
   	   	 		</div>
   	   		 </div>
			<div style="height:32px">
				<span class="input_title">证件号码</span><div class="layui-input-inline"><input type="text" name="cardNum"
					lay-verify="required" />
			</div>
			</div>
			<div class="layui-upload">
			  <button type="button" class="layui-btn layui-btn-normal" id="testList">选择多文件</button> 
			  <div class="layui-upload-list">
			    <table class="layui-table">
			      <thead>
			        <tr><th>文件名</th>
			        <th>大小</th>
			        <th>状态</th>
			        <th>操作</th>
			      </tr></thead>
			      <tbody id="demoList"></tbody>
			    </table>
			  </div>
			  <button type="button" class="layui-btn" id="testListAction">开始上传</button>
			</div> 
			<input type="hidden" name="cardPic" id="cardPicId" lay-verify="required"/>
			<p style="height:32px"><span class="modal_title">IMEI</span><input type="text" name="imei" placeholder="IMEI" lay-verify="required"/></p>
   	      	<p style="height:32px"><span class="modal_title">ICCID</span><input type="text" name="iccid" placeholder="ICCID" lay-verify="required"/></p>
   	      	
			<div class="form_btn"  id="applyBtn" style="clear: left;">
				<button lay-submit class="btn btn_ok layui-btn-sm" lay-filter="formDemo">提交</button>
				<button class="btn btn_cancel layui-btn-sm">取消</button>
   	   	   	  <button type="reset" class="layui-btn layui-btn-primary layui-btn-sm">重置</button>
			</div>
		</form>
		
	</div>
</body>
<!-- 支付方式 -->
<script type="text/html" id="titleTpl1">
  {{#  if( d.sex === 0){ }}
   			男
  {{#  }else if( d.sex === 1){ }}
   			女
  {{#  } }}
</script>
<!-- 状态(0待审核,1审核通过,2未通过,3注销实名,4已注销))-->
<script type="text/html" id="titleTpl2">
  {{#  if( d.state === 0){ }}
   				待审核
  {{#  }else if( d.state === 1){ }}
   				审核通过
  {{#  }else if( d.state === 2){ }}
   				未通过
  {{#  }else if( d.state === 3){ }}
   				注销实名
  {{#  }else if( d.state === 4){ }}
   				已注销
  {{#  } }}
</script>
<script>
layui.use('upload', function(){
  var $ = layui.jquery
  ,upload = layui.upload;
				//多文件列表示例
  var demoListView = $('#demoList')
  ,uploadListIns = upload.render({
    elem: '#testList'
    ,url: 'attach/doUpload'
    ,data: {"title":"cardAuthenPic","belongId":$("#uploadId").data("id")?$("#uploadId").data("id"):""}
    ,accept: 'file'
    ,multiple: true
    ,auto: false
    ,bindAction: '#testListAction'
    ,choose: function(obj){   
      var files = this.files = obj.pushFile(); //将每次选择的文件追加到文件队列
      //读取本地文件
      obj.preview(function(index, file, result){
        var tr = $(['<tr id="upload-'+ index +'">'
          ,'<td>'+ file.name +'</td>'
          ,'<td>'+ (file.size/1014).toFixed(1) +'kb</td>'
          ,'<td>等待上传</td>'
          ,'<td>'
            ,'<button class="layui-btn layui-btn-mini demo-reload layui-hide">重传</button>'
            ,'<button class="layui-btn layui-btn-mini layui-btn-danger demo-delete">删除</button>'
          ,'</td>'
        ,'</tr>'].join(''));
        
        //单个重传
        tr.find('.demo-reload').on('click', function(){
          obj.upload(index, file);
        });
        
        //删除
        tr.find('.demo-delete').on('click', function(){
          delete files[index]; //删除对应的文件
          tr.remove();
          uploadListIns.config.elem.next()[0].value = ''; //清空 input file 值，以免删除后出现同名文件不可选
        });
        
        demoListView.append(tr);
      });
    }
    ,done: function(res, index, upload){
      if(res.code == 0){ //上传成功
    	  //绑定图片id到隐藏输入框
    	  debugger
    	  var imgId=res.data.id;
    	 var cardPic= $("#cardPicId").val()?$("#cardPicId").val():"";
    	 cardPic=cardPic?(cardPic+","+imgId):imgID;
    	 $("#cardPicId").val(cardPic);
    	 
        var tr = demoListView.find('tr#upload-'+ index)
        ,tds = tr.children();
        tds.eq(2).html('<span style="color: #5FB878;">上传成功</span>');
        tds.eq(3).html(''); //清空操作
        return delete this.files[index]; //删除文件队列已经上传成功的文件
      }
      this.error(index, upload);
    }
    ,error: function(index, upload){
      var tr = demoListView.find('tr#upload-'+ index)
      ,tds = tr.children();
      tds.eq(2).html('<span style="color: #FF5722;">上传失败</span>');
      tds.eq(3).find('.demo-reload').removeClass('layui-hide'); //显示重传
    }
  });
})
  </script>		
<script type="text/javascript">
	$(function(){
		var tableIns;
		//监听表单提交
		layui.use('form', function(){
			  var form = layui.form;
			  form.on('submit(formDemo)',function(){
				/* 
				*/
				var url="addCardAuthentication";
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
			/*   form.on('select(combofilter)', function(data){
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
			  	});    */ 
		});
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#authentication',
				url:'getCardAuthenticationList',
				id: 'idCardAuthentication',
				cellMinWidth:120,
				page:true,
				cols:[[     
				 {field:'id',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:80},
				 {field:'code','title':'客户名称',width:120,sort:true,edit:'text'},
				 {field:'type','title':'实名类型',width:120,sort:true},
				 {field:'source','title':'实名来源',width:120,sort:true,edit:'text'},
				 {field:'phone','title':'用户电话',width:120,sort:true,edit:'text'},
				 {field:'realName','title':'实名姓名',width:120,sort:true,edit:'text'},
				 {field:'sex','title':'性别',width:120,sort:true,templet: '#titleTpl1'},
				 {field:'cardNum','title':'证件号码',width:120,sort:true,edit:'text'},
				 {field:'cardPic','title':'图片',width:120,sort:true,templet: '#showCardPic'},
				 {field:'','title':'ICCID/IMEI',width:120,sort:true,templet: '#titleTpl3'},
				 {field:'','title':'用户自编码',width:180,sort:true,edit:'text'},
				 {field:'status','title':'状态',width:80,sort:true,templet: '#titleTpl2'},
				 {field:'auditUser','title':'实名工号',width:80,sort:true,edit:'text'},
				 {field:'auditDate','title':'实名时间',width:80,sort:true},
			     {fixed: 'right', title: '操作', align:'center',width:100, toolbar: '#barTools'}
				]],
			})
			//监听工具条
			  table.on('tool(authentication)', function(obj){
			    var data = obj.data;//得到所在行所有键值
			    //console.log(data);
			    // 显示号段
			    if(obj.event === 'showCardPic'){
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
			    	
			    	showCardPic();
				    return;
			    }
			    if(obj.event === 'showCardPic'){
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
			    	
			    	showCardPic();
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
  $(function (){
	//实名申请
	$("#addAuthen").click(function(){
		 layui.use('layer',function(){
			layer.open({
			    	title:['添加实名认证','font-size:18px;font-weight:800;'],
			   	 	type:1,
			   	    area:['400px','460px'],
			   	 	offset:['100px'],
		   	 		content:$("#cardAuthentication")
			})
	  	})
	})
  })
    
     function showCardPic(){
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
<script type="text/html" id="indexTpl">
   {{d.LAY_TABLE_INDEX+1}} 
</script>
<script type="text/html" id='showCardPic'>
	  <div id="">
	  	<a class="layui-btn layui-btn layui-btn-xs" lay-event="showCardPic">查看</a>
	  </div>
</script>
<script type="text/html" id='titleTpl3'>
	  <div id="">
	  	<a class="layui-btn layui-btn layui-btn-xs" lay-event="showICCIDIMEI">查看</a>
	  </div>
</script>
</html>
