$(function() {

  $("ul.sub").hide();
  $("ul.gnb li").hover(function() {
    $("ul:not(:animated)", this).slideDown("fast");
  }, function() {
    $("ul", this).slideUp("fast");
  });

});
