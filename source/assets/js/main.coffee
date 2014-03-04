#= require jquery/jquery.js
#= require ajaxchimp/jquery.ajaxchimp
#= require sass-bootstrap/js/transition
#= require sass-bootstrap/js/carousel

$(document).ready ->
  $("#mailchimpform").ajaxChimp
    url: "http://wejustdostuff.us7.list-manage.com/subscribe/post?u=9d88ce76bb9c9bb3bea3601f0&id=2e63c2f86c"

  #$("#cinemacarousel").carousel()
  $("#cinemacarousel").on "slide.bs.carousel", ->
    $("#cinemacarousel .preview img").delay( 300 ).fadeTo(0, 0)
    $("#cinemacarousel .preview img").delay( 500 ).fadeTo("slow", 1)
    return
  
 