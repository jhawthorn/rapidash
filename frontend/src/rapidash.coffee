window.Rapidash =
  Widgets: {}
  Sources: {}
  getSource: (name) ->
    Rapidash.Sources[name] ||= new Rapidash.Source()

class Rapidash.Source

class Rapidash.Widget
  constructor: (@node) ->
    @source = Rapidash.getSource(@get('source'))

  get: (attr) -> @node.getAttribute(attr)

document.addEventListener 'DOMContentLoaded', ->
  for el in document.getElementsByTagName('widget')
    type = el.getAttribute('type')
    widget = new Rapidash.Widgets[type](el)
    widget.render()
