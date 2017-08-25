$(document).ready(function() {
  $('#first_li').click(function() {
    $(this).fadeOut();
  });

  $('#hidden_header').hide();
  $('#third_li').click(function() {
    $('li').hide();
    $('#hidden_header').toggle();
  });
  $('#second_li').click(function() {
    $(this).css('color', 'blue');
  });

});
