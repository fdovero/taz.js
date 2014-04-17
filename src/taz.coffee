((window) ->
    document = window.document

    window.taz = taz = (classId = 'taz') ->
        tazIt el for el in  document.getElementsByClassName classId

    getDiff = ->
        [n, utc] = [new Date, new Date]
        return {hours: n.getHours() - utc.getUTCHours(), minutes: n.getMinutes() - utc.getUTCMinutes()}

    tazIt = (el) ->
        d = new Date
        diff = getDiff()
        d.parse(el.innerHTML)
        el.innerHTML = d.getHours() + diff.hours + ':' + d.getMinutes()+diff.minutes
      
) window;
