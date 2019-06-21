$(function() {
		
	var btnCart  = $('.btns > .cart');
	var price	 = $('.total > span');
	
	btnCart.click(function(){
		
		var totalPrice = price.text();
		
		if(totalPrice <= 0) {
			alert("옵션을 선택하세요.");
			return false;
		}
		
		var json = {
				"bc_uid" 	  : $('input[name=uid]').val(),
				"bc_code" 	  : $('input[name=code]').val(),
				"bc_name" 	  : $('input[name=name]').val(),
				"bc_count"	  : $('input[class=num]').val(),
				"bc_option"   : $('.title > p').val(),
				"bc_price" 	  : $('input[name=price]').val(),
				"bc_discount" : $('input[name=discount]').val(),
				"bc_total"	  : $('.total > span').text().replace(',','')
		};
		
		console.log('json : '+JSON.stringify(json));
		
		$.ajax({
			contentType : "application/json; charset=UTF-8",
			url			: '/brand/shop/cart.do',
			type		: 'post',
			data		: JSON.stringify(json),
			success		: function( result ){
				if( confirm('장바구니에 상품이 담겼슶니다. 확인하시겠습니까?') ) {
					location.href='/brand/shop/cart.do';
				}
			}
		});
		
	});
	
});