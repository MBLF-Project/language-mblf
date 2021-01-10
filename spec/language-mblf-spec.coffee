# If you want an example of language specs, check out:
# https://github.com/atom/language-javascript/blob/master/spec/javascript-spec.coffee

describe "Mblf grammar", ->
  grammar = null

  beforeEach ->
    atom.config.set('core.useTreeSitterParsers', false)

    waitsForPromise ->
      atom.packages.activatePackage("language-mblf")

    runs ->
      grammar = atom.grammars.grammarForScopeName("source.mblf")

  it "parses the grammar", ->
    expect(grammar).toBeTruthy()
    expect(grammar.scopeName).toBe "source.mblf"
