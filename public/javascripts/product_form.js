$(document).ready(function() {
  $('#new_category').bind('click', function(){
    var category = prompt("Digite o nome da categoria");
    var option = ['<option value="',category,'" selected="selected">',category,'</option>'].join('');
    $('#product_category').append(option);
  });
});
