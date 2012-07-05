# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$('#currency-radio').change ->
  if $('#currency1').hasClass('active')
    $('.price1').show()
  else
    $('.price1').hide()
  if $("#currency2").hasClass('active')
    $('.price2').show()
  else
    $('.price2').hide()
  if $('#currency3').hasClass('active')
    $('.price3').show()
  else
    $('.price3').hide()

