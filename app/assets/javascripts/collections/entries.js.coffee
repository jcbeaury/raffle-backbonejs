class RaffleBackbonejs.Collections.Entries extends Backbone.Collection

  model: RaffleBackbonejs.Models.Entry

  url: '/api/entries'

  drawWinner: ->
    winner = @shuffle()[0]
    winner.win() if winner
