(function() {
  (function(window) {
    var document, getDiff, taz, tazIt;
    document = window.document;
    window.taz = taz = function(classId) {
      var el, _i, _len, _ref, _results;
      if (classId == null) {
        classId = 'taz';
      }
      _ref = document.getElementsByClassName(classId);
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        el = _ref[_i];
        _results.push(tazIt(el));
      }
      return _results;
    };
    getDiff = function() {
      var hours, minutes, n, utc, _ref;
      _ref = [new Date, new Date], n = _ref[0], utc = _ref[1];
      hours = n.getHours() - utc.getUTCHours();
      minutes = n.getMinutes() - utc.getUTCMinutes();
      return {
        hours: hours,
        minutes: minutes
      };
    };
    return tazIt = function(el) {
      var d, diff;
      d = new Date;
      diff = getDiff();
      d.parse(el.innerHTML);
      return el.innerHTML = d.getHours() + diff.hours + ':' + d.getMinutes() + diff.minutes;
    };
  })(window);

}).call(this);
