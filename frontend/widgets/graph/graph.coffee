
class Rapidash.Widgets.Graph extends Rapidash.Widget
  render: ->
    graph = new Rickshaw.Graph
      element: @node
      renderer: @get('renderer') or 'line',
      series: @series()
    graph.render()

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

