$(function(){
         //页面登录
          $('#getNum').click(function(){
       var countdown=60;
function settime() { 
			if (countdown == 0) { 
					  $('#getNum').removeAttr("disabled"); 
					
					   $('#getNum').text("免费获取验证码"); 
					countdown = 60; 
					return;
			} else { 
						$('#getNum').attr("disabled",true)
						$('#getNum').text("重新发送(" + countdown + ")"); 
						countdown--; 
					} 
			setTimeout(function() { 
					settime( ) }
					,1000) 
			
			}
         settime()
   
		      $.ajax({
		      	type:"post",
		      	url:"",
		      	async:true,
		      	data:{'telphone':$('#telphone').val()},
		      	dataType:'json',
		      	success:function(){
		      		  
		      	}
		      	
		      });
		})
			
			 
	  
			
			  
			
			
		  			  		  	//套餐变更
		  	$('#select_packge').click(function(){
//         $('.picker-item').addClass('selecttextRow')
//		  		FastClick.attach(document.body);
//		  		  $('#mobile').picker({
	             $('#mobile').picker({
//      title: "请选择您的手机",
        cols: [
          {
            textAlign: 'center',
            values: ['月流量包', '季流量包', '半年流量包', '年流量包', '叠加包']
          }
        ],
       
      });
		  	})
		  	 
		  	//流量退费
		    $('#refundBtn').click(function(){
		    	$('#myModal').modal('hide')
		     }); 
		      
		  	
  //套餐变更
     $('.handleModalBtn').find('button').eq(1).text('确定');
     $('.handleModalBtn').find('button').eq(1).click(function(){
     	   $('#myModal').modal('hide')
     	   $(this).attr('data-toggle','modal').attr('data-target','#myModal1').addClass('btn-primary').addClass('btn-lg')
     })
     
     $('#button_ok').click(function(){
     	  $('#myModal1').modal('hide')
     })

		    $('#devBox').click(function(){
		    	$('.zhedie').fadeIn(1000)
		    })
		   
   
		  	//流量充值
		  	$('.chargeRow').children().children('p').addClass('text_move')
		  	$('#chargeContent >.chargeRow > div' ).click(function(e){
		
		  		  $(e.target).parent('.textb').children('.triangle-topleft').css('visibility','visible')
		  		   $(e.target).parent('.textb').siblings().children('.triangle-topleft').css('visibility','hidden')
		  		   $(e.target).parent('.textb').parent().siblings().children().children('.triangle-topleft').css('visibility','hidden')
		  		   
		  		$(e.target).parent('.textb').addClass('chargeColor')
//      
           	$(e.target).parent('.textb').siblings().removeClass('chargeColor')  
           	$(e.target).parent('.textb').parent().siblings().children().removeClass('chargeColor')
		  	    	
		  		
           	  
		  		
		  	})
		  	
//		  	云中心
         $('#passwd').click(toPasswd)
                     function toPasswd(){
                     	$('#textInput').attr('type','password')
                     	$('#passwd').click(toText)
                     	}
						        
			         	    function toText(){
			         	    	$('#textInput').attr('type','text')
			         	    	$('#passwd').click(toPasswd)
			         	    	}


       $('#iconBtn').click(function(){
       	
//     	  $(this).css('background-color','white')
       	  $('#iconbtn1').toggleClass('toggleBtn')
       	   if($('#iconbtn1').hasClass('toggleBtn')){
       	   	  $('#iconBtn').css('background-color','#26A6FF')
//     	   	  $('#iconbtn1').css('background-color','gray')
       	   }else{
       	   	 $('#iconBtn').css('background-color','lightgray')
       	   }
       })
   
        $('#chargeBtn').click(function(){
        
        	  location.href='../myDevice/flowRecharge.html'
        	  
        })
        $('#devSwitch').click(function(){
        	
        	  location.href='../myCard/BindingsCard.html'
        	  
        })
        $('#renewalsRecords').click(function(){
        	 location.href='../personalCenter/renewalsRecords.html'
        })
        $('#flowUsage').click(function(){
        	 location.href='flowUsage.html'
        })
        
        //设备认证-认证进度
          $('#prog').click(function(){
          	 
          	 $.ajax({
          	 	url:'demo2.php',
          	 	dataType:'text',
          	 	type:'get',
          	 	success:function(d){
          	 		   if(d=='auditting'){
          	 		   	 $('.auditting').removeClass('hide_toggle')
          	 		   }else if(d=='auditPass'){
          	 		   	  $('.auditPass').removeClass('hide_toggle')
          	 		   }else if(d=='auditNotpass'){
          	 		   	  $('.auditNotpass').removeClass('hide_toggle')
          	 		   }
          	 	},
          	 	error:function(err){
          	 		  alert(err)
          	 	}
          	 })
          	
          })
     
       $('#zhuxiao').click(function(){
       	   layer.open({
       	   	 content:'你确定注销吗？',
       	   	 style:'font-size:0.5rem;',
       	   	 btn:['确定','取消'],
       	   	 yes:function(){
       	   	 	  $.ajax({   //发送注销请求
       	   	 	  	url:'',
       	   	 	  	type:'post',
       	   	 	  	data:'cancellation',
       	   	 	  	dataType:'',
       	   	 	  	success:function(d){
       	   	 	  		   layer.open({
       	   	 	  		   	  type:'0',
       	   	 	  		   	  content:'已注销',
       	   	 	  		   	  time:3
       	   	 	  		   })
       	   	 	  	}
       	   	 	  })
                	layer.open({
       	   	 	  		   	  type:'0',
       	   	 	  		   	  content:'已注销,页面即将退出',
       	   	 	  		   	  style:'font-size:0.5rem;',
       	   	 	  		   	  time:2
       	   	 	  		   })
       	   	 	   function tiaozhuan(){
       	   	 	   	location.href='../../html/QRcode/NotLoggedIn.html'
       	   	 	   }
       	   	 	   setTimeout(tiaozhuan,2000)
       	   	     clearTimeout(tiaozhuan)
       	   	 }
       	   })
       	   
       })
      
           //退出页面
  	      
		  	$('#logout').click(function() {
			
				layer.open({
					type: 0,

					area:['3.5rem','3.5rem'],
					style: 'height:3.5rem;width:8.5rem;font-size:0.5rem;',
					content: '你确定退出账户吗？',
					btn: ['确定', '取消'],
					yes: function() {
						location.href="../../html/QRcode/NotLoggedIn.html"
					}

				})
               
		  })
       
       $('#tingfuji').click(function(){
       	  
       })
       
       //设备报修
        $('#baoxiuBtn').click(function(){
//      	  alert(1)
        })
       
})