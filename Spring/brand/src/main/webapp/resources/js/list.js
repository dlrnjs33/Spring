$(function () {
			
	var orderMenu = $('.list > .sort > li > a');
	var section = $('.list > section');
	
	orderMenu.click(function(e) {
		e.preventDefault();
		var url = $(this).attr('href');
		
		$.getJSON(url, function( json ) {

			section.empty();
			
			$.each(json, function(k ,v){
				
				
				var tg1 = "<article><div class='thumb'>\
	                		<a href='/brand/shop/view.do?code=${ v.bp_code }'><img src="+v.bp_thumb+" alt='신상품사진' /></a>\
	                	  </div>\
	                		<h3><a href='/brand/shop/view.do?code=${ v.bp_code }'>"+v.bp_name+"</a></h3>\
	                	  <div class='price'>\
	                		<del>"+v.bp_price.toLocaleString()+"</del>\
	                		<ins>"+v.bp_dc_price.toLocaleString()+"</ins>\
	                	  </div>\
	                	  </article>";

				var tg2 = "<article><div class='thumb'>\
            		<a href='/brand/shop/view.do?code=${ v.bp_code }'><img src="+v.bp_thumb+" alt='신상품사진' /></a>\
            	  </div>\
            		<h3><a href='/brand/shop/view.do?code=${ v.bp_code }'>"+v.bp_name+"</a></h3>\
            	  <div class='price'>\
            		<ins>"+v.bp_dc_price.toLocaleString()+"</ins>\
            	  </div>\
            	  </article>";
				
				if(v.bp_discount > 0){
					section.append(tg1);	
				} else {
					section.append(tg2);
				}
				
			});
			
		});
		
	});
	
});