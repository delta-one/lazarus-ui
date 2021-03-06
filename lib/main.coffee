root = document.documentElement

module.exports =
  activate: (state) ->
    atom.config.observe 'lazarus-ui.fontSize', (value) ->
      setFontSize(value)

    atom.config.observe 'lazarus-ui.layoutMode', (value) ->
      setLayoutMode(value)

  deactivate: ->
    unsetFontSize()
    unsetLayoutMode()

# Font Size
setFontSize = (currentFontSize) ->
  if Number.isInteger(currentFontSize)
    root.style.fontSize = "#{currentFontSize}px"
  else if currentFontSize is 'Auto'
    unsetFontSize()

unsetFontSize = ->
  root.style.fontSize = ''

# Layout Mode
setLayoutMode = (layoutMode) ->
  root.setAttribute('theme-lazarus-ui-layoutmode', layoutMode.toLowerCase())

unsetLayoutMode = ->
  root.removeAttribute('theme-lazarus-ui-layoutmode')
