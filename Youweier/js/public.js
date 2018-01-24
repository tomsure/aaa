

$(function(){

//商品列表开始
	$(".pic-modal").click(function(){  //查看图片

	layer.open({
		type:1,
		 content:"<div><img src='../img/indexBackground.jpeg' /></div>"
	})
})
	//新增
	 $('#addTable').click(function(){
	 	layui.use('layer',function(){
	 		var layer=layui.layer;
	 		layer.open({
	 			type:1,
	 			area:['480px','600px'],
	 			title:['新增商品信息',"font-size:18px;font-weight:800;"],
	 			content:$("#modalContent")
	 		})
	 	})
	 })
	
	
//商品列表结束
  //面额设置
      $('#denominationBtn').click(function(){
      	  layui.use('layer',function(){
      	  	 var layer=layui.layer;
      	  	      layer.open({
      	  	      	    type:1,
      	  	      	    title:['新增面额充值','font-size:18px;font-weight:700px;'],
      	  	      	    area:['400px','450px'],
      	  	      	    content:$('#denominationSetting')
      	  	      })
      	  })
      })
      
    //卡密设置
        $('#addGodsetBtn').click(function(){
      	  layui.use('layer',function(){
      	  	 var layer=layui.layer;
      	  	      layer.open({
      	  	      	    type:1,
      	  	      	    title:['新增卡密','font-size:18px;font-weight:700px;'],
      	  	      	    area:['400px','250px'],
      	  	      	    content:$('#addGodModal')
      	  	      })
      	  })
      })
        
    //经销商管理
      //经销商档案
      $('#addBtn').click(function(){
      	  layui.use('layer',function(){
      	  	 var layer=layui.layer;
      	  	      layer.open({
      	  	      	    type:1,
      	  	      	    title:['新增经销商','font-size:18px;font-weight:700;'],
      	  	      	    area:['400px','550px'],
      	  	      	    content:$('#addDlealer')
      	  	      })
      	  })
      })
 //卡片管理
     $('#add_btn').click(function(){
     	layui.use('layer',function(){
     		var layer=layui.layer;
     		   layer.open({
     		   	  title:['新增套餐','font-size:20px;font-weight:800'],
     		   	  type:1,
     		   	  area:['400px','600px'],
     		   	  content:$('#addModal')
     		   	  
     		   })
     	})
     })
   
  
  //套餐新增
    $('#packageAdd').click(function(){
   	   layui.use('layer',function(){
   	   	  var layer=layui.layer;
   	   	    layer.open({
   	   	    	type:1,
   	   	    	title:['新增套餐','font-size:18px;font-weight:800;'],
   	   	    	area:['400px','600px'],
   	   	    	content:$('#packageModalBox')
//               content:'1'
   	   	    })
   	   })
   })
   //返佣规则新增
   $('#rebateAdd').click(function(){
	   layui.use('layer',function(){
		   var layer=layui.layer;
		   layer.open({
			   type:1,
			   title:['新增返佣规则','font-size:18px;font-weight:800;'],
			   area:['400px','600px'],
			   content:$('#rebateModalBox')
//               content:'1'
		   })
	   })
   })
//库存管理
  //卡片库存列表
   
//实名认证
 //实名认证审核
   
 
 //财务管理
  //预存审核
   $(".viewPayPic").click(function(){
   	 layer.open({
   	 	title:["支付证明","font-size:20px;"],
   	 	type:1,
   	 	content:$("#PayPic")
   	 })
   })
   
//权限管理
  //员工权限分配
    
  //权限编辑
 $("#permissionEdit").click(function(){
   	 layer.open({
   	 	type:1,
   	 	content:$("#modal_AccountAllocation")
   	 })
 })
 
 //订单管理
 //经销商申请
   $('#dealetApply').click(function(){
   	   layui.use('layer',function(){
   	   	  var layer=layui.layer;
   	   	    layer.open({
   	   	    	type:1,
   	   	    	title:['申请','font-size:18px;font-weight:800;'],
   	   	    	area:['400px','600px'],
   	   	    	content:$('#modalBox')
//               content:'1'
   	   	    })
   	   })
   })
    $('#selectBtn').click(function(){
  	    layui.use('layer',function(){
  	    	 var layer=layui.layer;
  	    	    layer.open({
  	    	    	type:1,
  	    	    	area:['600px','300px'],
  	    	    	offset:['100px','400px'],
  	    	    	title:['选择经销商','font-size:18px;font-weight:800;'],
  	    	    	content:$('#selectDealer')
  	    	    })
  	    })
  })
 
  //预存申请
    $('#predepositBtn').click(function(){
    	layui.use('layer',function(){
    		var layer=layui.layer;
    		   layer.open({
  	    	    	type:1,
  	    	    	area:['300px','360px'],
  	    	    	
  	    	    	title:['新增预存申请','font-size:18px;font-weight:800;'],
  	    	    	content:$('#predeposit')
  	    	    })
    	})
    })
  
})
  