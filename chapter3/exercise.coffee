# once = ->
#   if once.hasRun
#     null
#   else
#     once.hasRun
#     [1,2,3]
# console.log x for x in once()

# for x in [1,2,3]
#   do (x) ->
#     setTimeout (-> console.log x), 50

objContains = (obj, val) ->
  for k, v of obj
    if v is val
      return true
  false

doAndRepeatUnil = (func, end) ->
  func.call this
  func.call this until end()

Math.min.apply Math, (w.length for w in wordslist)