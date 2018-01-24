<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>财务管理-采购订单审核</title>
		<meta name="keywords" content="">
		<meta name="description" content="">
		<!--<link href="../css/homeAbout/font-awesome.css" rel="stylesheet">-->
		<link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<!--<link href="../vendor/bootstrap/bootstrap-table.min.css" rel="stylesheet">-->
		<link href="../css/public.css" rel="stylesheet">
		<script src="../vendor/jquery-3.1.1.js"></script>
		<script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
		<!--<script src="../vendor/bootstrap/bootstrap-table.min.js"></script>-->
		<!--<script src="../vendor/bootstrap/bootstrap-table-locale-all.min.js"></script>-->
		<!--<script src="../vendor/layer/layer.min.js" ></script>-->
	</head>

	<body class="page-body">

		<h5 class="position-title">当前位置：财务管理&gt;采购订单审核</h5>

		<!--contentBegin-->
		<div id="content">
			<div class="search-box">
				<form>
					<div>
						<span>采购单号：</span>
						<input type="text" class="form-control" name="" value="" placeholder="查询经销商编号">
					</div>

					<div>
						<span>经销商名称：</span>
						<input type="text" class="form-control" name="" value="" placeholder="查询经销商">
					</div>

					<div>
						<span>支付方式：</span>
						<select name="" id="">
							<option value="">全部</option>
							<option value="">线下</option>
							<option value="">信用额度</option>
							<option value="">余额</option>
						</select>
					</div>

					<div style="margin-left: 0px;">
						<span>落地商：</span>
						<select class="form-control" id="" name="" style="width:120px">
							<option>全部</option>
							<option>电信</option>
							<option>联通</option>
							<option value="">移动</option>
						</select>
					</div>

					<div style="margin-left: 0px;">
						<span>采购类型：</span>
						<select class="form-control" id="" name="">

							<option>全部</option>
							<option>空卡</option>
							<option>设备</option>
							<option>一体机</option>
							<option value="">卡片</option>
						</select>
					</div>
					<div style="margin-left: 0px;">
						<span>流量套餐：</span>
						<select class="form-control" id="" name="">

							<option>全部</option>
							<option>套餐1</option>
							<option>套餐2</option>
							<option>套餐3</option>
							<option value="">套餐列表那里</option>
						</select>
					</div>
					<div>
						<span>申请人：</span>
						<input type="text" placeholder="查询经销商" class="form-control" name="" id="" value="" />
					</div>
					   <div>
					   	<span>返佣类型</span>
					   	<select name="" id="" class="form-control">
					   		<option value="">全部</option>
					   		<option value="">折扣</option>
					   		<option value="">差价</option>
					   	</select>
					   </div>
					   <div><span>状态：</span>
					   	<select name="" id="" class="form-control">
					   		<option value="status01">全部</option>
					   		<option value="status02">待审核</option>
					   		<option value="status03">驳回</option>
					   		<option value="status04">已通过</option>
					   	</select>
					   </div>
					   <div>
					   	<span>申请时间</span>
					   	<input type="date" class="form-control" />&#150
					   	<input type="date" class="form-control" name="" id="" value="" />
					   </div>
					<div class="">
						<input type="reset" class="btn btn_reset" name="" id="" value="重置" style="margin-left: 30px;" />
						<input id="search" type="button" class="btn btn_search" value="搜索" onclick="" style="height:34px;margin-left: 30px;">

					</div>
                </from>
			</div>

		</div>
		<div class="search-box check-btn">
			<div class="check-btn">

				<button class="btn btn-default" onclick="">通过</button>
			</div>

		</div>

		<div class="ibox-content">

			<table class="table table-bordered">

				<thead>
					<tr>
						<th><input type="checkbox" name="" id="" value="" /></th>
						<th>序号</th>
						<th>采购单号</th>
						<th>落地商</th>
						<th>数量</th>
						<th>订单金额</th>
						<th>支付方式</th>
						<th>支付证明</th>
						<th>采购类型</th>
						<th>流量套餐</th>
						<th>套餐描述</th>
						<th>经销商名称</th>
						<th>账户余额</th>
						<th>信用额度</th>
						<th>申请人</th>
						<th>申请时间</th>
						<th>返佣规则</th>
						<th>返佣类型</th>
						<th>返佣金额</th>
						<th>状态</th>
						<th>驳回人</th>
						<th>驳回原因</th>
						<th>驳回时间</th>
						<th>审核人</th>
						<th>通过时间</th>
						<th>操作</th>
						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox"></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>
							<a href="">审核通过</a>/
							<a href="">修改订单</a>/
							<a href="">删除</a>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>线下</td>
						<td><a href="">查看</a></td>
						<td>空卡</td>
						<td>空</td>
						<td></td>
						<td></td>
						<td>0.00</td>
						<td></td>
						<td>10000</td>
						<td>0788</td>
						<td></td>
						<td>规则1</td>
						<td>折扣</td>
						<td>8折</td>
						<td>待审核</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>
							<a href="">通过</a>/
							<a href="">驳回</a>/
							<a href="">删除</a>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>信用额度</td>
						<td><a href="">查看</a></td>
						<td>设备</td>
						<td>空</td>
						<td></td>
						<td></td>
						<td>0.00</td>
						<td>-1000</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>驳回</td>
						<td></td>
						<td>先还清信用额度</td>
						<td></td>
						<td></td>
						<td></td>
						<td>
							
							<a href="">删除</a>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>余额</td>
						<td><a href="">查看</a></td>
						<td>一体机</td>
						<td>32G</td>
						<td></td>
						<td></td>
						<td>10000:00</td>
						<td>0:00</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>待审核</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>
							<a href="">通过</a>/
							<a href="">驳回</a>/
							<a href="">删除</a>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td><a href=""></a></td>
						<td></td>
						<td>卡片</td>
						<td>32G</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>通过</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
						<td>
							<a href="">通过</a>/
							<a href="">驳回</a>/
							<a href="">删除</a>
						</td>
					</tr>
				</tbody>
			</table>

			<ul class="pagination" style="float: right;">
				<li>
					<a href="#">&laquo;</a>
				</li>
				<li class="active">
					<a href="#">1</a>
				</li>
				<li>
					<a href="#">2</a>
				</li>
				<li>
					<a href="#">3</a>
				</li>
				<li>
					<a href="#">4</a>
				</li>
				<li>
					<a href="#">5</a>
				</li>
				<li>
					<a href="#">&raquo;</a>
				</li>
			</ul>

		</div>
		</div>
		<!--contentEnd-->

	</body>

</html>