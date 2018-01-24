<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>卡片管理-充值缴费</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="stylesheet" type="text/css" href="css/homeAbout/font-awesome.min.css"/>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="vendor/layui/css/layui.css"/>
<link href="css/public.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/cardMange.css"/>
<link rel="stylesheet" type="text/css" href="css/table_public.css"/>
<script src="vendor/jquery-3.1.1.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="vendor/layui/layui.js"></script>
<script type="text/javascript" src="js/DateFormate.js"></script>
</head>
 <body class="page-body">
	      <h5 class="position-title">
    	<a href="javascript:history.back(-1)" title="返回上一页"><i class="fa fa-reply fa-lg fa-fw" style="color:#337ab7;"></i> </a>
    	<i class="fa fa-refresh fa-lg fa-fw" style="color:#337ab7;float: right;" title="刷新"></i> 
    	当前位置：卡片管理&gt;充值缴费
        </h5>
	   <div class="search-box">
    	   <form>
            <div>
                <span>订单号：</span>
                <input id="orderNum" type="text" class="form-control" name="" value="" placeholder="查询充值单号">
            </div>
                <div style="margin-left: 0px;">
                <span>支付单号：</span>
                 <input id="payNum" type="text" class="form-control" placeholder="查询用户手机" name="" id="" value="" />
            </div>
           
            <div style="margin-left: 0px;">
               <span>ICCID：</span>
                <input id="iccid" type="text" name="" class="form-control" placeholder="查询ICCID/用户自编码" id="" value="" />
            </div>
            
           
            <div class="">
            	<span id="">
            		客户名称：
            	</span>
            	<input id="customerName" type="text" class="form-control" placeholder="查询金额（模糊搜索）"  name="" id="" value="" />
            </div>
             
           
             <div class=""> 
             	 <input type="reset" class="btn btn_reset" name="" id="" value="重置" style="margin-left: 30px;"/>
             <input id="search" type="button" class="btn btn_search" value="搜索" data-type="reload" style="height:34px;margin-left: 30px;">
            
             </div>
        </form>
          
    </div>
    
    

       <!--contentBegin-->  
        <div id="content" >
               <table class="table-hide" id="chargePayment" lay-data="{id: 'idChargePayment'}" lay-filter="ChargePayment"></table>
        </div>

</body>
<script type="text/html" id="titleTpl4">
  {{#  if(!(d.rechargeTime)){ }}
  {{#  } else { }}
  {{formatDate(new Date(d.rechargeTime))}}
  {{#  } }}
</script>
<script type="text/javascript">
	$(function(){
		layui.use('table',function(){
			var table=layui.table;
var tableIns = table.render({
				elem:'#chargePayment',
				url:'showChargePayment',
				id: 'idChargePayment',
				cellMinWidth:120,
				page:true,
				cols:[[
				 {field:'',type:'checkbox',title:'ID',sort: true, fixed: 'left'},
			     {title:'序号',templet: '#indexTpl',width:80},
				 {field:'orderNum','title':'订单编号',width:120,sort:true},
				 {field:'rechargeSource','title':'充值来源',width:80,sort:true},
				 {field:'payWay','title':'支付方式',width:120,sort:true},
				 {field:'payNum','title':'支付单号',width:80,sort:true},
				 {field:'realName','title':'真实姓名',width:80,sort:true},
				 {field:'buyType','title':'购买类型',width:120,sort:true},
				 {field:'rechargeAmount','title':'充值金额',width:200,sort:true},
				 {field:'rebateType','title':'返佣类型',width:180,sort:true},
				 {field:'rebateResult','title':'返佣值',width:180,sort:true},
				 {field:'iccid','title':'ICCID',width:180,sort:true},
				 {field:'customerName','title':'客户名称',width:180,sort:true},
				 {field:'rechargeTime','title':'充值时间',width:180,sort:true,templet: '#titleTpl4'},
				]],
			})
 		    var $ = layui.$, active = {
		        reload: function(){
		            table.reload('idChargePayment', {
		                where: {
		                	orderNum: $('#orderNum').val(),
		                	payNum: $('#payNum').val(),
		                	iccid: $('#iccid').val(),
		                	customerName:$('#customerName').val()
		                }
		            });
		        }
			
		    };
			//监听搜索查询
			$('#search').on('click', function(){
			    var type = $(this).data('type');
			    active[type] ? active[type].call(this) : '';
			});
		});
	});
</script>
</html>
