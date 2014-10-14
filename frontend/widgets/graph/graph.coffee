
class Rapidash.Widgets.Graph extends Rapidash.Widget
  render: ->
    graph = new Rickshaw.Graph
      element: @node
      renderer: @get('renderer') or 'line',
      series: @series()
    graph.render()

  series: ->
    data = @source.data
    if Array.isArray(data)
      [
        color: 'steelblue',
        data: @source.data
      ]
    else
      console.log(data)
      for name, series of data
        color: 'steelblue',
        name: name,
        data: series

