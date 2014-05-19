window.RaffleBackbonejs =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new RaffleBackbonejs.Routers.Entries()
    Backbone.history.start(pushState: true)

$(document).ready ->
  RaffleBackbonejs.initialize()
