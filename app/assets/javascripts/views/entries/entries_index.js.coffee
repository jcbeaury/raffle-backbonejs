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
    attributes = name: $('#new-entry-name').val()
    @collection.create attributes,
      success: -> $('#new-entry')[0].reset()
      error: @handleError

  handleError: (entry, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{message}" for message in messages
