class Header extends Backbone.View
  el: '#header'
  initialize: ->
    _.bindAll @, 'onScroll'  
    $(window).scroll @onScroll
  onScroll: ->
    @$el.toggleClass "scrolled", $(document).scrollTop()>80
    @$el.toggleClass "ease-out", $(document).scrollTop()>480

window.header = new Header()