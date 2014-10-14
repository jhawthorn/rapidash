
class Rapidash.Widgets.Graph extends Rapidash.Widget
  render: ->
    graph = new Rickshaw.Graph(@graphOptions())
    graph.render()

  graphOptions: ->
    options = JSON.parse(@get('options'))
    options.element = @node
    options.renderer = @get('renderer') or 'line'
    options.series = @series()
    options

  series: ->
    data = @source.data
    palette = new Rickshaw.Color.Palette(scheme: 'colorwheel')
    if Array.isArray(data)
      [
        color: palette.color()
        data: @source.data
      ]
    else
      for name, series of data
        color: palette.color()
        name: name
        data: series

