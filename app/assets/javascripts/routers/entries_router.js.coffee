class RaffleBackbonejs.Routers.Entries extends Backbone.Router
  routes:
    '': 'index'
    'entries/:id': 'show'

  initialize: ->
    @collection = new RaffleBackbonejs.Collections.Entries()
    @collection.reset($('#container').data('entries'))

  index: ->
    view = new RaffleBackbonejs.Views.EntriesIndex(collection: @collection)
    $('#container').html(view.render().el)

  show: (id) ->
    alert "Entry #{id}"
