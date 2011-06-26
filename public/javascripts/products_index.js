$(document).ready(function() {
  $('#filter').bind('keyup', function(){
    var query = new RegExp('\.*' + this.value.toLowerCase() + '\.*');
    $('.product-name').each(function(i, e){
      console.log($(e).parent())
      if($(e).text().toLowerCase().match(query)) {
        $(e).parent().css('display', '');
      }
      else {
        $(e).parent().css('display', 'none');
      }
    });
  });
});
