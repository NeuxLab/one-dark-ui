root = document.documentElement
themeName = 'one-dark-ui'

module.exports =
  activate: (state) ->
    cc.config.observe "#{themeName}.fontSize", (value) ->
      setFontSize(value)

    cc.config.observe "#{themeName}.tabSizing", (value) ->
      setTabSizing(value)

  deactivate: ->
    unsetFontSize()
    unsetTabSizing()

# Font Size -----------------------

setFontSize = (currentFontSize) ->
  root.style.fontSize = "#{currentFontSize}px"

unsetFontSize = ->
  root.style.fontSize = ''


# Tab Sizing -----------------------

setTabSizing = (tabSizing) ->
  root.setAttribute("theme-#{themeName}-tabsizing", tabSizing.toLowerCase())

unsetTabSizing = ->
  root.removeAttribute("theme-#{themeName}-tabsizing")
