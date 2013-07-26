// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
//= require bootstrap


$('#search_form').submit(function () {
  if($("#search").val().length === 0) {
    $(".alert").alert();
    $('#search_form').after('<div class=\"alert fade in\" style=\"clear:both\"><strong>Enter something!</strong></div>');
    $('.alert').delay(2000).fadeOut(); 
    return false;
  }
  else {
    $.get(this.action, $(this).serialize(), null, 'script');
    return false;
  }

});

$(document).ajaxStart(function() {
  $('#loading').show();
});
$(document).ajaxStop(function() {
  $('#loading').hide();
});
