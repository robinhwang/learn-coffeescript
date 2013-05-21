xInContext = ->
  console.log @x

what = { x: 'q'}
xInContext.apply what
xInContext.call what