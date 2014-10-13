
class Rapidash.Widgets.Graph extends Rapidash.Widget
  render: ->
    graph = new Rickshaw.Graph
      element: @node
      series: [
        color: 'steelblue',
        data: @source.data
      ]
    graph.render()

sample = Rapidash.getSource('sample')
sample.data = [
  { x: 0, y: 40 },
  { x: 1, y: 49 },
  { x: 2, y: 38 },
  { x: 3, y: 30 },
  { x: 4, y: 32 }
]

