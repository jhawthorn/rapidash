
class Rapidash.Widgets.List extends Rapidash.Widget
  render: ->
    template = Handlebars.templates['list.mustache']
    @node.innerHTML = template(@data(), {})

  renderItem: (item) ->
    if typeof item == 'string'
      item
    else
      JSON.stringify(item)

  data: ->
    title: @get 'title'
    list: (@renderItem(item) for item in @source.data)

