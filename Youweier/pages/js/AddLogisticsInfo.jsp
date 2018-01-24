<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<script type="text/javascript">
		//保存物流信息
		//监听表单提交
layui.use('form', function(){
	  var form = layui.form;
	  form.on('submit(formDemo2)',function(){
				var url="addLogisticsInformation";
				// debugger;
				var param=$("#form2").serialize();
				console.log(param);
				console.log($("#form2").data());
				$.post(url,param,function(result){
					var index=$("#deliverGoodsModal").data("index");
					layer.close(index);
					if(result.code==0){
						layer.msg("保存物流信息成功");
					}else{
						layer.msg(result.msg);
					}
				});
			}); 
});
</script>