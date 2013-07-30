# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$("#search_form").submit ->
  if $("input").val().length is 0
    $(".alert").alert()
    $("#search_form").after "<div class=\"alert fade in\" style=\"clear:both\"><strong>Enter something!</strong></div>"
    $(".alert").delay(2000).fadeOut()
    false
  else
    $.get @action, $(this).serialize(), null, "script"
    false

$(document).keypress (e) ->
  if $("input").val().length > 0
    $("#loading").show()  if e.which is 13


$(document).ajaxStart ->
  $("#loading").show()

$(document).ajaxStop ->
  $("#loading").hide()
