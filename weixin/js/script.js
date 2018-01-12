  $(function(){
  	  
		  	$('#logout').click(function(){
		  	layer.open({
			type:0,
		   
//			area:['3.5rem','3.5rem'],
			style:'height:3.5rem;width:8.5rem;font-size:0.5rem;',
			content:'你确定退出账户吗？',
			btn:['确定','取消'],
			btn1:function(){
				alert(1)
			}
			
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
		   
   
		  	//充值缴费
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
       	   	  $('#iconBtn').css('background-color','lightgray')
//     	   	  $('#iconbtn1').css('background-color','gray')
       	   }else{
       	   	 $('#iconBtn').css('background-color','#26A6FF')
       	   }
       })
   
     
})