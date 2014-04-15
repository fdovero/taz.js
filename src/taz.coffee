((window, document) ->
    document = window.document

    class Taz
        constructor: (@classId = 'taz')->
        test: -> alert "test"

    window.taz = new Taz()
      
) window, document;
