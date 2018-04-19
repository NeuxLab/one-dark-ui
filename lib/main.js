const root = document.documentElement
const themeName = 'one-dark-ui'

module.exports = {
  activate (state) {
    cc.config.observe(`${themeName}.fontSize`, (value) => {
      setFontSize(value)
    })

    cc.config.observe(`${themeName}.tabSizing`, (value) => {
      setTabSizing(value)
    })
  },

  deactivate () {
    unsetFontSize()
    unsetTabSizing()
  }
}

// Font Size -----------------------

function setFontSize (currentFontSize) {
  root.style.fontSize = `${currentFontSize}px`
}

function unsetFontSize () {
  root.style.fontSize = ''
}

// Tab Sizing -----------------------

function setTabSizing (tabSizing) {
  root.setAttribute(`theme-${themeName}-tabsizing`, tabSizing.toLowerCase())
}

function unsetTabSizing () {
  root.removeAttribute(`theme-${themeName}-tabsizing`)
}
