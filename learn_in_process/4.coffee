# countdown = [10..0]
# abortLaunch = -> false
# for num in countdown
#   break if abortLaunch()
#   if num is 0
#     console.log 'we have liftoff'
#   else
#   console.log "Launch abprted with #{num} seconds left"

x = [0..3]
for num in x
  do (x) ->
  setTimeout (-> console.log x), 2



