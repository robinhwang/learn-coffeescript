
# reincarn = -> age = 0

# reincarn()
# console.log "#{age}"
# singCountdown = (count) ->
#   bottleCount = (location) ->
#     locationStr = if location then 'on the wall' else ''
#     bottleStr = if count is 1 then 'bottle' else 'bottles'
#     console.log "#{count} #{bottleStr} of beer #{locationStr}"
#   Decrement = ->
#     console.log "Take down one"
#     count--
#   bottleCount true; bottleCount false
#   Decrement(); bottleCount true
#   if count isnt 0 then singCountdown count

# singCountdown 5


setName = (name) -> @name = name
# cat = {}
# cat.setName = setName
# cat.setName 'robin'
# console.log cat.robin

# pig  = {}
# setName.apply pig, ['Babe']
# setName.call pig, 'Babe'
# console.log pig.name
# horse = {}
# cat.setName.apply horse, ['Mr B']
# console.log horse.name
Dog = setName
dog1 = new Dog('jack')
dog2 = new Dog('whooa')
console.log dog1.name
console.log dog2.name