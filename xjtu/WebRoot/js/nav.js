$(function(){
	var navdt = $('#nav dt');
	var navdd = navdt.next();
	var time = '';
	navdt.hover(function(){
		clearTimeout(time);
		navdd.slideUp(50);
		navdt.removeClass('hove');
		$(this).addClass('hove');
		$(this).next('dd').slideDown(300);
	},function(){
		time = setTimeout(function(){
			navdt.removeClass('hove');
			navdd.slideUp(50);
		},500);
	});
	$('#nav ul li a').hover(function(){
		clearTimeout(time);
	},function(){
		time = setTimeout(function(){
			navdt.removeClass('hove');
			navdd.slideUp(50);
		},500);
	});
});