$(function(){
	//用户信息开始
	     layui.use('table',function(){
	     	var table=layui.table;
	     	table.render({
	     		elem:'#userinfo',
//	     		url:'',
                width:'100%',
                height:'500px',
//              skin:'line',
//              skin:'row',
//              even:true,
                cols:[[
               {type:'checkbox'}
               ,{field:'serialNumber',templet: '#indexTpl',  width:120, title: '序号' }
                ,{field:'userNumber', width:120, title: '用户编号'}
              ,{field:'source', width:120, title: '实名来源'}
		      ,{field:'customerName', width:120, title: '客户名称', sort: true}
		      ,{field:'userPhone', width:120, title: '用户电话'}
		      ,{field:'realName', title: '实名姓名', width: 120, minWidth: 100} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
		      ,{field:'sex', title: '性别',width:120, sort: true}
		      ,{field:'IdentificationNumber',width:120, title: '证件号码', sort: true}
		      ,{field:'picture', width:80, title: '图片'}
		      ,{field:'iccid', width:120, title: 'ICCID'}
              ,{field:'userEncoding', width:120, title: '用户自编码'}
		      ,{field:'status', width:120, title: '状态', sort: true}
		      ,{ field:'AuthenticationTime',width:120,title:'实名时间'}
		      ,{field:'operation', width:120, title: '操作'}
                ]],
                  page:true,
                  data:[
                {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
                   ]
   	     	})
	     })
	//用户信息结束
	//设备实名认证开始
	     layui.use('table',function(){
	     	var table=layui.table;
	     	table.render({
	     		elem:'#deviceAuth',
//	     		url:'',
                width:'100%',
                height:'500px',
                cols:[[
                     {type:'checkbox'},
    		   {field:'serialNumber', templet: '#indexTpl', width:120, title: '序号' }
                     
    		   ,{field:'type', width:120, title: '实名类型'}
    		   ,{field:'source', width:120, title: '实名来源'}
    		   ,{field:'realName', title: '实名姓名', width: 120, minWidth: 100} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
    		   ,{field:'gender', title: '性别', sort: true}
    		   ,{field:'IdentificationNumber', title: '证件号码', sort: true}
    		   ,{field:'picture', title: '图片'}
    		   ,{field:'iccid', width:120, title: 'IMEI/ICCID/一体机' }
    		   ,{field:'status', width:120, title: '状态', sort: true}
    		   ,{ field:'AuthenticationTime',width:120,title:'实名时间'}
    		   ,{field:'jobnum', title: '工号'}
    		   
                ]]
	     	})
	     })
	//设备实名认证结束
	//实名认证审核开始
	layui.use('table',function(){
      var table=layui.table;
        table.render({
        	elem:'#auditTable',
//      	url:'',
            cellMinWidth:120,
            width:'100%',
            height:'500px',
            cols:[[
            {type:'checkbox'},
    		{field:'serialNumber',templet: '#indexTpl', width:120, title: '序号' },
    		{field:'userNumber',templet:'#templte2', width:120, title: '用户编号' }
            ,{field:'source', width:120, title: '实名来源'}
		      ,{field:'customerName', width:120, title: '客户名称', sort: true}
		      ,{field:'userPhone', width:120, title: '用户电话'}
		      ,{field:'realName', title: '实名姓名', width: 120, minWidth: 100} //minWidth：局部定义当前单元格的最小宽度，layui 2.2.1 新增
		      ,{field:'sex', title: '性别', sort: true}
		      ,{field:'IdentificationNumber' ,templet:'#templte2', title: '证件号码', sort: true}
		      ,{field:'picture',  title: '证件号码'}
		      ,{field:'iccid', width:120, title: 'ICCID'}
              ,{field:'userEncoding', width:120, title: '用户自编码'}
		      ,{field:'status', width:120, title: '状态', sort: true},
		      { field:'AuthenticationTime',width:120,title:'实名时间'}
		      ,{field:'operation', width:120, title: '操作'}
            ]],
            page:true,
            data:[
               {'serialNumber':''},
               {'title':'查看'}
             ]
        })
	})
	
	//实名认证审核结束
	//商品管理
	//商品列表开始
	     layui.use('table',function(){
			var table=layui.table;
			table.render({
				elem:'#demo',
//				url:'',
				cellMinWidth:120,
				cols:[[
				  {type:'checkbox'},
				  {field:'serialNumber',templet: '#indexTpl', 'title':'序号',width:80,sort:true},
				   {field:'commodityName','title':'商品名称',width:120,sort:true},
				    {field:'serialNumber','title':'金额',width:80,sort:true},
				 {field:'amount','title':'商品类型',width:120,sort:true},
				  {field:'','title':'套餐',width:80,sort:true},
				 {field:'','title':'运营商',width:120,sort:true},
				  {field:'','title':'APK版本号',width:80,sort:true},
				 {field:'','title':'颜色',width:120,sort:true},
				 {field:'shopType','title':'状态',width:80,sort:true},
				 {field:'picture',templet:'#viewTpl1' , 'title':'展示图片',width:140,sort:true},
				 {field:'detailPicture', templet:'#viewTpl2', 'title':'详情图片',width:120,sort:true},
				 {field:'picture','title':'链接接名称',width:80,sort:true},
				 {field:'linkName','title':'链接',width:120,sort:true},
				 {field:'link','title':'链接名称2',width:200,sort:true},
				 {field:'linkName2','title':'链接2',width:180,sort:true},
				 {field:'link2','title':'链接名称3',width:180,sort:true},
				 {field:'linkName3','title':'链接3',width:180,sort:true},
				
				 {field:'applicationActivity','title':'操作',width:120,sort:true},

				]],
				page:true,
				data:[ {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
]

			})
			
		})
	 //商品列表结束
	//面额充值
	 layui.use('table',function(){
 	  	var table=layui.table;
 	  	table.render({
 	  		elem:'#shopRecharge',
// 	  		url:'',
 	  		cols:[[
 	  		
 	  		  {type:'checkbox'}
             ,{field:'serialNumber',templet: '#indexTpl', width:120, title: '序号', sort: true}
      ,{field:'denomination', width:120, title: '面额名称'}
      ,{field:'RMB', width:120, title: '人民币', sort: true}
      ,{field:'status', width:120, title: '状态'}
      
      ,{field:'instructions', title: '点击说明', minWidth: 100}
      ,{field:'operation', width:120, title: '操作', sort: true}
           ]],
 	  		page:true,
 	  		data:[{
 	  		  'serialNumber':'1',
 	  		  'denomination':'100元',
 	  		  'RMB':'100元',
 	  		  'status':'上架',
 	  		  'applicationActivity':'活动名称',
 	  		  'activityType':'满赠',
 	  		  'amount':'10',
 	  		  'StagingToAccounts':'否',
 	  		  'stagingToAccountTime':'无',
 	  		  'accountAmount':'无',
 	  		  'activity':'无',
 	  		  'ArrivalTime':'无',
 	  		  'instructions':'充100',
 	  		  'operation':'<a>下架</a>/<a>修改</a>/<a>删除</a>',
 	  		}]
 	  	})
 	  })
	//面额充值结束
	//活动规则开始
	    layui.use('table',function(){
 	  	var table=layui.table;
 	  	table.render({
 	  		elem:'#shopRule',
// 	  		url:'',
 	  		cols:[[
 	  		
 	  		  {type:'checkbox'}
             ,{field:'serialNumber',templet: '#indexTpl', width:120, title: '序号', sort: true}
		      ,{field:'activityName', width:120, title: '活动名称'}
		      ,{field:'consumptionAmount', width:120, title: '消费金额', sort: true}
		      ,{field:'type', width:120, title: '类型'}
		      ,{field:'amount', title: '金额', minWidth: 100}
		      ,{field:'stagingToAccounts', width:120, title: '分期到账', sort: true}
		      ,{field:'stagingToAccountTime', width:120, title: '分期到账时间', sort: true}
		      ,{field:'monthlyAccountAmount', width:120, title: '单月到账金额'}
		      ,{field:'activeActivity', width:120, title: '活动有效期', sort: true}
		      ,{field:'monthlyArrivalTime', width:120, title: '每月到账时间'}
		      ,{field:'status', width:120, title: '状态', sort: true}
		      ,{field:'operation', width:120, title: '操作', sort: true}
           ]],
 	  		page:true,
 	  		data:[{
 	  		  'serialNumber':'1',
 	  		  'denomination':'100元',
 	  		  'RMB':'100元',
 	  		  'status':'上架',
 	  		  'applicationActivity':'活动名称',
 	  		  'activityType':'满赠',
 	  		  'amount':'10',
 	  		  'StagingToAccounts':'否',
 	  		  'stagingToAccountTime':'无',
 	  		  'accountAmount':'无',
 	  		  'activity':'无',
 	  		  'ArrivalTime':'无',
 	  		  'instructions':'充100',
 	  		  'operation':'<a>下架</a>/<a>修改</a>/<a>删除</a>',
 	  		}]
 	  	})
 	  })
	//活动规则结束
	//商品订单开始
	   layui.use('table',function(){
	   	   var table=layui.table;
	   	        table.render({
	   	        	elem:'#orderList',
//	   	        	url:'',
                     cols:[[
                       {type:'checkbox'},
                       {field:'serialNumber', templet: '#indexTpl', width:120, title: '序号' }
			          ,{field:'commodityName', width:120, title: '商品名称',sort:true}
				      ,{field:'amount', width:120, title: '金额', sort: true}
				      ,{field:'commodityType', width:120, title: '商品类型',sort:true}
				      ,{field:'discount', width:120, title:'优惠' , sort:true} 
				      ,{field:'amountOfPayment', width:120, title: '实付金额',sort:true}
				      ,{field:'RuleName', width:120, title: '规则名称', sort: true}
				      ,{field:'OrderNumber', width:120, title: '订单编号' ,sort:true}
				      ,{field:'address', width:120, title:'收件人地址', sort:true} 
				      ,{field:'Addressee', width:120, title: '收件人',sort:true}
				      ,{field:'AddresseePhone', width:120, title: '收件人电话', sort: true}
				      ,{field:'status', width:120, title: '状态' ,sort:true}
				      ,{field:'singleUser', width:120, title: '下单用户', sort: true}
				      ,{field:'source', width:120, title: '来源' ,sort:true}
				      ,{field:'OrderTime', width:120, title:'订单时间', sort:true} 
				      ,{field:'Cancelling', width:120, title: '取消人',sort:true}
				      ,{field:'CancellingCause', width:120, title: '取消原因', sort: true}
                      ,{field:'operation', width:120, title: '操作'}
                        
                     
 	  		         
                     ]],
                     page:true,
                     data:[
   {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
                     ]
                     
                     
	   	        })
	   })
	//商品订单结束
	//商品出库订单
	      layui.use('table',function(){
	   	   var table=layui.table;
	   	        table.render({
	   	        	elem:'#exportOrders',
//	   	        	url:'',
                     cols:[[
                       {type:'checkbox'},
                       {field:'serialNumber', templet: '#indexTpl', width:120, title: '序号' }
			          ,{field:'commodityName', width:120, title: '商品名称',sort:true}
				      ,{field:'amount', width:120, title: '金额', sort: true}
				      ,{field:'commodityType', width:120, title: '商品类型',sort:true}
				      ,{field:'discount', width:120, title:'优惠' , sort:true} 
				      ,{field:'amountOfPayment', width:120, title: '实付金额',sort:true}
				      ,{field:'RuleName', width:120, title: '规则名称', sort: true}
				      ,{field:'OrderNumber', width:120, title: '订单编号' ,sort:true}
				      ,{field:'address', width:120, title:'收件人地址', sort:true} 
				      ,{field:'Addressee', width:120, title: '收件人',sort:true}
				      ,{field:'AddresseePhone', width:120, title: '收件人电话', sort: true}
				      ,{field:'status', width:120, title: '状态' ,sort:true}
				      ,{field:'singleUser', width:120, title: '卡片/设备号', sort: true}
				       ,{field:'userPhone', width:120, title: '用户手机号' ,sort:true}
				       ,{field:'source', width:120, title: '来源' ,sort:true}
				        ,{field:'OutageTime', width:120, title: '出库时间' ,sort:true}
                       ,{field:'Cancelling', width:120, title: '取消人',sort:true}
				      ,{field:'CancellingCause', width:120, title: '取消原因', sort: true}
                      ,{field:'operation', width:120, title: '操作'}
                        
                     
 	  		         
                     ]],
                     page:true,
                     data:[
   {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
                     ]
                     
                     
	   	        })
	   })
	//商品出库订单结束
	//商品发货订单
	 layui.use('table',function(){
	   	   var table=layui.table;
	   	        table.render({
	   	        	elem:'#delivery',
//	   	        	url:'',
                     cols:[[
                       {type:'checkbox'},
                       {field:'serialNumber', templet: '#indexTpl', width:120, title: '序号' }
			          ,{field:'commodityName', width:120, title: '商品名称',sort:true}
				      ,{field:'amount', width:120, title: '金额', sort: true}
				      ,{field:'commodityType', width:120, title: '商品类型',sort:true}
				      ,{field:'discount', width:120, title:'优惠' , sort:true} 
				      ,{field:'amountOfPayment', width:120, title: '实付金额',sort:true}
				      ,{field:'RuleName', width:120, title: '规则名称', sort: true}
				      ,{field:'OrderNumber', width:120, title: '订单编号' ,sort:true}
				      ,{field:'address', width:120, title:'收件人地址', sort:true} 
				      ,{field:'Addressee', width:120, title: '收件人',sort:true}
				      ,{field:'AddresseePhone', width:120, title: '收件人电话', sort: true}
				      ,{field:'status', width:120, title: '状态' ,sort:true}
				      ,{field:'CardOrdeviceNumber', width:120, title: '卡片/设备号', sort: true}
				       ,{field:'userPhone', width:120, title: '用户手机号' ,sort:true}
				       ,{field:'source', width:120, title: '来源' ,sort:true}
				        ,{field:'OutageTime', width:120, title: '出库时间' ,sort:true}
				         ,{field:'expressCompany', width:120, title: '快递公司',sort:true}
				      ,{field:'CourierNumber', width:120, title: '快递单号', sort: true}
                       ,{field:'ExpressFee', width:120, title: '快递费',sort:true}
				      ,{field:'Operator', width:120, title: '操作人', sort: true}
				      ,{field:'CancellingCause', width:120, title: '退货原因', sort: true}
				      ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
                        
                     
 	  		         
                     ]],
                     page:true,
                     data:[
   {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
                     ]
                     
                     
	   	        })
	   })
	//商品发货订单结束
	 	
	
	//商品退货订单
	  layui.use('table',function(){
	   	   var table=layui.table;
	   	        table.render({
	   	        	elem:'#commodityReturn',
//	   	        	url:'',
                     cols:[[
                       {type:'checkbox'},
                       {field:'serialNumber', templet: '#indexTpl', width:120, title: '序号' }
			          ,{field:'commodityName', width:120, title: '商品名称',sort:true}
				      ,{field:'amount', width:120, title: '金额', sort: true}
				      ,{field:'commodityType', width:120, title: '商品类型',sort:true}
				      ,{field:'discount', width:120, title:'优惠' , sort:true} 
				      ,{field:'amountOfPayment', width:120, title: '实付金额',sort:true}
				      ,{field:'RuleName', width:120, title: '规则名称', sort: true}
				      ,{field:'OrderNumber', width:120, title: '订单编号' ,sort:true}
				      ,{field:'address', width:120, title:'收件人地址', sort:true} 
				      ,{field:'Addressee', width:120, title: '收件人',sort:true}
				      ,{field:'AddresseePhone', width:120, title: '收件人电话', sort: true}
				      ,{field:'status', width:120, title: '状态' ,sort:true}
				      ,{field:'CardOrdeviceNumber', width:120, title: '卡片/设备号', sort: true}
				       ,{field:'userPhone', width:120, title: '用户手机号' ,sort:true}
				       ,{field:'source', width:120, title: '来源' ,sort:true}
				        ,{field:'OutageTime', width:120, title: '出库时间' ,sort:true}
				         ,{field:'expressCompany', width:120, title: '快递公司',sort:true}
				      ,{field:'CourierNumber', width:120, title: '快递单号', sort: true}
                       ,{field:'ExpressFee', width:120, title: '快递费',sort:true}
				      ,{field:'Operator', width:120, title: '操作人', sort: true}
				      ,{field:'CancellingCause', width:120, title: '退货原因', sort: true}
				      ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
                     ]],
                     page:true,
                     data:[
   {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
                     ]
                     
                     
	   	        })
	   })
	//商品退货订单结束
	
	//商品取消订单
	 layui.use('table',function(){
	   	   var table=layui.table;
	   	        table.render({
	   	        	elem:'#dealerOrderReview',
//	   	        	url:'',
                     cols:[[
                       {type:'checkbox'},
                       {field:'serialNumber', templet: '#indexTpl', width:120, title: '序号' }
			          ,{field:'commodityName', width:120, title: '商品名称',sort:true}
				      ,{field:'amount', width:120, title: '金额', sort: true}
				      ,{field:'commodityType', width:120, title: '商品类型',sort:true}
				      ,{field:'discount', width:120, title:'优惠' , sort:true} 
				      ,{field:'amountOfPayment', width:120, title: '实付金额',sort:true}
				      ,{field:'RuleName', width:120, title: '规则名称', sort: true}
				      ,{field:'OrderNumber', width:120, title: '订单编号' ,sort:true}
				      ,{field:'address', width:120, title:'收件人地址', sort:true} 
				      ,{field:'Addressee', width:120, title: '收件人',sort:true}
				      ,{field:'AddresseePhone', width:120, title: '收件人电话', sort: true}
				      ,{field:'status', width:120, title: '状态' ,sort:true}
				      ,{field:'CardOrdeviceNumber', width:120, title: '卡片/设备号', sort: true}
				       ,{field:'userPhone', width:120, title: '用户手机号' ,sort:true}
				       ,{field:'source', width:120, title: '来源' ,sort:true}
				        ,{field:'OutageTime', width:120, title: '出库时间' ,sort:true}
				         ,{field:'expressCompany', width:120, title: '快递公司',sort:true}
				      ,{field:'CourierNumber', width:120, title: '快递单号', sort: true}
                       ,{field:'ExpressFee', width:120, title: '快递费',sort:true}
				      ,{field:'Operator', width:120, title: '操作人', sort: true}
				      ,{field:'CancellingCause', width:120, title: '取消原因', sort: true}
                      ,{field:'operation', width:120, title: '操作'}
                        
                     
 	  		         
                     ]],
                     page:true,
                     data:[
   {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
                     ]
                     
                     
	   	        })
	   })
	//商品取消订单结束
	
//订单管理
  //经销商申请
     layui.use('table',function(){
	   	   var table=layui.table;
	   	        table.render({
	   	        	elem:'#dealerApplyTable',
//	   	        	url:'',
                     cols:[[
                       {type:'checkbox'},
                       {field:'serialNumber', templet: '#indexTpl', width:120, title: '序号' }
			          ,{field:'purchaseSingleNumber', width:120, title: '采购单号',sort:true}
				      ,{field:'landingBusiness', width:120, title: '落地商', sort: true}
				      ,{field:'quantity', width:120, title: '数量',sort:true}
				      ,{field:'orderAmount', width:120, title:'订单金额' , sort:true} 
				      ,{field:'maidType', width:120, title: '返佣类型',sort:true}
//				      ,{field:'maidRule', width:120, title: '返佣规则' ,sort:true}
				           ,{field:'amountOfRemaid', width:120, title: '返佣金额', sort: true}
				      ,{field:'paymentMethod', width:120, title: '支付方式',sort:true}
//				      ,{field:'proofOfPayment', width:120, title: '支付证明', sort: true}
				      ,{field:'PurchaseType', width:120, title: '采购类型' ,sort:true}
				      ,{field:'', width:120, title:'运营商', sort:true} 
				      ,{field:'', width:120, title: '流量套餐',sort:true}
				      ,{field:'APK', width:120, title: 'APK版本号', sort: true}
				      ,{field:'color', width:120, title: '颜色' ,sort:true}
				      ,{field:'', width:120, title: '经销商名称', sort: true}
				        ,{field:'', width:120, title: '身份', sort: true}
				       ,{field:'proposer', width:120, title: '申请人' ,sort:true}
				       ,{field:'source', width:120, title: '申请时间' ,sort:true}
				        
				    
                       ,{field:'status', width:120, title: '状态',sort:true}
//				      ,{field:'Auditor', width:120, title: '审核人', sort: true}
//				      ,{field:'auditTime', width:120, title: '审核时间', sort: true}
//				       ,{field:'dismissal', width:120, title: '驳回人', sort: true}
				  
				      ,{field:'dismissalReason', width:120, title: '驳回原因', sort: true}
//				       ,{field:'dismissalTime', width:120, title: '驳回时间' ,sort:true}
				     
                      ,{field:'operation', width:120, title: '操作'}
                        
                     
 	  		         
                     ]],
                     page:true,
                     data:[
   {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
                     ]
                     
                     
	   	        })
	   })
//经销商采购订单审核
 layui.use('table',function(){
	   	   var table=layui.table;
	   	        table.render({
	   	        	elem:'#dealerOrderReview',
//	   	        	url:'',
                     cols:[[
                       {type:'checkbox'},
                       {field:'serialNumber', templet: '#indexTpl', width:120, title: '序号' }
			          ,{field:'purchaseSingleNumber', width:120, title: '采购单号',sort:true}
				      ,{field:'landingBusiness', width:120, title: '落地商', sort: true}
				      ,{field:'quantity', width:120, title: '数量',sort:true}
				      ,{field:'orderAmount', width:120, title:'订单金额' , sort:true} 
				      ,{field:'paymentMethod', width:120, title: '支付方式',sort:true}
				      ,{field:'proofOfPayment', width:120, title: '支付证明', sort: true}
				      ,{field:'PurchaseType', width:120, title: '采购类型' ,sort:true}
				      ,{field:'flowPackage', width:120, title:'流量套餐', sort:true} 
				      ,{field:'setMealDescription', width:120, title: '套餐描述',sort:true}
				      ,{field:'dealerName', width:120, title: '经销商名称', sort: true}
				      ,{field:'accountBalance', width:120, title: '账户余额' ,sort:true}
				      ,{field:'creditLine', width:120, title: '信用额度', sort: true}
				       ,{field:'proposer', width:120, title: '申请人' ,sort:true}
				       ,{field:'source', width:120, title: '申请时间' ,sort:true}
				        ,{field:'maidRule', width:120, title: '返佣规则' ,sort:true}
				         ,{field:'maidType', width:120, title: '返佣类型',sort:true}
				      ,{field:'amountOfRemaid', width:120, title: '返佣金额', sort: true}
                       ,{field:'status', width:120, title: '状态',sort:true}
				      ,{field:'Auditor', width:120, title: '审核人', sort: true}
				      ,{field:'auditTime', width:120, title: '审核时间', sort: true}
				       ,{field:'dismissal', width:120, title: '驳回人', sort: true}
				  
				      ,{field:'dismissalReason', width:120, title: '驳回原因', sort: true}
				       ,{field:'dismissalTime', width:120, title: '驳回时间' ,sort:true}
				     
                      ,{field:'operation', width:120, title: '操作'}
                        
                     
 	  		         
                     ]],
                     page:true,
                     data:[
   {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
                     ]
                     
                     
	   	        })
	   })
//经销商采购订单审核结束
    //采购单发货
      layui.use('table',function(){
	   	   var table=layui.table;
	   	        table.render({
	   	        	elem:'#delivery',
//	   	        	url:'',
                     cols:[[
                       {type:'checkbox'},
                       {field:'serialNumber', templet: '#indexTpl', width:120, title: '序号' }
			          ,{field:'', width:120, title: '采购单号',sort:true}
				      ,{field:'', width:120, title: '运营商', sort: true}
				      ,{field:'', width:120, title: '数量',sort:true}
				      ,{field:'', width:120, title:'订单金额' , sort:true} 
				      ,{field:'', width:120, title: '折扣',sort:true}
				      ,{field:'', width:120, title: '支付方式', sort: true}
				      ,{field:'', width:120, title: '采购类型' ,sort:true}
				      ,{field:'', width:120, title:'运营商', sort:true} 
				      ,{field:'', width:120, title: '流量套餐',sort:true}
				      ,{field:'', width:120, title: 'APK版本号', sort: true}
				      ,{field:'', width:120, title: '颜色' ,sort:true}
				      ,{field:'', width:120, title: '经销商名称', sort: true}
				       ,{field:'', width:120, title: '身份' ,sort:true}
				       ,{field:'', width:120, title: '套餐描述' ,sort:true}
				        ,{field:'', width:120, title: '申请人' ,sort:true}
				         ,{field:'', width:120, title: '申请时间',sort:true}
				      ,{field:'', width:120, title: '状态', sort: true}
                       ,{field:'', width:120, title: '审核人',sort:true}
				      ,{field:'', width:120, title: '出库人', sort: true}
				      ,{field:'', width:120, title: '确认人', sort: true}
	
                      ,{field:'', width:120, templet:"#templet2", title: '操作'}
                        
                     
 	  		         
                     ]],
                     page:true,
                     data:[
   {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
                     ]
                     
                     
	   	        })
	   })
     
    //采购单发货
    //出库采购单
      layui.use('table',function(){
	   	   var table=layui.table;
	   	        table.render({
	   	        	elem:'#purchaseOrder',
//	   	        	url:'',
                     cols:[[
                       {type:'checkbox'},
                       {field:'serialNumber', templet: '#indexTpl', width:120, title: '序号' }
			          ,{field:'purchaseSingleNumber', width:120, title: '采购单号',sort:true}
				      ,{field:'landingBusiness', width:120, title: '运营商', sort: true}
				      ,{field:'quantity', width:120, title: '数量',sort:true}

				      ,{field:'PurchaseType', width:120, title: '订单金额' ,sort:true}
				      ,{field:'flowPackage', width:120, title:'返佣类型', sort:true} 
				      ,{field:'setMealDescription', width:120, title: '描述',sort:true}
				      ,{field:'dealerName', width:120, title: '支付方式', sort: true}

				          ,{field:'proposer', width:120, title: '采购类型' ,sort:true}
				          ,{field:'applicationTime', width:120, title: '运营商' ,sort:true}
				         ,{field:'Auditor', width:120, title: '流量套餐',sort:true}
				          ,{field:'AuditTime', width:120, title: 'APK版本号', sort: true}
				            ,{field:'status', width:120, title: '颜色',sort:true}			
				      ,{field:'OutagePerson', width:120, title: '经销商名称', sort: true}
				      ,{field:'OutageTime', width:120, title: '身份', sort: true}
                    	       ,{field:'details', width:120, title: '套餐描述',sort:true}
                       ,{field:'OutageTime1', width:120, title: '申请人', sort: true}
				         ,{field:'Auditor', width:120, title: '申请时间',sort:true}
				          ,{field:'AuditTime', width:120, title: '状态', sort: true}
				            ,{field:'status', width:120, title: '审核人',sort:true}			
				      ,{field:'OutagePerson', width:120, title: '出库人', sort: true}
				      ,{field:'OutageTime', width:120, title: '驳回原因', sort: true}
                    	       ,{field:'details', templet:"#templet2" ,width:120, title: 'ICCID/IMEI/一体机',sort:true}
                    
                      ,{field:'operation', width:120, templet:'#templet3', title: '操作'}
                        ]],
                     page:true,
                     data:[
   {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
                     ]
                     
                     
	   	        })
	   })
    //出库采购单
  //历史采购明细
   layui.use('table',function(){
	   	   var table=layui.table;
	   	        table.render({
	   	        	elem:'#hisPurchaseDetail',
//	   	        	url:'',
                     cols:[[
                       {type:'checkbox'},
                       {field:'serialNumber', templet: '#indexTpl', width:120, title: '序号' }
			          ,{field:'purchaseSingleNumber', width:120, title: '采购单号',sort:true}
				      ,{field:'landingBusiness', width:120, title: '落地商', sort: true}
				      ,{field:'quantity', width:120, title: '数量',sort:true}
				      ,{field:'orderAmount', width:120, title:'订单金额' , sort:true} 
				      ,{field:'paymentMethod', width:120, title: '支付方式',sort:true}
				      ,{field:'proofOfPayment', width:120, title: '支付证明', sort: true}
				      ,{field:'PurchaseType', width:120, title: '采购类型' ,sort:true}
				      ,{field:'flowPackage', width:120, title:'流量套餐', sort:true} 
				      ,{field:'setMealDescription', width:120, title: '套餐描述',sort:true}
				      ,{field:'dealerName', width:120, title: '经销商名称', sort: true}
				      
				        ,{field:'maidRule', width:120, title: '返佣规则' ,sort:true}
				         ,{field:'maidType', width:120, title: '返佣类型',sort:true}
				      ,{field:'amountOfRemaid', width:120, title: '返佣金额', sort: true}
				          ,{field:'proposer', width:120, title: '申请人' ,sort:true}
				         ,{field:'Auditor', width:120, title: '审核人',sort:true}
				      ,{field:'Consignor', width:120, title: '发货人', sort: true}
                       ,{field:'status', width:120, title: '状态',sort:true}
				      ,{field:'expressCompany', width:120, title: '快递公司', sort: true}
				      ,{field:'CourierNumber', width:120, title: '快递单号', sort: true}
				       ,{field:'Addressee', width:120, title: '收件人', sort: true}
				                 
				      ,{field:'AddresseePhone', width:120, title: '收件人电话', sort: true}
				       ,{field:'address', width:120, title: '地址' ,sort:true}
				         ,{field:'freight', width:120, title: '运费' ,sort:true}
                      ,{field:'operation', width:120, title: '操作'}
                        
                     
 	  		         
                     ]],
                     page:true,
                     data:[
   {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
                     ]
                     
                     
	   	        })
	   })
  //历史采购明细结束
     //采购单确认
     layui.use('table',function(){
	   	   var table=layui.table;
	   	        table.render({
	   	        	elem:'#orderConfirmation',
//	   	        	url:'',
                     cols:[[
                       {type:'checkbox'},
                       {field:'serialNumber', templet: '#indexTpl', width:120, title: '序号' }
			          ,{field:'purchaseSingleNumber', width:120, title: '采购单号',sort:true}
				      ,{field:'landingBusiness', width:120, title: '落地商', sort: true}
				      ,{field:'quantity', width:120, title: '数量',sort:true}

				      ,{field:'PurchaseType', width:120, title: '采购类型' ,sort:true}
				      ,{field:'flowPackage', width:120, title:'流量套餐', sort:true} 
				      ,{field:'setMealDescription', width:120, title: '套餐描述',sort:true}
				      ,{field:'dealerName', width:120, title: '经销商名称', sort: true}
			         ,{field:'maidType', width:120, title: '返佣类型',sort:true}
				      ,{field:'amountOfRemaid', width:120, title: '返佣金额', sort: true}
				          ,{field:'proposer', width:120, title: '申请人' ,sort:true}
				          ,{field:'applicationTime', width:120, title: '申请时间' ,sort:true}
				         ,{field:'Auditor', width:120, title: '审核人',sort:true}
				          ,{field:'AuditTime', width:120, title: '审核时间', sort: true}
				      ,{field:'OutagePerson', width:120, title: '出库人', sort: true}
				      ,{field:'OutageTime', width:120, title: '出库时间', sort: true}
                      ,{field:'status', width:120, title: '状态',sort:true}				     
                       ,{field:'dismissalReason', width:120, title: '驳回原因', sort: true}
				       ,{field:'dismissal', width:120, title: '驳回人', sort: true}
                        ,{field:'deliveryTime', width:120, title: '发货时间' ,sort:true}
                      ,{field:'operation', width:120, title: '操作'}
                        ]],
                     page:true,
                     data:[
   {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
                     ]
                     
                     
	   	        })
	   })
     
     
     //待出库采购单结束
     
     //预存申请
         layui.use('table',function(){
	   	   var table=layui.table;
	   	        table.render({
	   	        	elem:'#preDepositApplication',
//	   	        	url:'',
                     cols:[[
                          {type:'checkbox'},
                       {field:'serialNumber',templet: '#indexTpl', width:120, title: '序号' }
				      ,{field:'storageNumber', width:120, title: '预存单号',sort:true}
				      ,{field:'reserveAmount', width:120, title: '预存金额', sort: true}
//				      ,{field:'arrivalWay', width:120, title: '到账方式' , sort:true}
				      ,{field:'paymentMethod', width:120, title:'支付方式',  sort:true} 
				       ,{field:'proofPfPayment', width:120, title: '支付证明',sort:true}
				      ,{field:'status', width:120, title: '状态',sort:true}			
				      ,{field:'proposer', width:120, title: '申请人' ,sort:true}
				      ,{field:'applicationTime', width:120, title: '申请时间' ,sort:true}
				      ,{field:'Auditor', width:120, title: '审核人',sort:true}
				      ,{field:'AuditTime', width:120, title: '审核时间', sort: true}
				      ,{field:'dismissal', width:120, title: '驳回人' ,sort:true}
				      ,{field:'dismissCause', width:120, title: '驳回原因', sort: true}
	                  ,{field:'operation', width:120, title: '操作'}
                      
                        ]],
                     page:true,
                     data:[
   {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
                     ]
                     
                     
	   	        })
	   })
     //预存金额申请结束
     
     //故障申报
      layui.use('table',function(){
	   	   var table=layui.table;
	   	        table.render({
	   	        	elem:'#failureDeclaration',
//	   	        	url:'',
                     cols:[[
                          {type:'checkbox'},
                       {field:'serialNumber',templet: '#indexTpl', width:120, title: '序号' }
				      ,{field:'storageNumber', width:120, title: '预存单号',sort:true}
				      ,{field:'reserveAmount', width:120, title: '预存金额', sort: true}
				      ,{field:'arrivalWay', width:120, title: '到账方式' , sort:true}
				      ,{field:'paymentMethod', width:120, title:'支付方式',  sort:true} 
				       ,{field:'proofPfPayment', width:120, title: '支付证明',sort:true}
				      ,{field:'status', width:120, title: '状态',sort:true}			
				      ,{field:'proposer', width:120, title: '申请人' ,sort:true}
				      ,{field:'applicationTime', width:120, title: '申请时间' ,sort:true}
				      ,{field:'Auditor', width:120, title: '审核人',sort:true}
				      ,{field:'AuditTime', width:120, title: '审核时间', sort: true}
				      ,{field:'dismissal', width:120, title: '驳回人' ,sort:true}
				      ,{field:'dismissCause', width:120, title: '驳回原因', sort: true}
	                  ,{field:'operation', width:120, title: '操作'}
                      
                        ]],
                     page:true,
                      data:[
   {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
                     ]
                     
                     
	   	        })
	   })
     //故障申报结束
})
//卡片管理
//我的卡片开始
  layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#myCard',
  		page:true,
  		cols:[[
  		     {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
  		     		  ,{field:'', width:120, title: '类型',sort:true}
  		     		  ,{field:'', width:120, title: 'IMEI',sort:true}
  		     		  ,{field:'', width:120, title: 'ICCID', sort: true}
				      ,{field:'', width:120, title: '用户自编码',sort:true}
				      ,{field:'', width:120, title: '运营商' , sort:true}
				      ,{field:'', width:120, title: '归属地' , sort:true}
				      ,{field:'', width:120, title:'卡片状态',  sort:true} 
				       ,{field:'', width:120, title: '实名状态',sort:true}
				      ,{field:'', width:120, title: '流量套餐', sort: true}
				      ,{field:'', width:120, title: '已用流量' ,sort:true}
				      ,{field:'', width:120, title:'剩余流量', sort:true} 
				       ,{field:'', width:120, title: '有效期',sort:true}
				      ,{field:'', width:120, title: '发卡时间', sort: true}
				      ,{field:'', width:120, title: '激活时间', sort: true}
				      ,{field:'', width:120, title: '客户名称', sort: true}
				      ,{field:'', width:120, templet:'#templte2',  title: '操作记录' , sort:true}
				     ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
  		
  		]],
  		height:'500px',
  		data:[
  		 {  
  		 	'title':'查看'
  		 },
  		  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })
//我的卡片结束

    //卡片设备信息开始
       layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#myDevice',
  		page:true,
  		cols:[[
  		     {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '类型',sort:true}
				      ,{field:'', width:120, title: 'IMME', sort: true}
				      ,{field:'', width:120, title: 'ICCID', sort: true}
				      ,{field:'', width:120, title: '运营商' , sort:true}
				      ,{field:'', width:120, title:'归属地',  sort:true} 
				       ,{field:'', width:120, title: '卡片状态',sort:true}
				      ,{field:'', width:120, title: '实名状态', sort: true}
				      ,{field:'', width:120, title: '流量套餐' ,sort:true}
				      ,{field:'', width:120, title:'已用流量', sort:true} 
				       ,{field:'', width:120, title: '剩余流量',sort:true}
				      ,{field:'', width:120, title: '有效期', sort: true}
				      ,{field:'', width:120, title: '发卡时间' ,sort:true}
				       ,{field:'', width:120, title: '激活时间', sort: true}
				     
				        ,{field:'', width:120, title: '客户名称', sort: true}
				      ,{field:'', width:120, templet:'#templte2',  title: '操作记录' , sort:true}
				     
                      ,{field:'operation', width:120, title: '操作'}
  		
  		]],
  		height:'500px',
  		data:[
  		 {  
  		 	'title':'查看'
  		 },
  		  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })
    //卡片设备信息结束
    //断网规则
       layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#packageSetTable',
  		page:true,
  		cols:[[
  		       {type:'checkbox'},
                       {field:'serialNumber', templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '套餐群组',sort:true}
				      ,{field:'', width:120, title: '套餐名称', sort: true}
				      ,{field:'', width:120, title: '套餐总量' , sort:true}
				      ,{field:'', width:120, title:'有效期',  sort:true} 
				       ,{field:'', width:120, title: '能否更改套餐类型',sort:true}
				      ,{field:'', width:120, title: '限速（上）', sort: true}
				      ,{field:'', width:120, title: '限速（下）' ,sort:true}
				      ,{field:'', width:120, title:'套餐描述', sort:true} 
				       ,{field:'', width:120, title: '创建时间',sort:true}
				      
                      ,{field:'operation', width:120, title: '操作'}
  		
  		]],
  		height:'500px',
  		data:[
  		
  		  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })
    //断网规则结束
     
     //套餐规则
      layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#breakNetRule',
  		page:true,
  		cols:[[
  		     {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '规则名称',sort:true}
				      ,{field:'', width:120, title: '限速阀值', sort: true}
				      ,{field:'', width:120, title: '限速（上）kb', sort: true}
				      ,{field:'', width:120, title: '限速（下）kb' , sort:true}
				      ,{field:'', width:120, title:'适用类型',  sort:true} 
				     
                      ,{field:'operation', width:120, title: '操作'}
  		
  		]],
  		height:'500px',
  		data:[
  		 {  
  		 	
  		 },
  		  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })
      //套餐群组
        layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#packgeGroup',
  		page:true,
  		cols:[[
  		       {type:'checkbox'},
                       {field:'serialNumber', templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '套餐群组',sort:true}
				      ,{field:'', width:120, title: '有效期', sort: true}
				      
				      
                      ,{field:'operation', width:120, title: '操作'}
  		
  		]],
  		height:'500px',
  		data:[
  		
  		  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })
     //套餐设置
       layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#packageSetTable',
  		page:true,
  		cols:[[
  		       {type:'checkbox'},
                       {field:'serialNumber', templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '套餐群组',sort:true}
				      ,{field:'', width:120, title: '套餐名称', sort: true}
				      ,{field:'', width:120, title: '套餐总量' , sort:true}
				      ,{field:'', width:120, title:'有效期',  sort:true} 
				       ,{field:'', width:120, templet:'#viewTpl1', title: '能否更改套餐类型',sort:true}
				      ,{field:'', width:120, title: '变更次数', sort: true}
                      ,{field:'operation', width:120, title: '操作'}
  		
  		]],
  		height:'500px',
  		data:[
  		
  		  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })
     
     
  //充值缴费
     layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#chargePayment',
  		page:true,
  		cols:[[
  		       {type:'checkbox'},
                       {field:'serialNumber', templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '订单号',sort:true}
				      ,{field:'', width:120, title: '充值来源', sort: true}
				      ,{field:'', width:120, title: '支付方式', sort: true}
				      ,{field:'', width:120, title: '支付单号', sort: true}
				      ,{field:'', width:120, title: '实名姓名', sort: true}
				      ,{field:'', width:120, title: '购买类型', sort: true}
				      ,{field:'', width:120, title: '充值金额', sort: true}
				      ,{field:'', width:120, title: '返佣类型', sort: true}
				      ,{field:'', width:120, title: '返回值', sort: true}
				      ,{field:'', width:120, title: 'ICCCID', sort: true}
				      ,{field:'', width:120, title: '客户名称', sort: true}
				      ,{field:'', width:120, title: '充值时间', sort: true}
				      
                   
				      
  		
  		]],
  		height:'500px',
  		data:[
  		
  		  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })
  //经销商充值缴费
    layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#dealePaymentTable',
  		page:true,
  		cols:[[
  		        {type:'checkbox'},
                       {field:'serialNumber', templet:'#indexTpl', width:120, title: '序号' }
  		        
				      ,{field:'', width:120, title: '预存单号',sort:true}
				      ,{field:'', width:120, title: '预存金额', sort: true}
				      ,{field:'', width:120, title: '到账方式' , sort:true}
				      ,{field:'', width:120, title:'支付方式',  sort:true} 
				       ,{field:'', width:120, title: '支付证明',sort:true}
				      ,{field:'', width:120, title: '申请人', sort: true}
				      ,{field:'', width:120, title: '审核人' ,sort:true}
				      ,{field:'', width:120, title:'申请时间', sort:true} 
				       ,{field:'', width:120, title: '通过时间',sort:true}
				      ,{field:'', width:120, title: '', sort: true}
				      
				      ,{field:'operation', width:120, title: '操作'}
                      
  		
  		]],
  		height:'500px',
  		data:[
  		
  		  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })
     //停复机规则设置
      layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#ruleSetting',
  		page:true,
  		cols:[[
  		        {type:'checkbox'},
                       {field:'serialNumber', templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'bindingPackage', width:120, title: '绑定套餐',sort:true}
				      ,{field:'frequency', width:140, title: '每月停复机次数', sort: true}
				   
				      ,{field:'operation', width:120, title: '操作'}
                      
  		
  		]],
  		height:'500px',
  		data:[
  		
  		  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })
   //套餐变更申请
    layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#changeApplication',
  		page:true,
  		cols:[[
  		         {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '经销商编号',sort:true}
				      ,{field:'', width:120, title: '经销商名称', sort: true}
				      ,{field:'', width:120, title: '落地商' , sort:true}
				      ,{field:'', width:120, title:'流量套餐',  sort:true} 
				       ,{field:'', width:120, title: '申请变更套餐',sort:true}
				      ,{field:'', width:120, title: '状态', sort: true}
				      ,{field:'', width:120, title: '驳回原因' ,sort:true}
                      ,{field:'operation', width:120, title: '操作'}
  		]],
  		height:'500px',
  		data:[
  		
  		  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })
    //卡片库存列表
     layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#cardInveroryList',
  		page:true,
  		cols:[[
  		          {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '库存单号',sort:true}
				      ,{field:'', width:120, title: '运营商', sort: true}
				      ,{field:'', width:120, title: '流量套餐' , sort:true}
				      ,{field:'', width:120, title:'套餐描述',  sort:true} 
				       ,{field:'', width:120, title: '库存数',sort:true}
				      ,{field:'', width:120,templet:'#showCardNumber', title: '卡号段', sort: true}
				     
				      ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
  		
  		]],
  		height:'500px',
  		data:[
  		
  		  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })
     //设备库存列表
      layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#deviceInventoryList',
  		page:true,
  		cols:[[
  		          {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '库存编号',sort:true}
				      ,{field:'', width:120, title: 'MCU版本号', sort: true}
				      ,{field:'', width:120, title: 'APK版本号' , sort:true}
				      ,{field:'', width:120, templet:'#viewImei', title:'IMEI',  sort:true} 
				      ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
  		
  		]],
  		height:'500px',
  		data:[
  		
  		  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })
     //一体机库存列表
      layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#integratedMachineList',
  		page:true,
  		cols:[[
  		           {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '库存编号',sort:true}
				      ,{field:'', width:120, title: '运营商', sort: true}
				      ,{field:'', width:120, title: '落地商', sort: true}
				      ,{field:'', width:120, title: 'MCU版本号', sort: true}
				      ,{field:'', width:120, title: 'APK版本号' , sort:true}
				      ,{field:'', width:120, title: '套餐' , sort:true}
				      ,{field:'', width:120, templet:'#templet2', title:'IMEI/ICCID',  sort:true} 
                      ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
  		
  		]],
  		height:'500px',
  		data:[
  		
  		  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })
     
     //经销商管理
     //经销商档案
   layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#dealerFile',
  		page:true,
  		cols:[[
  		           {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '经销商编号',sort:true}
				      ,{field:'', width:120, title: '经销商名称', sort: true}
				      ,{field:'', width:120, title: '身份' , sort:true}
				      ,{field:'', width:120, title:'信用额度',  sort:true} 
				       ,{field:'', width:120,  title: '上级客户',sort:true}
				      ,{field:'', width:120,  title: '业务员', sort: true}
				      ,{field:'', width:120, templet:'#templet2', title: '营业执照' ,sort:true}
				          ,{field:'', width:120, title: '合作日期' , sort:true}
				      ,{field:'', width:120, title:'账户余额',  sort:true} 
				       ,{field:'', width:120,  title: '行业分类',sort:true}
				       ,{field:'', width:120, title: '联系人', sort: true}
				      ,{field:'', width:120, title: '联系方式', sort: true}
                      ,{field:'operation', templet:'#templet4', width:150, title: '操作'}
  		]],
  		height:'500px',
  		data:[
  		
  		  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })   
  
  //预存明细
     layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#storedDetails',
  		page:true,
  		cols:[[
  		           {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '经销商编号',sort:true}
				      ,{field:'', width:120, title: '经销商名称', sort: true}
				      ,{field:'', width:120, title: '身份' , sort:true}
				      ,{field:'', width:120, title:'信用额度',  sort:true} 
				       ,{field:'', width:120,  title: '上级客户',sort:true}
				      ,{field:'', width:120,  title: '业务员', sort: true}
				      ,{field:'', width:120, templet:'#templet2', title: '营业执照' ,sort:true}
				          ,{field:'', width:120, title: '合作日期' , sort:true}
				      ,{field:'', width:120, title:'账户余额',  sort:true} 
				       ,{field:'', width:120,  title: '行业分类',sort:true}
				      ,{field:'', width:120, templet:'#templet2', title: '联系方式', sort: true}
				     
                      ,{field:'operation', templet:'#templet4', width:150, title: '操作'}
  		
  		]],
  		height:'500px',
  		data:[
  		
  		  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })   
     //分销管理
     //用户提现明细
        layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#distributionUserWDet',
  		page:true,
  		cols:[[
  		           {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '用户编号',sort:true}
				      ,{field:'', width:120, title: '实名用户', sort: true}
				      ,{field:'', width:120, title: '绑定用户编号' , sort:true}
				      ,{field:'', width:120, title:'分润比例',  sort:true} 
				       ,{field:'', width:120,  title: '绑定用户编号2',sort:true}
				      ,{field:'', width:120,  title: '分润比例', sort: true}
				      ,{field:'', width:120, templet:'#templet2', title: '身份' ,sort:true}
				          ,{field:'', width:120, title: '身份组' , sort:true}
				      ,{field:'', width:120, title:'消费总金额',  sort:true} 
				       ,{field:'', width:120,  title: '可提现金额',sort:true}
				      ,{field:'', width:120, templet:'#templet2', title: '已提现金额', sort: true}
				        ,{field:'', width:120,  title: '银行卡号', sort: true}
				      
				          ,{field:'', width:120, title: '申请渠道' , sort:true}
				      ,{field:'', width:120, title:'状态',  sort:true} 
				       ,{field:'', width:120,  title: '提现日期',sort:true}
				       ,{field:'operation', templet:'#templet4', width:150, title: '操作'}
  		
  		]],
  		height:'500px',
  		data:[
  		
  		  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })   
    //用户提现申请
    layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#distributionUserWApply',
  		page:true,
  		cols:[[
  		           {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '用户编号',sort:true}
				      ,{field:'', width:120, title: '实名用户', sort: true}
				      ,{field:'', width:120, title: '绑定用户编号' , sort:true}
				      ,{field:'', width:120, title:'分润比例',  sort:true} 
				       ,{field:'', width:120,  title: '绑定用户编号2',sort:true}
				      ,{field:'', width:120,  title: '分润比例', sort: true}
				      ,{field:'', width:120,  title: '身份' ,sort:true}
				          ,{field:'', width:120, title: '身份组' , sort:true}
				      ,{field:'', width:120, title:'消费总金额',  sort:true} 
				       ,{field:'', width:120,  title: '可提现金额',sort:true}
				      ,{field:'', width:120,  title: '已提现金额', sort: true}
				       ,{field:'', width:120,  title: '提现方式', sort: true}
				        ,{field:'', width:120,  title: '银行卡号', sort: true}
				   
				          ,{field:'', width:120, title: '申请渠道' , sort:true}
				      ,{field:'', width:120, title:'状态',  sort:true} 
				       ,{field:'', width:120,  title: '提现日期',sort:true}
				       ,{field:'operation', templet:'#templet4', width:150, title: '操作'}
  		
  		]],
  		height:'500px',
  		data:[
  		
  		  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
     {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })   
  
   //分销设置
//    分销表格
    layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#distribution',
  		page:true,
  		cols:[[
  		           {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '身份',sort:true}
				      ,{field:'', width:120, title: '等级', sort: true}
				      ,{field:'', width:120, title: '关系1' , sort:true}
				      ,{field:'', width:120, title:'分润比例',  sort:true} 
				       ,{field:'', width:120,  title: '关系2',sort:true}
				       
				       ,{field:'operation', templet:'#templet4', width:150, title: '操作'}
  		
  		]],
  		height:'200px',
  		data:[
  		
  		
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    
  		]
  		
  	})
  })  
     //区域经销商表格
      layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#regionalDistributor',
  		page:true,
  		cols:[[
  		           {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '身份',sort:true}
				      ,{field:'', width:120, title:'分润比例',  sort:true} 
  		
  		]],
  		height:'200px',
  		data:[
  		
  		
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
  		]
  		
  	})
  })   
  
   //分销明细
     layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#distributionDet',
  		page:true,
  		cols:[[
  		         {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '用户编号',sort:true}
				      ,{field:'', width:120, title: '实名用户', sort: true}
				      ,{field:'', width:120, title: '购买总额' , sort:true}
				      ,{field:'', width:120, title:'分润比例',  sort:true} 
				       ,{field:'', width:120, title: '已分润金额',sort:true}
				      ,{field:'', width:120, title: '等级', sort: true}
				      ,{field:'', width:120, title: '绑定编号' ,sort:true}
				      ,{field:'', width:120, title:'客户名称', sort:true} 
				       ,{field:'', width:120, title: '身份',sort:true}
				      ,{field:'', width:120, title: '银行名称', sort: true}
				      ,{field:'', width:120, title: '银行卡号' ,sort:true}
				       ,{field:'', width:120, title: '状态', sort: true}
				      ,{field:'', width:120, title: '负责人' ,sort:true}
				       ,{field:'', width:120, title: '负责人电话', sort: true}
				      ,{field:'', width:120, title: '分润日期' ,sort:true}
				      
                      ,{field:'operation', width:120, title: '操作'}
                      
  		]],
  		height:'200px',
  		data:[
  		
  		
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    
  		]
  		
  	})
  })  
    //分销提现申请
     
      layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#distributionWApply',
  		page:true,
  		cols:[[
  		         {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '用户编号',sort:true}
				      ,{field:'', width:120, title: 'ICCID', sort: true}
				      ,{field:'', width:120, title: '实名用户' , sort:true}
				       ,{field:'', width:120, title: '购买总额' , sort:true}
				      ,{field:'', width:120, title:'分润比例',  sort:true} 
				       ,{field:'', width:120, title: '可分润金额',sort:true}
				      ,{field:'', width:120, title: '等级', sort: true}
				      ,{field:'', width:120, title: '绑定编号' ,sort:true}
				      ,{field:'', width:120, title:'经销商名称', sort:true} 
				       ,{field:'', width:120, title: '身份',sort:true}
				        ,{field:'', width:120, title: '提现方式' , sort:true}
				 
				      ,{field:'', width:120, title: '银行卡号' ,sort:true}
				       ,{field:'', width:120, title: '状态', sort: true}
				      ,{field:'', width:120, title: '负责人' ,sort:true}
				       ,{field:'', width:120, title: '负责人电话', sort: true}
				      ,{field:'', width:120, title: '申请日期' ,sort:true}
				      
                      ,{field:'operation', templet:"templet2", width:120, title: '操作'}
                      
  		]],
  		height:'500px',
  		data:[
  		
  		
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    
  		]
  		
  	})
  }) 
   //返佣管理
   //返佣规则
    layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#rebateRules',
  		page:true,
  		cols:[[
  		         {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '规则名称',sort:true}
				      ,{field:'', width:120, title: '返佣类型', sort: true}
				      ,{field:'', width:120, title: '结算方式' , sort:true}
                      ,{field:'operation', templet:'#templet2', width:120, title: '操作'}
                      
  		]],
  		height:'500px',
  		data:[
  		
  		
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    
  		]
  		
  	})
  })  
  
     //abc分销
    layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#abcdistribution',
  		page:true,
  		cols:[[
  		         {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '等级', sort: true}
				      ,{field:'', width:120, title: '关系1' , sort:true}
				      ,{field:'', width:120, title: '分润比例', sort: true}
				      ,{field:'', width:120, title: '关系2' , sort:true}
				     /* ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}*/
                      
  		]],
  		height:'500px',
  		data:[
  		
  		
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    
  		]
  		
  	})
  })
     //返佣明细
     layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#rebateDetails',
  		page:true,
  		cols:[[
  		         {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
			      ,{field:'', width:120, title: '用户编号' , sort:true}
			       ,{field:'', width:120, title: '采购单号' , sort:true}
			       ,{field:'', width:120, title: 'ICCID', sort: true}
			      ,{field:'', width:120, title:'客户名称',  sort:true} 
			      ,{field:'', width:120, title: '充值总金额', sort: true}
			      ,{field:'', width:120, title: '充值单数' ,sort:true}
			       ,{field:'', width:120, title: '返佣类型',sort:true}
			       ,{field:'', width:120, title: '返佣值',sort:true}
			      ,{field:'', width:120, title:'返佣金额', sort:true} 
			       ,{field:'', width:120, title: '结算',sort:true}
                      ,{field:'operation', templet:"#templet3", width:120, title: '操作'}
                      
  		]],
  		height:'500px',
  		data:[
  		
  		
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    
  		]
  		
  	})
  }) 
     
   //返佣提现申请
     layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#rebateWApply',
  		page:true,
  		cols:[[
  		         {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				      ,{field:'', width:120, title: '等级',sort:true}
				      ,{field:'', width:120, title: '权限', sort: true}
				   
                      ,{field:'operation', templet:'#templet2', width:120, title: '操作'}
                      
  		]],
  		height:'500px',
  		data:[
  		
  		
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    
  		]
  		
  	})
  })  
   
    //财务管理
     //预存审核
      layui.use('table',function(){
  	var table=layui.table;
  	table.render({
  		elem:'#preInventoryAudit',
  		page:true,
  		cols:[[
  		         {type:'checkbox'},
                       {field:'serialNumber',templet:'#indexTpl', width:120, title: '序号' }
				     
				      ,{field:'', width:120, title: '预存单号', sort: true}
				      ,{field:'', width:120, title: '预存金额' , sort:true}
				       ,{field:'', width:120, title: '信用金额' , sort:true}
				      ,{field:'', width:120, title:'支付方式',  sort:true} 
				       ,{field:'', width:120, templet:'#templet2', title: '支付证明',sort:true}
				      ,{field:'', width:120, title: '状态', sort: true}
				      ,{field:'', width:120, title: '申请人' ,sort:true}
				      ,{field:'', width:120, title:'申请时间', sort:true} 
				       ,{field:'', width:120, title: '审核人',sort:true}
				      ,{field:'', width:120, title: '审核时间' ,sort:true}
				      ,{field:'', width:120, title: '驳回原因' ,sort:true}
				      
				      ,{fixed: 'right', title: '操作', align:'center',width:200, toolbar: '#barTools'}
                      
  		]],
  		height:'500px',
  		data:[
  		
  		
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    
  		]
  		
  	})
  }) 
  
 //权限管理
  //员工账号分配
    layui.use('table',function(){
    	var table=layui.table;
    	table.render({
    		elem:'#employeeAccount',
    		page:true,
    		cols:[[
    		   {type:'checkbox'},
                       {field:'serialNumber', width:120, title: '序号' }
                        ,{field:'accountNumber', width:120, title: '账号',sort:true}
				      ,{field:'password', width:120, title: '密码',sort:true}
				      ,{field:'department', width:120, title: '部门', sort: true}
				      ,{field:'position', width:120, title: '职位' , sort:true}
				      ,{field:'jobNumber', width:120, title:'工号',  sort:true} 
				       ,{field:'contactInformation', width:120, title: '联系方式',sort:true}
				      ,{field:'name', width:120, title: '姓名', sort: true}
				      ,{field:'registrationTime', width:120, title: '注册时间' ,sort:true}
				      ,{field:'trackingCustomers', templet:"#viewTpl1", width:120, title:'跟踪客户', sort:true} 
                      ,{field:'operation', width:120, title: '操作'}
    		]],
    		data:[
    		{
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   }
    		]
    		
    	})
    })
    
    //经销商账号管理
     layui.use('table',function(){
    	var table=layui.table;
    	table.render({
    		elem:'#dealerAccount',
    		page:true,
    		cols:[[
    		   {type:'checkbox'},
                       {field:'serialNumber', templet:'#indexTpl',  width:120, title: '序号' }
				      ,{field:'password', width:120, title: '账号',sort:true}
				      ,{field:'department', width:120, title: '密码', sort: true}
				      ,{field:'position', width:120, title: '经销商编号' , sort:true}
				      ,{field:'jobNumber', width:120, title:'经销商名称',  sort:true} 
				       ,{field:'contactInformation', width:120, title: '联系方式',sort:true}
				      ,{field:'name', width:120, title: '联系人', sort: true}
				      ,{field:'registrationTime', width:120, title: '注册时间' ,sort:true}
				     
				     
                      ,{field:'operation', templet:'#templet2' ,width:120, title: '操作'}
    		]],
    		data:[
  		
  		
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    
  		]
    	})
    })
 //经销商权限
 layui.use('table',function(){
    	var table=layui.table;
    	table.render({
    		elem:'#dealerAuthority',
    		page:true,
    		cols:[[
    		   {type:'checkbox'},
                       {field:'serialNumber', templet:'#indexTpl',  width:120, title: '序号' }
				      ,{field:'password', width:120, title: '等级',sort:true}
				      ,{field:'department',templet:'#templet2', width:120, title: "权限", sort: true}
                      ,{field:'operation', templet:'#templet3' ,width:120, title: '操作'}
    		]],
    		data:[
  {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
   {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
   {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
   {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    {
	'':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':'','':''
   },
    
  		]
    	})
    })


