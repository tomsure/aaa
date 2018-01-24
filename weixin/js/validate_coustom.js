$(function() {

			$('#form_box').validate({
				submitHandler: function() {
					$.ajax({
						url: 'demo1.php',
						type: 'post',
						//	   	  	data:sentData,

						dataType: 'text',
						beforeSend: function() {
							console.log('准备提交')

						},
						success: function(d) {
							
							$('#form_box').addClass('hide_toggle')
							$('#notice_box').removeClass('hide_toggle')
						},
						error: function(e) {
						
							console.log(e.status)
						}
					})
				},

				rules: {
					userName: {
						required: true
					},
					devNum: {
						required: true
					},
					telNum: {
						required: true
					},
					perNum: {
						required: true
					},
					sex: {
						required: true
					}

				},
				messages: {
					userName: {
						required: function() {

							//	   	  	     		 $('#userName').css('border','2px solid red')
							alert('请输入用户名！')
						}
					},
					devNum: {
						required: function() {
							//	   	  	     			$('#devNum').css('border','2px solid red')
							alert('请输入设备号码')
						}

					},
					sex: {
						required: function() {
							alert('请选择性别')
						}
					},
					telNum: {
						required: function() {
							//	   	  	     			$('#telNum').css('border','2px solid red')
							alert('请输入电话号码')
						}

					},
					perNum: {
						required: function() {
							//	   	  	     			$('#perNum').css('border','2px solid red')
							alert('请输入身份证号码')
						}

					}
				}
			})

			//登录验证
			//     登录验证		 
			$('#loginForm').validate({
				
					rules: {
						telNum: {
							required: true,
              
						},
						yanzhengma: {
							required: true
						}
					},
					messages: {
            
						telNum: {
							required: function(){
								  $('#telNum').removeAttr('placeholder')
//                 $('#telNum').css('left','0')
								   return "请输入账号"

							}
						},
							yanzhengma: {
								required:function(){
									$('#verificationCode').removeAttr('placeholder')
//								$('#verificationCode').css('left','0')
									return '请输入密码'
								}
						},
					},
						
						
						submitHandler: function() {

							var sentData = {
								'telphone': $('#telNum').val(),
								'verificationCode"': $('#verificationCode').val()
							}
							$.ajax({
								url: 'xxx',
								type: 'POST',
								dataType: 'json',
								data: sentData,
								success: function(d) {
									location.href = '../../html/personalCenter/personalCenter.html'
								},
								error: function(err) {
									console.log(err)
								}

							})
							location.href = '../../html/personalCenter/personalCenter.html'

						}
					})

			})