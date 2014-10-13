
class Rapidash.Widgets.Graph extends Rapidash.Widget
  render: ->
    graph = new Rickshaw.Graph
      element: @node
      series: [
        color: 'steelblue',
        data: @source.data
      ]
    graph.render()

