noflo = require 'noflo'

exports.getComponent = ->
  c = new noflo.Component

  c.icon = 'cog'

  c.description = 'Create an environment to play received SynthDefs and Patterns'

  c.inPorts.add 'play',
    datatype: 'bang'
    process: (event, payload) ->
      return unless event is 'data'
      console.log 'FLOCK', flock
      flock.enviro.shared.play()

  c
