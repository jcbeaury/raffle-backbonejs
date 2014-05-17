window.RaffleBackbonejs =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new RaffleBackbonejs.Routers.Entries()
    Backbone.history.start()

$(document).ready ->
  RaffleBackbonejs.initialize()
