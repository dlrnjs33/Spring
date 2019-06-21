$(function(){

  var option_btn  = $('.subpage > div > .view .info > .summary .option button');
  var option_list = $('.subpage > div > .view .info > .summary .option .size > li > a');
  var option_category = $('.subpage > div > .view .info > .summary .option > div:visible');
  var options = new Array();
  var option_titles = new Array();
  var option_count = option_category.length;

  option_category.each(function(i){
    var category = $(this).attr('class').substring(4);
    options[i] = category;
  });

  var items = $('.subpage > div > .view .info > .summary .items > ul');

  var option_txt_size;


  option_btn.click(function(){
    var option_area = $(this).parent();

    var l = option_area.position().left;
    var t = option_area.position().top;

    if(option_area.hasClass('on')) {
      option_area.removeClass('on');
    }else{
      option_area.addClass('on');
    }
  });

  option_list.click(function(e){
    e.preventDefault();
    var className = $(this).parent().parent().attr('class');
    var txt = $(this).text();
    var parent = $(this).parent().parent().parent();
    var option_title = parent.find('.txt').text();
    parent.find('.txt').text(txt);
    parent.css('position', 'static');
    parent.removeClass('on');

    for(var i=0 ; i<options.length ; i++ ){
      if(options[i] == className){
        option_titles[i] = option_title;
        options[i] = txt;
        option_count--;
      }
    }

    if(option_count == 0){

      var option_full_txt = '';

      for(var i=0 ; i<options.length ; i++ ){
        if(i == options.length-1){
          option_full_txt += options[i];
        }else{
          option_full_txt += options[i]+' / ';
        }
      }

      var item  = '<li>';
      item += '<div class="title">';
      item += '<p>'+option_full_txt+'</p>';
      item += '<button class="close">X</button>';
      item += '</div>';
      item += '<div class="price">';
      item += '<span>';
      item += '<button class="decrease">-</button>';
      item += '<input type="text" class="num" value="1"/>';
      item += '<button class="increase">+</button>';
      item += '</span>';
      item += '<ins>32,000</ins>';
      item += '</div>';
      item += '</li>';

      items.append(item);

      //alert(option_titles);
      option_count = option_category.length;
      option_category.each(function(i){
        var category = $(this).attr('class').substring(4);
        options[i] = category;

        $(this).find('.txt').text(option_titles[i]);
      });

      var price = $('.subpage > div > .view .info > .summary .items .price ins');
      var total_price = $('.subpage > div > .view .info > .summary .total > span');
      var sum = 0;
      price.each(function(){
        var p = parseInt($(this).text().replace(',', ''));
        sum += p;
        total_price.text(sum.toLocaleString());
      });
    }
  });

})
