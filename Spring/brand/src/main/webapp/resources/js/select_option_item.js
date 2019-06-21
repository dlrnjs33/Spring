$(function(){

  var closeBtn = '.subpage > div > .view .info > .summary .items .title  > button';
  var decrease = '.subpage > div > .view .info > .summary .items .price .decrease';
  var increase = '.subpage > div > .view .info > .summary .items .price .increase';
  var input = $('.subpage > div > .view .info > .summary .items .price input');
  var total_price = $('.subpage > div > .view .info > .summary .total > span');
  var price_per_item = $('.subpage > div > .view .info > .summary .dis_price > ins').text();
  var price_no_comma = price_per_item.replace(',', '');


  total_price.text(0);

  $(document).live('click', closeBtn, function() {
    $(this).parent().parent().remove();

    var price = $('.subpage > div > .view .info > .summary .items .price ins');
    var sum = 0;

    if(price.length == 0){
      total_price.text(0);
    }

    price.each(function(i){
      var p = parseInt($(this).text().replace(',', ''));
      sum += p;
      total_price.text(sum.toLocaleString());
    });

  });
  

  $(document).live('click', increase, function(){
    calcPrice($(this), 'increase');
  });
  
  $(document).live('click', decrease, function(){
    calcPrice($(this), 'decrease');
  });

  function calcPrice( tg, op ){
    var price = $('.subpage > div > .view .info > .summary .items .price ins');
    var span = tg.parent();
    var num = span.find('>.num').val();

    if(op == 'increase'){
      num = ++num;
    }else if(op == 'decrease'){
      num = --num;
    }

    span.find('>.num').val(num);

    var total = num*parseInt(price_no_comma);
    span.parent().find('>ins').text(total.toLocaleString());

    var sum = 0;
    price.each(function(){
      var p = parseInt($(this).text().replace(',', ''));
      sum += p;
      total_price.text(sum.toLocaleString());
    });
  }
})
