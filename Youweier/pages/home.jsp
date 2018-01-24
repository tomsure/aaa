<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="renderer" content="webkit">

<title>优为尔后台系统</title>

<meta name="keywords" content="">
<meta name="description" content="">

<link rel="shortcut icon" href="favicon.ico">
<link href="css/homeAbout/font-awesome.css" rel="stylesheet" type="text/css">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/homeAbout/animate.css" rel="stylesheet" type="text/css">
<link href="css/homeAbout/style.css" rel="stylesheet" type="text/css">
</head>

<body class="fixed-sidebar full-height-layout gray-bg" style="height: 100%;overflow:hidden">
    <div id="wrapper">
        <!--左侧导航开始-->
        <nav class="navbar-default navbar-static-side" role="navigation">
            <div class="nav-close"><i class="fa fa-times-circle"></i>
            </div>
            <div class="sidebar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="nav-header">
                        <div class="dropdown profile-element">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="clear">
                                    <span class="block m-t-xs" style="font-size:20px;">
                                        <i class="fa fa-area-chart"></i>
                                        <strong class="font-bold">优为尔后台系统</strong>
                                    </span>
                                </span>
                            </a>
                        </div>
                        <div class="logo-element">后台系统
                        </div>
                    </li>
                    <!--权限管理开始-->
                    <li>
                    	<a href=""><i class="fa fa-table"></i> <span class="nav-label">权限管理</span><span class="fa arrow"></span> </a>
                    	<ul class="nav nav-second-level">
							<li><a class="J_menuItem" data-href="employeeAccountAllocation">员工账号分配</a></li>
                    	</ul>
                    </li>
                    <!--权限管理结束-->
                    <!--套餐管理开始-->
                    <li>
                    	<a href=""><i class="fa fa-table"></i> <span class="nav-label">套餐管理</span><span class="fa arrow"></span> </a>
                    	<ul class="nav nav-second-level">
							<li><a class="J_menuItem" data-href="packageList">套餐/群组设置</a></li>
                    	</ul>
                    </li>
                    <!--套餐管理结束-->
                    <!--库存管理开始-->
                    <li>
                    	<a href=""><i class="fa fa-table"></i> <span class="nav-label">库存管理</span><span class="fa arrow"></span> </a>
                    	<ul class="nav nav-second-level">
							<li><a class="J_menuItem" data-href="cardInventoryList">卡片库存</a></li>
							<li><a class="J_menuItem" data-href="deviceInventoryList">设备库存</a></li>
							<li><a class="J_menuItem" data-href="integratedMachineList">一体机库存</a></li>
                    	</ul>
                    </li>
                     <!--库存管理结束-->
                    <!--返佣管理开始-->
                    <li>
                    	<a href=""><i class="fa fa-table"></i> <span class="nav-label">返佣管理</span><span class="fa arrow"></span> </a>
                    	<ul class="nav nav-second-level">
							<li><a class="J_menuItem" data-href="rebateRules">返佣规则</a></li>
						   <!--  <li><a class="J_menuItem" data-href="rebateWApply">返佣提现申请</a></li> -->
                    	</ul>
                    </li>
                    <!--返佣管理结束-->
                    <!--分销管理开始-->
                    <li>
                    	<a href=""><i class="fa fa-table"></i> <span class="nav-label">分销管理</span><span class="fa arrow"></span> </a>
                    	<ul class="nav nav-second-level">
<!-- 							<li><a class="J_menuItem" data-href="distributionUserWDet">用户提现明细</a></li>
							<li><a class="J_menuItem" data-href="distributionUserWApply">用户提现申请</a></li> -->
						    <li><a class="J_menuItem" data-href="distributionSet">经销商分销</a></li>
						    <li><a class="J_menuItem" data-href="abcdistribution">abc分销</a></li>
<!-- 						    <li><a class="J_menuItem" data-href="distributionDet">分销明细</a></li>
						    <li><a class="J_menuItem" data-href="distributionWApply">分销提现申请</a></li> -->
                    	</ul>
                    </li>
                    <!--分销管理结束-->
                    <!--商品管理开始-->
                    <li>
                    	<a href=""><i class="fa fa-table"></i><span class="nav-label">商品管理</span><span class="fa arrow"></span></a>
                    	<ul class="nav nav-second-level">
                    		<li><a class="J_menuItem" data-href="shopList">商品上架</a></li>
							<!-- <li><a class="J_menuItem" data-href="orderList">商品订单</a></li> -->
							<li><a class="J_menuItem" data-href="deliveryOrder">商品订单</a></li>
							<li><a class="J_menuItem" data-href="chargePayment">充值缴费</a></li>
							<li><a class="J_menuItem" data-href="denominationSetting">面额设置</a></li>
<!-- 	 						<li><a class="J_menuItem" data-href="shopActivity">促销活动</a></li>
							<li><a class="J_menuItem" data-href="shopRule">活动规则</a></li>  -->
							<!-- <li><a class="J_menuItem" data-href="orderOutLibrary">商品出库</a></li> -->
							<!-- <li><a class="J_menuItem" data-href="orderCancel">商品取消</a></li> -->
                    	</ul>
                    </li>
                     <!--商品管理结束-->
                     <!--经销商管理开始-->
                    <li>
                    	<a href=""><i class="fa fa-table"></i> <span class="nav-label">经销商管理</span><span class="fa arrow"></span> </a>
                    	<ul class="nav nav-second-level">
							<li><a class="J_menuItem" data-href="dealerFile">经销商档案</a></li>
							<li><a class="J_menuItem" data-href="dealerAccount">经销商账号管理</a></li>
<!-- 						    <li><a class="J_menuItem" data-href="dealerAuthority">经销商权限</a></li>
						    <li><a class="J_menuItem" data-href="dealerCardInventoryList">经销商卡片库存列表</a></li>
						    <li><a class="J_menuItem" data-href="dealerDeviceInventoryList">经销商设备库存列表</a></li>
						    <li><a class="J_menuItem" data-href="dealerCard">经销商卡片</a></li> -->
						  <!--   <li><a class="J_menuItem" data-href="storedDetails">预存明细</a></li> -->
						   
                    	</ul>
                    </li>
                    <!--经销商管理结束-->
                     <!--订单管理开始-->
                    <li>
                    	<a href=""><i class="fa fa-table"></i> <span class="nav-label">订单管理</span><span class="fa arrow"></span> </a>
                    	<ul class="nav nav-second-level">
                    		<li><a class="J_menuItem" data-href="orderPurchaseApply">经销商申请</a></li>
                    		<li><a class="J_menuItem" data-href="ConfirmationPurchaseOrder">采购单审核</a></li>
                    		<li><a class="J_menuItem" data-href="purchaseOrderDelivery">采购单发货</a></li>
                    		<li><a class="J_menuItem" data-href="pendingPurchaseOrder">出库采购单</a></li>
						    <!-- <li><a class="J_menuItem" data-href="storedFunds">预存</a></li> -->
<!--                     		<li><a class="J_menuItem" data-href="orderHisPurDetails">历史采购明细</a></li>
							<li><a class="J_menuItem" data-href="orderPurchaseApply">采购申请</a></li>
							<li><a class="J_menuItem" data-href="orderMyPurchase">我的采购</a></li>-->
							<li><a class="J_menuItem" data-href="orderMoneyApply">预存申请</a></li> 
                    	</ul>
                    </li>
                    <!--订单管理结束-->
                    <!--卡片管理开始-->
                       <li>
                    	<a href=""><i class="fa fa-table"></i> <span class="nav-label">卡片管理</span><span class="fa arrow"></span> </a>
                    	<ul class="nav nav-second-level">                    	
                    		<li><a class="J_menuItem" data-href="cardDeviceInfo">卡片/设备信息</a></li>
							<li><a class="J_menuItem" data-href="dealerPayment">大客户充值缴费</a></li>
							<li><a class="J_menuItem" data-href="flowTransform">流量转换比例</a></li>
							<li><a class="J_menuItem" data-href="">补卡申请</a></li>
							<li><a class="J_menuItem" data-href="">预销号卡片</a></li>
							<li><a class="J_menuItem" data-href="changeAudit">套餐变更申请</a></li>
							<li><a class="J_menuItem" data-href="dealerChangeAudit">经销商套餐变更申请</a></li>
					<!--    <li><a class="J_menuItem" data-href="packageGroup">套餐群组</a></li> -->
<!-- 						<li><a class="J_menuItem" data-href="ruleSetting">停复机规则设置</a></li>
							<li><a class="J_menuItem" data-href="orderRefundManagement">流量转换卡片</a></li>
							<li><a class="J_menuItem" data-href="orderRefundManagement">套餐变更设置</a></li> -->
                    	</ul>
                    </li>
                    	
                    <!--卡片管理结束-->
                     <!--退款管理开始-->
                       <li>
                    	<a href=""><i class="fa fa-table"></i> <span class="nav-label">退款管理</span><span class="fa arrow"></span> </a>
                    	<ul class="nav nav-second-level">                    	
							<li><a class="J_menuItem" data-href="orderRefundManagement">退款管理</a></li>
                    	</ul>
                    </li>
                    	
                    <!--退款管理结束-->
                    <!--财务管理开始-->
                    	 <li>
                    	<a href=""><i class="fa fa-table"></i> <span class="nav-label">财务审核管理</span><span class="fa arrow"></span> </a>
                    	<ul class="nav nav-second-level">
						    <li><a class="J_menuItem" data-href="">返佣审核</a></li>
						    <li><a class="J_menuItem" data-href="shareProfits">分润审核</a></li>
						    <li><a class="J_menuItem" data-href="preInventoryAudit">预存审核</a></li>
							<li><a class="J_menuItem" data-href="rebateDetails">返佣明细</a></li>
						    <li><a class="J_menuItem" data-href="">退款审核</a></li>
<!-- 							<li><a class="J_menuItem" data-href="dealerFile">财务首页/待审核列表</a></li>
						    <li><a class="J_menuItem" data-href="orderAudit">采购订单审核</a></li>
						    <li><a class="J_menuItem" data-href="dealerDeviceInventoryList">销售订单审核</a></li>
						    <li><a class="J_menuItem" data-href="dealerCard">充值审核</a></li>
						    <li><a class="J_menuItem" data-href="dealerCardInventoryList">提现审核</a></li>
						    <li><a class="J_menuItem" data-href="storedFunds">发票申请</a></li>
						    <li><a class="J_menuItem" data-href="storedDetails">发票管理</a></li> -->
                    	</ul>
                    </li>
                    <!--财务管理结束-->
                    <!--实名认证开始-->
                    	   <li>
                    	<a href=""><i class="fa fa-table"></i> <span class="nav-label">实名认证</span><span class="fa arrow"></span> </a>
                    	<ul class="nav nav-second-level">       
                    		<li><a class="J_menuItem" data-href="deviceAuthentication">设备/卡片/一体机实名认证</a></li>
<!-- 							<li><a class="J_menuItem" data-href="deviceAuthentication">设备实名认证</a></li>
                    		 <li><a class="J_menuItem" data-href="userInfo">用户信息</a></li>
							<li><a class="J_menuItem" data-href="authenticationAudit">实名认证审核</a></li>  -->
                    	</ul>
                    </li>
                    <!--实名认证结束-->
                    <!--故障申报开始-->
                       <li>
                    	<a href=""><i class="fa fa-table"></i> <span class="nav-label">故障申报</span><span class="fa arrow"></span> </a>
                    	
                    	
                    	<ul class="nav nav-second-level">                    	
							<li><a class="J_menuItem" data-href="orderFaultReporting">故障申报</a></li>
                    	</ul>
                    </li>
                    <!--故障申报结束-->
                    <!--卡池管理开始-->
                       <li>
                    	<a href=""><i class="fa fa-table"></i> <span class="nav-label">卡池管理</span><span class="fa arrow"></span> </a>
                    	<ul class="nav nav-second-level">     
                    	
                    	               	
                    	</ul>
                    </li>
                    <!--卡池管理结束-->
                    <!--运营可视化报表开始-->
                       <li>
                    	<a href=""><i class="fa fa-table"></i> <span class="nav-label">运营可视化报表</span><span class="fa arrow"></span> </a>
                    	<ul class="nav nav-second-level">     
                    	
                    	               	
                    	</ul>
                    </li>
                    <!--运营可视化报表结束-->
                    <!--监控管理开始-->
                    	 <li>
                    	<a href=""><i class="fa fa-table"></i> <span class="nav-label">监控管理</span><span class="fa arrow"></span> </a>
                    	<ul class="nav nav-second-level">
							<li><a class="J_menuItem" data-href="employeeAccountAllocation">告警查询</a></li>
							<!--<li><a class="J_menuItem" data-href="dealerAccount">警告规则</a></li>-->
							  <li>
							    <a href=""> <span class="nav-label">告警规则</span><span class="fa arrow"></span> </a>
							    <ul class="nav nav-second-level">
							    	<li><a class="J_menuItem" data-href="dealerAuthority">阀值设置</a></li>
							    </ul>
							  </li>
						    <li><a class="J_menuItem" data-href="dealerAuthority">指标管理</a></li>
						     <li><a class="J_menuItem" data-href="dealerAuthority">指标组</a></li>
						      <li><a class="J_menuItem" data-href="dealerAuthority">告警通知组</a></li>
						       
                    	</ul>
                    </li>
                    <!--监控管理结束-->
                </ul>
               
            </div>
        </nav>
        <!--左侧导航结束-->

        <!--右侧部分开始-->
        <div id="page-wrapper" class="gray-bg dashbard-1" style="overflow: hidden;">
            <div class="row border-bottom">
                <nav class="navbar navbar-static-top" role="navigation" style="margin-bottom: 0">
                    <div class="navbar-header"><a class="navbar-minimalize minimalize-styl-2 btn btn-info " href="#"><i class="fa fa-bars"></i> </a>
                    </div>
                    <ul class="nav navbar-top-links navbar-right">
                        <li >超级管理员</li>
                        <li id="users"><!-- <b style="font-size: 15px;margin: 0 10px">admin</b> --></li>
                     
                         <li class="dropdown">
                            <a class="dropdown-toggle count-info" data-toggle="dropdown" href="#" onclick="logOut()" title="注销">
                                <i class="fa fa-power-off fa-2x icolor" style="position: relative;top:5px"></i> 
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="row J_mainContent" id="content-main">
                <iframe id="J_iframe" width="100%" height="100%" src="DealerApply" frameborder="0" data-id="index_v1" seamless></iframe>
            </div>
            
        </div>
        <!--右侧部分结束-->
    </div>

    <!-- 全局js -->
<script src="vendor/jquery.min.js"></script>

<script src="vendor/layer/layer.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="vendor/metisMenu/jquery.metisMenu.js"></script>
<script src="vendor/slimscroll/jquery.slimscroll.min.js"></script>
<script src="js/home/home.js"></script>
</body>
</html>