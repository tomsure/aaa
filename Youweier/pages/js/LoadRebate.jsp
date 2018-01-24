<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<script type="text/javascript">
$(function(){
//加载返佣列表
var rebate=$("#rebateRuleId");
rebate.empty();
var param={'page':1,'limit':10};
$.getJSON("getRebateRuleList",param,function(result){
	if(result.code==0){
	
	layer.msg("获取返佣列表成功");
	var data=result.data;
	for(var i=0;i<data.length;i++){
		// debugger
		var option="<option value="+data[i].id+" checked>"+data[i].name+"</option>";
		if(i==0){
			$("#rebateTypeId").val(data[i].rebateType);
			$("#rebateNumId").val(data[i].rebateNum);
		}
		rebate.append(option);
	}
	 layui.use('form', function(){
		  var form = layui.form;
		form.render(); //更新全部
		}); 
}else{
	layer.msg(result.msg);
}
});
});
</script>