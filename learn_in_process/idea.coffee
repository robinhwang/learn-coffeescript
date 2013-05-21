stdin = process.openStdin()
stdin.setEncoding 'utf8'

inputCallback = null
stdin.on 'data', (input) -> inputCallback input

promptForTilel1 = ->
  console.log "Please enter your first tile"
  inputCallback = (input) ->
    promptForTilel2() if strToCoordinates input

promptForTilel2 = ->
  console.log "Please enter your second tile"
  inputCallback = (input) ->
    if strToCoordinates input
      console.log "Swapping tile...don"
      promptForTilel1()

GRID_SIZE = 5
inRange = (x, y) ->
  0 <= x < GRID_SIZE and 0 <= y < GRID_SIZE

isInteger = (num) ->
  num is Math.round num

strToCoordinates = (input) ->
  halves = input.split(',')
  if halves.length is 2
    x = parseFloat halves[0]
    y = parseFloat halves[1]
    if !isInteger(x) or !isInteger(y)
      console.log "Each coordinate must be an Integer"
    else if not inRange x-1, y-1
      console.log "Each coordinate must be between 1 and #{GRID_SIZE}"
    else
      {x ,y}
  else
    console.log 'input must be of form `x, y`'

console.log "Welcome to 5*5"
promptForTilel1()