<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<script type="text/javascript">
$(function(){
	//加载套餐列表
	var combo=$("#combo");
	combo.empty();
	var param={'page':1,'limit':10};
	$.getJSON("getComboList",param,function(result){
		if(result.code==0){
	
				 //debugger
			layer.msg("获取套餐列表成功");
			var data=result.data;
			for(var i=0;i<data.length;i++){
				var option="<option value="+data[i].id+" checked>"+data[i].name+"</option>";
				if(i==0){
					$("#comboName").val(data[i].name);
					$("#comboDesc").val(data[i].comboDesc);
				}
				combo.append(option);
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