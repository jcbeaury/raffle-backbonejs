class RaffleBackbonejs.Collections.Entries extends Backbone.Collection

  model: RaffleBackbonejs.Models.Entry

  url: '/api/entries'

  drawWinner: ->
    winner = @shuffle()[0]
    if winner
      winner.set(winner: true)
      winner.save()
