((window) ->
  document = window.document

  window.taz = taz = (params) ->
    params.classId = "taz" if not params.classId?
    params.offset = 0 if not params.offset?
    tazIt el, params.offset for el in  document.querySelectorAll params.classId

  @getDiff = ->
    [n, utc] = [new Date, new Date]
    hours = n.getHours() - utc.getUTCHours()
    minutes = n.getMinutes() - utc.getUTCMinutes()
    return {hours: hours, minutes: minutes}

  @tazIt = (el) ->
    d = new Date
    diff = getDiff()
    d.parse(el.innerHTML)
    h = d.getHours() + diff.hours + params.offset
    m = d.getMinutes() + diff.minutes
    console.log h + ':' + m
    el.innerHTML = h + ':' + m

) window