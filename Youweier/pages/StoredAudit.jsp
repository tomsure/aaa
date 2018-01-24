<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>财务管理-预存审核</title>
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

		<h5 class="position-title">当前位置：财务管理&gt;预存审核</h5>

		<!--contentBegin-->
		<div id="content">
			<div class="search-box">
				<form>
					<div>
						<span>预存单号：</span>
						<input type="text" class="form-control" name="" value="" placeholder="查询经销商编号">
					</div>

					<div>
						<span>申请人：</span>
						<input type="text" class="form-control" name="" value="" placeholder="查询申请人">
					</div>

					<div>
						<span>到账方式：</span>
						<select name="" id="" class="form-control">
							<option value="">全部</option>
							<option value="">余额</option>
							<option value="">信用</option>
							
						</select>
					</div>

					<div style="margin-left: 0px;">
						<span>支付方式：</span>
						<select class="form-control" id="" name="" style="width:120px">
							<option>全部</option>
							<option>支付宝</option>
							<option>微信</option>
							
						</select>
					</div>

					<div style="margin-left: 0px;">
						<span>审核人：</span>
						 <input type="text" class="form-control" placeholder="查询经销商" name="" id="" value="" />
					</div>
					
					<div>
						<span>申请时间：</span>
						<input type="date"  class="form-control" name="" id="" value="" />&#150
						<input type="date"  class="form-control" name="" id="" value="" />
					</div>
					  
					   <div>
					   	<span>通过时间：</span>
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

				<button class="btn btn-default" onclick="">预存通过</button>
			</div>

		</div>

		<div class="ibox-content">

			<table class="table table-bordered">

				<thead>
					<tr>
						<th><input type="checkbox" name="" id="" value="" /></th>
						<th>序号</th>
						<th>预存单号</th>
						<th>预存金额</th>
						<th>信用金额</th>
						<th>到账方式</th>
						<th>支付方式</th>
						<th>支付证明</th>
						<th>状态</th>
						<th>申请人</th>
						<th>审核人</th>
						
						<th>申请时间</th>
						
						<th>通过时间</th>
						<th>操作</th>
						
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="checkbox"></td>
						<td>1</td>
						<td>564848978544</td>
						<td>10000:00</td>
						<td>0:00</td>
						<td>余额</td>
						<td>微信</td>
						<td><a href="">查看</a></td>
						<td>待审核</td>
						<td>79879</td>
						<td></td>
						<td>2017/12/12</td>
						<td></td>

						<td>
							<a href="">预存</a>/
							<a href="">修改订单</a>/
							<a href="">删除</a>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>2</td>
						<td></td>
						<td></td>
						<td></td>
						<td>信用</td>
						<td></td>
						<td><a href="">查看</a></td>
						<td>已预存</td>
						<td>79879</td>
						<td></td>
						<td>2017/12/12</td>
						<td></td>

						<td>
							<a href="">预存</a>/
							<a href="">修改订单</a>/
							<a href="">删除</a>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>1</td>
						<td></td>
						<td>10000:00</td>
						<td>-10000:00</td>
						<td>信用</td>
						<td></td>
						<td><a href=""></a></td>
						<td>待审核</td>
						<td></td>
						<td></td>
						<td></td>
						<td></td>

						<td>
							<a href="">预存</a>/
							<a href="">修改订单</a>/
							<a href="">删除</a>
						</td>
					</tr>
					<tr>
						<td><input type="checkbox"></td>
						<td>1</td>
						<td></td>
						<td></td>
						<td></td>
						<td>余额</td>
						<td></td>
						<td><a href=""></a></td>
						<td>已预存</td>
						<td></td>
						<td></td>
						<td></td>
                         <td></td>
						<td>
							<a href="">预存</a>/
							<a href="">修改订单</a>/
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