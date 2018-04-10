themeName = 'one-dark-ui'

describe "#{themeName} theme", ->
  beforeEach ->
    waitsForPromise ->
      cc.packages.activatePackage(themeName)

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe '12px'

    atom.config.set("#{themeName}.fontSize", '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

  it "allows the tab sizing to be set via config", ->
    atom.config.set("#{themeName}.tabSizing", 'Maximum')
    expect(document.documentElement.getAttribute("theme-#{themeName}-tabsizing")).toBe 'maximum'

  it "allows the tab sizing to be set via config", ->
    atom.config.set("#{themeName}.tabSizing", 'Minimum')
    expect(document.documentElement.getAttribute("theme-#{themeName}-tabsizing")).toBe 'minimum'
