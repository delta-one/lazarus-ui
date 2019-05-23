describe "Lazarus UI theme", ->
  beforeEach ->
    waitsForPromise ->
      atom.packages.activatePackage('lazarus-ui')

  it "allows the font size to be set via config", ->
    expect(document.documentElement.style.fontSize).toBe ''

    atom.config.set('lazarus-ui.fontSize', '10')
    expect(document.documentElement.style.fontSize).toBe '10px'

    atom.config.set('lazarus-ui.fontSize', 'Auto')
    expect(document.documentElement.style.fontSize).toBe ''

  it "allows the layout mode to be set via config", ->
    expect(document.documentElement.getAttribute('theme-lazarus-ui-layoutmode')).toBe 'auto'

    atom.config.set('lazarus-ui.layoutMode', 'Spacious')
    expect(document.documentElement.getAttribute('theme-lazarus-ui-layoutmode')).toBe 'spacious'
