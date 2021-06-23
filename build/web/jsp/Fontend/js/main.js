$(document).ready(function(){
	$('.moreview_small_thumbs').css({'height':(($('.moreview_small_thumbs ul').height()))+'px'});
	var result_thumb = $(".moreview_small_thumbs").height();
	var result_big = $(".moreview_thumb thumb_1").height();	
	if (result_big < result_thumb){
        $('.moreview_small_thumbs').addClass('test');
    }
	$('.moreview-control').css({'height':(($('.moreview_thumb_active').height()))+'px'});
	$('.moreview_small_thumbs').css({'height':(($('.moreview_thumb_active').height()))+'px'});
	$('.moreview_small_thumbs ul').css({'height':(($('.moreview_thumb_active').height()))+'px'});
});