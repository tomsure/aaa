/**
 * 
 */
$(document).ready(function(){
	$("#login").click(function(){
		//用户名正则，4到16位（字母，数字，下划线，减号）
		var uPattern = /^[a-zA-Z0-9_-]{6,16}$/;
		//输出 true
		console.log(uPattern.test("iFat3"));
		//密码强度正则，最少6位，包括至少1个大写字母，1个小写字母，1个数字，1个特殊字符
		var pPattern = /^.*(?=.{6,})(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*? ]).*$/;
		//输出 true
		console.log(pPattern.test("iFat3#"));
		var name=$("#username").val();
		var pass=$("#password").val();
		if(name==""){
			alert("用户不可以为空");
			return;
		}
		if(pass==""){
			alert("密码不可以为空");
			return;
		}
//		if(uPattern.test("iFat3")!=true){
//			alert("用户名必须为6到16位（字母，数字，下划线，减号）");
//			return;
//		}
//		if(pPattern.test("iFat3#")!=true){
//			alert("密码由最少6位，包括至少1个大写字母，1个小写字母，1个数字，1个特殊字符组成");
//			return;
//		}
		$("#form").submit();
//		 $.ajax({
//             type: "POST",
//             url: "login",
//             data: "username="+name+"&password="+pass,
//             success: function(data){
//            	 alert(data);
//                     
//                }
//          });
	  });
});