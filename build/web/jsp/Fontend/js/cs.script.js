/**
 * Look under your chair! console.log FOR EVERYONE!
 *
 * @see http://paulirish.com/2009/log-a-lightweight-wrapper-for-consolelog/
 */
(function(b){function c(){}for(var d="assert,count,debug,dir,dirxml,error,exception,group,groupCollapsed,groupEnd,info,log,timeStamp,profile,profileEnd,time,timeEnd,trace,warn".split(","),a;a=d.pop();){b[a]=b[a]||c}})((function(){try
{console.log();return window.console;}catch(err){return window.console={};}})());



/**
 * Page-specific call-backs
 * Called after dom has loaded.
 */
var GLOBAL = {

	common : {
		init: function(){



			$('.add_to_cart').bind( 'click', addToCart );
		}
	},

	templateIndex : {
		init: function(){

		}
	},

	templateProduct : {
		init: function(){

		}
	},

	templateCart : {
		init: function(){

		}
	}

}



/**
 * Fire function based upon attributes on the body tag.
 * This is the reason for "template{{ template | camelize }}" in layout/theme.liquid
 *
 * @see http://paulirish.com/2009/markup-based-unobtrusive-comprehensive-dom-ready-execution/
 */
var UTIL = {

	fire : function(func,funcname, args){
		var namespace = GLOBAL;
		funcname = (funcname === undefined) ? 'init' : funcname;
		if (func !== '' && namespace[func] && typeof namespace[func][funcname] == 'function'){
			namespace[func][funcname](args);
		}
	},

	loadEvents : function(){
		var bodyId = document.body.id;

		// hit up common first.
		UTIL.fire('common');

		// do all the classes too.
		$.each(document.body.className.split(/\s+/),function(i,classnm){
			UTIL.fire(classnm);
			UTIL.fire(classnm,bodyId);
		});
	}

};
$(document).ready(UTIL.loadEvents);


/*
** Fly image to Cart
*/
function flyToCart(imgobj, cart, time){

	if(imgobj){
		var imgsrc = imgobj.attr('src');

		imgobj.animate_from_to(cart, {
			pixels_per_second: time, 
			initial_css: {
				'image': imgsrc
			},
			callback: function(){
			}
		});
	}
}


/**
 * Popup notify add-to-cart
 */
function notifyProduct($info){
	var wait = setTimeout(function(){
		$.jGrowl($info,{
			life: 5000
		});	
	});
}


/**
 * Ajaxy add-to-cart
 */
function addToCart(e){

	if (typeof e !== 'undefined') e.preventDefault();

	var $this = $(this);

	var form = $this.parents('form');

	$.ajax({
		type: 'POST',
		url: '/cart/add.js',
		async: false,
		data: form.serialize(),
		dataType: 'json',
		error: addToCartFail,
		success: addToCartSuccess,
		cache: false
	});


}

function addToCartSuccess (jqXHR, textStatus, errorThrown){

	$.ajax({
		type: 'GET',
		url: '/cart.js',
		async: false,
		cache: false,
		dataType: 'json',
		success: updateCartDesc
	});
	
	if(jqXHR['image'] != null){
		var src =Bizweb.resizeImage(jqXHR['image'], 'small') ;
	}else{
		var src ='http://bizweb.dktcdn.net/thumb/medium/assets/themes_support/noimage.gif';
	}
	var $info = '<div class="row"><div class="col-md-4"><a href="'+ jqXHR['url'] +'"><img src="'+ src +'" alt="'+ jqXHR['title'] +'"/></a></div><div class="col-md-8"><div class="jGrowl-note">Sản phẩm đã cho <a href="/cart">Giỏ hàng</a></div><a class="jGrowl-title" href="'+ jqXHR['url'] +'">'+ jqXHR['name'] +'</a></div></div>';
	notifyProduct($info);

	// Let's get the cart and show what's in it in the cart box.	
	Bizweb.getCart(function(cart) {
		Bizweb.updateCartFromForm(cart, '.shopping_cart');		
	});
}

function addToCartFail(jqXHR, textStatus, errorThrown){
	var response = $.parseJSON(jqXHR.responseText);

	var $info = '<div class="error">'+ response.description +'</div>';
	notifyProduct($info);
}