#= require jquery/jquery.js
#= require sass-bootstrap/js/transition
#= require sass-bootstrap/js/carousel

$(document).ready ->

  #$("#cinemacarousel").carousel()
  $("#cinemacarousel").on "slide.bs.carousel", ->
    $("#cinemacarousel .preview img").delay( 300 ).fadeTo(0, 0)
    $("#cinemacarousel .preview img").delay( 500 ).fadeTo("slow", 1)
    return


(($) ->
  $.fn.visible = (partial) ->
    $t = $(this)
    $w = $(window)
    viewTop = $w.scrollTop()
    viewBottom = viewTop + $w.height()
    _top = $t.offset().top
    _bottom = _top + $t.height()
    compareTop = (if partial is true then _bottom else _top)
    compareBottom = (if partial is true then _top else _bottom)
    (compareBottom <= viewBottom) and (compareTop >= viewTop)
  return
) jQuery

win = $(window)
allMods = $(".slidemodule")
allMods.each (i, el) ->
  el = $(el)
  el.addClass "slidemodule-already-visible"  if el.visible(true)
  return

win.scroll (event) ->
  allMods.each (i, el) ->
    el = $(el)
    el.addClass "slidemodule-in"  if el.visible(true)
    return
  return
