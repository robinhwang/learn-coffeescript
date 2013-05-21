# setName = (name) -> @name = name
# setName = (@name) ->

# ringFireAlarm = (isDrill) ->
#   isDrill = true unless isDrill?

# ringFireAlarm = (isDrill) ->
#   isDrill ?= true

# ringFireAlarm = (isDrill = true) ->

# refine = (wheat, chaff...) ->
#   console.log "The best: #{wheat}"
#   console.log "The rest: #{chaff.join(' ')}"

# refine 'great', 'robin','is','cool'

spoiler = (filter..., theEnding) -> console.log "#{filter.join(' ')}"
spoiler 'robin', 'robin is cool', 'robin is fucking cool'