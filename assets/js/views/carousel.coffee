class Carousel extends Backbone.View
  el: "#top-slider"
  events: 
    "click .carousel-indicators li": "onSlide"
    'swipe': 'onSwipe'
  initialize: ->
    @carousel = @$ ".carousel"
    @slides = @carousel.find "figure"
    @controller = @$ ".carousel-indicators"
    @initCss()
  initCss: ->
    len = @slides.length
    _.each @slides, (slide, index)->
      $(slide).css 
        "-webkit-transform": "rotateY( " + index*360/len + "deg ) translateZ( "+Math.ceil(Math.tan(180/len)*1000)+"px )"
        "-moz-transform": "rotateY( " + index*360/len + "deg ) translateZ( "+Math.ceil(Math.tan(180/len)*1000)+"px )"
    @controller.find("li:eq(0)").addClass "active"
  onSlide: (e)->
    index = $(e.currentTarget).index()
    if not $(e.currentTarget).hasClass "active"
      @controller.find("li").removeClass "active"
      @controller.find("li").eq(index).addClass "active"
      @carousel.css 
        "-webkit-transform": "rotateY( "+-index*360/@slides.length+"deg )"
        "-moz-transform": "rotateY( "+-index*360/@slides.length+"deg )"
      if /msie/.test navigator.userAgent.toLowerCase()
        $(@slides.hide()[index]).show();
  onSwipe: (e)->
    index = @controller.find("li.active").index()
    if e.direction is 'right'
      @controller.find("li").eq((index+1) % 3).trigger "click"
    if e.direction is 'left'
      @controller.find("li").eq((index+2) % 3).trigger "click"
      

window.carousel = new Carousel()