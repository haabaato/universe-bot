# Description:
#   Basic scripts that listen for a prompt and return an associated static message


module.exports = (robot) ->

  robot.hear /badger/i, (res) ->
    res.send "Badgers? BADGERS? WE DON'T NEED NO STINKIN BADGERS"

  robot.hear /I like pie/i, (res) ->
    res.emote "makes a freshly baked pie"

  robot.respond /universe/gim, (res) ->
    res.send "> GitHub is great, and Training Day is greater!!"

  robot.respond /Herbert/gim, (res) ->
    res.send " > That person is awesome sauce"

  robot.respond /fruit/gim, (res) ->
    res.send " > My favorites are apples and grapes."

  robot.respond /movie/gim, (res) ->
    res.send " > My favorite movie is The Wizard of Oz"

  robot.respond /lunch/gim, (res) ->
    res.send " > I want a peanut butter and jelly sandwich for lunch today."

  robot.respond /dance/gim, (res) ->
    res.send " > Shake it, shake shake it!"

  lulz = ['lol', 'rofl', 'lmao']

  robot.respond /lulz/i, (res) ->
    res.send res.random lulz

  robot.respond /deploy (\w*)/i, (res) ->
    target = res.match[1]
    if target is "production"
      res.reply "I'm afraid I can't let you do that. :knife:"
    else
      res.reply "Sure, deploying to #{target} now. :rocket:"
