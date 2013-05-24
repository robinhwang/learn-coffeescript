# root = global ? window
# root.aphorism = 'Fool me 8 or more times'

# do restoreOldAphorism = ->
#   aphorism = "Fool me once ,shame on you"
#   console.log aphorism
# console.log aphorism

# Genie = ->

# Genie.wishesLeft = 3

# Genie::grantWish = ->
#   if Genie.wishesLeft > 0
#     console.log "Your wish is granted"
#     Genie.wishesLeft--

# a = new Genie()
# console.log a.wishesLeft
# a.grantWish()
# console.log Genie.wishesLeft

(window ? global).property = 'global context'
@property = 'surrounding context'
class Foo
  constructor: -> @property = 'instance context'
  bar: => console.log @property

foo = new Foo
bar = foo.bar
foo.bar()
bar()