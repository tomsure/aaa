$(function() {
	// 菜单获取
	// $.ajax({
	// type : "POST",
	// url : "menu",
	// // data: "username="+name+"&password="+pass,
	// success : function(data) {
	// for (var i = 0; i < data.length-1; i++) {
	// $("#side-menu").append("<li><a href=''><i class='fa fa-table'></i><span
	// class='nav-label'>"+
	// data[data.length-1][i].menuName
	// +"</span><span class='fa arrow'></span></a><ul class='nav
	// nav-second-level' id='dx-" +
	// data[data.length-1][i].menuCode+"'></ul></li>");
	//				
	// for (var j = 0; j < data[i].length; j++) {
	// //console.log(data[i][j]);
	// $("#dx-"+data[data.length-1][i].menuCode+"").append("<li><a
	// class='J_menuItem' data-href='" +
	// data[i][j].dataUrl+"'>" +
	// data[i][j].menuName+"</a></li>");
	// }
	// }
	//			
	// }
	// });

	$('#side-menu').metisMenu();
	$(".J_menuItem").on('click', function() {
		var url = $(this).attr('data-href');
		var getdate = $(this).attr('getdata');
		$("#J_iframe").attr('src', url);
		$("#J_iframe").attr('data-id', getdate);
		// sessionStorageSave('src',{url:url});
		return false;
	});

	// var result = ajaxMethod('menu');
	// if(result.executeStatus === 0){
	// var mL=result.values;
	// //循环一级菜单
	// $.each(mL, function(i,j){
	// var html = "";
	// //var aa=ml[i].secondMenus;
	// var aa=result.values[i].secondMenus;
	//
	// html+= '<li>'
	// html+='<a href="'+j.menuUrl+'"><i class="fa fa-table"></i> <span
	// class="nav-label">'+j.menuName+' </span><span class="fa
	// arrow"></span></a>'
	// //循环二级菜单
	// $.each(aa, function(m, n){
	//              
	// html+= '<ul class="nav nav-second-level">'
	// html+= '<li><a class="J_menuItem" data-href="'+n.menuUrl+'"> '+n.menuName
	// +'</a></li>'
	// html+= '</ul>'
	// })
	// html+= '</li>'
	// $("#side-menu").append(html);
	// })
	// //下拉菜单
	// $('#side-menu').metisMenu();
	// $(".J_menuItem").on('click',function(){
	// var url = $(this).attr('data-href');
	// var getdate = $(this).attr('getdata');
	// //alert("4444");
	// //alert(getdate);
	// $("#J_iframe").attr('src',url);
	// $("#J_iframe").attr('data-id',getdate);
	// // sessionStorageSave('src',{url:url});
	// return false;
	// });
	// //F5刷新保持当前页面功能
	// var src = JSON.parse(sessionStorage.getItem('src'));
	// if(src){
	// $("#J_iframe").attr('src',src.url);
	// }else{
	// $("#J_iframe").attr('src','/welcome.html');
	// }
	// }else{
	// window.location.href="index.html";
	// }

	// MetsiMenu
	$('#side-menu').metisMenu();

	// 打开右侧边栏
	$('.right-sidebar-toggle').click(function() {
		$('#right-sidebar').toggleClass('sidebar-open');
	});

	// 固定菜单栏
	$(function() {
		$('.sidebar-collapse').slimScroll({
			height : '100%',
			railOpacity : 0.9,
			alwaysVisible : false
		});
	});

	// 菜单切换
	$('.navbar-minimalize').click(function() {
		$("body").toggleClass("mini-navbar");
		SmoothlyMenu();
	});

	// 侧边栏高度
	function fix_height() {
		var heightWithoutNavbar = $("body > #wrapper").height() - 61;
		$(".sidebard-panel").css("min-height", heightWithoutNavbar + "px");
	}
	fix_height();

	$(window).bind("load resize click scroll", function() {
		if (!$("body").hasClass('body-small')) {
			fix_height();
		}
	});

	// 侧边栏滚动
	$(window).scroll(function() {
		if ($(window).scrollTop() > 0 && !$('body').hasClass('fixed-nav')) {
			$('#right-sidebar').addClass('sidebar-top');
		} else {
			$('#right-sidebar').removeClass('sidebar-top');
		}
	});

	$('.full-height-scroll').slimScroll({
		height : '100%'
	});

	$('#side-menu>li').click(function() {
		if ($('body').hasClass('mini-navbar')) {
			NavToggle();
		}
	});
	$('#side-menu>li li a').click(function() {
		if ($(window).width() < 769) {
			NavToggle();
		}
	});

	$('.nav-close').click(NavToggle);

	// ios浏览器兼容性处理
	if (/(iPhone|iPad|iPod|iOS)/i.test(navigator.userAgent)) {
		$('#content-main').css('overflow-y', 'auto');
	}

});
function logOut() {
	
		//window.location.href = "index.html";
		$.ajax({
			type : "get",
			url : "logout",
			//data : "username=" + name + "&password=" + pass,
			success : function(data) {
				debugger;
				window.location.href = "/FeeSys/index.jsp";

			}
		});

}
$(window).bind("load resize", function() {
	if ($(this).width() < 769) {
		$('body').addClass('mini-navbar');
		$('.navbar-static-side').fadeIn();
	}
});

function NavToggle() {
	$('.navbar-minimalize').trigger('click');
}

function SmoothlyMenu() {
	if (!$('body').hasClass('mini-navbar')) {
		$('#side-menu').hide();
		setTimeout(function() {
			$('#side-menu').fadeIn(500);
		}, 100);
	} else if ($('body').hasClass('fixed-sidebar')) {
		$('#side-menu').hide();
		setTimeout(function() {
			$('#side-menu').fadeIn(500);
		}, 300);
	} else {
		$('#side-menu').removeAttr('style');
	}
}
// 弹窗
function layerMes(str) {
	layer.open({
		title : '提示信息',
		content : str
	});
}