#console.log do -> 'Hello'
#do just means to execute the next function, has nothing to do with the do...while loop

# greeting = (sub) -> "hello. function here #{sub} makes it"
# console.log greeting 'robin'

# odd = (num) ->
#   if typeof num is 'number'
#     if num is Math.round num
#       if num > 0
#         num % 2 is 1
#         console.log "true"
#       else
#         throw "#{num} is not positive"
#     else
#       throw "#{num} is not a integer"
#   else
#     throw "#{num} is not a number"

odd = (num) ->
  unless typeof num is 'number'
    throw "#{num} is not a number"
  unless num is Math.round num
    throw "#{num} is not a integer"
  unless num > 0
    throw "#{num} is not positive"
  if num % 2 is 1
    console.log 'true'
  else
    console.log 'false'


try
  odd 4.1
catch e
  console.log e