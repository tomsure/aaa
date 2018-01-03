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
		  	
		  			 //流量退费
		    $('#refundBtn').click(function(){
		    	$('#myModal').modal('hide')
		     }); 
		    
		  })
  //套餐变更
     $('.handleModalBtn').find('button').eq(1).text('确定');
     $('.handleModalBtn').find('button').eq(1).click(function(){
     	   $('#myModal').modal('hide')
     	   $(this).attr('data-toggle','modal').attr('data-target','#myModal1').addClass('btn-primary').addClass('btn-lg')
     })
     
     $('#button_ok').click(function(){
     	  $('#myModal1').modal('hide')
     })

		  	
		  })
		  	

		  	

