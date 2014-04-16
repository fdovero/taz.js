((window) ->
    document = window.document

    window.taz = taz = (classId = 'taz') ->
        diff = getDiff()
        el = document.getElementsByClassName classId

    getDiff = ->
        [n, utc] = [new Date, new Date]
        return {hours: n.getHours() - utc.getUTCHours(), minutes: n.getMinutes() - utc.getUTCMinutes()}
      
) window;
