clearArray = (arr) ->
  arr.splice 0, arr.length
  arr

clearArray = (arr) ->
  arr.splice 0, arr.length
  return

run = (func, a...) -> func.apply this, a
run = (func, a...) -> func.call this, a...