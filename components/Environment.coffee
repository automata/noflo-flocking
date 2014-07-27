noflo = require 'noflo'
flock = require '../vendor/flocking-no-jquery'

console.log 'flock?', flock

exports.getComponent = ->
  c = new noflo.Component

  c.icon = 'music'

  c.description = 'Create an environment to play received SynthDefs'

  c.inPorts.add 'play',
    datatype: 'bang'
    process: (event, payload) ->
      return unless event is 'data'
      console.log 'flock?', flock
      flock.enviro.shared.play()

  c
