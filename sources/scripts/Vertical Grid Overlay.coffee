window.GridOverlay = (vHeight = 18, canvasId = "gridOverlayCanvas")->
  window.console.log("working")

  new_canvas = document.createElement("canvas")
  new_context = new_canvas.getContext("2d")
  new_canvas.id = canvasId

  this.setCanvasDimensions = ->
    new_canvas.width = document.body.offsetWidth
    new_canvas.height = document.body.offsetHeight

  this.drawGrid = ->
    y = 0.5
    while y < new_canvas.height
      new_context.moveTo(0, y)
      new_context.lineTo(new_canvas.height, y)
      y += vHeight

    new_context.strokeStyle = "#FAA"
    new_context.stroke()

  this.setStyles = ->
    cs = new_canvas.style
    cs.left = 0
    cs.opacity = 0.5
    cs.pointerEvents = "none"
    cs.position = "absolute"
    cs.top = 0
    cs.zIndex = 99999


  this.setCanvasDimensions()
  this.drawGrid()
  this.setStyles()
  document.body.appendChild(new_canvas)