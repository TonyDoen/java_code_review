$(function(){
	li = $('.carousel li');
	leng = li.length-1;
	link = 1;
	interval = '';
	//将所有元素隐藏
	li.eq(0).fadeIn(2000);
	interval = setInterval('Imgauto()',5000);
	var n = leng+2;
	//添加按钮
	var str = '<ol class="numbutton">';
		for(var i=1;i<n;i++){
			str = str + '<li>'+i+'</li>';
		}
	var str = str+'</ol>';
	$('.banner').append(str);
	$('.numbutton li').eq(0).addClass('hoverimg');
	$('.numbutton li').live('click',function(){
		clearInterval(interval);
		li.fadeOut(1000);
		link=$(this).html()-1;
		$('.numbutton li').removeClass('hoverimg');
		$('.numbutton li').eq(link).addClass('hoverimg');
		li.eq(link).fadeIn(2000);
		link++;
		interval = setInterval('Imgauto()',5000);
	});
});
function Imgauto(){
	if(link>leng){
		link = 0;
	}
	//将所有元素隐藏
	li.fadeOut(1000);
	li.eq(link).fadeIn(2000);
	$('.numbutton li').removeClass('hoverimg');
	$('.numbutton li').eq(link).addClass('hoverimg');
	link++;
}