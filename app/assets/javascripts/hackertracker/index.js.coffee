#= require ./lib/hoverintent
#= require ./lib/namespaces
#= require_tree ./views
#= require_tree ./models
#= require_tree ./controllers
#= require_self

$ -> 
  logo1 =
    over: ->
      $('.logo-glow.blue').css "opacity", 1
    timeout: 50
    out: ->
      $('.logo-glow.blue').css "opacity", 0
  $('#logo a').hoverIntent(logo1);
    
  # $('body').append "<h1>HackerTracker</h1>"