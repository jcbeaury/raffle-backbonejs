class RaffleBackbonejs.Views.EntriesIndex extends Backbone.View

  template: JST['entries/index']

  events:
    'submit #new-entry': 'createEntry'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendEntry, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendEntry)
    this

  appendEntry: (entry) ->
    view = new RaffleBackbonejs.Views.Entry(model: entry)
    $('#entries').append(view.render().el)

  createEntry: (event) ->
    event.preventDefault()
    @collection.create name: $('#new-entry-name').val()
    $('#new-entry')[0].reset()
