(function() {
  (function(window) {
    var document, taz;
    document = window.document;
    window.taz = taz = function(params) {
      var el, _i, _len, _ref, _results;
      if (params.classId == null) {
        params.classId = "taz";
      }
      if (params.offset == null) {
        params.offset = 0;
      }
      _ref = document.querySelectorAll(params.classId);
      _results = [];
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        el = _ref[_i];
        _results.push(tazIt(el, params.offset));
      }
      return _results;
    };
    this.getDiff = function() {
      var hours, minutes, n, utc, _ref;
      _ref = [new Date, new Date], n = _ref[0], utc = _ref[1];
      hours = n.getHours() - utc.getUTCHours();
      minutes = n.getMinutes() - utc.getUTCMinutes();
      return {
        hours: hours,
        minutes: minutes
      };
    };
    return this.tazIt = function(el) {
      var d, diff, h, m;
      d = new Date;
      diff = getDiff();
      d.parse(el.innerHTML);
      h = d.getHours() + diff.hours + params.offset;
      m = d.getMinutes() + diff.minutes;
      console.log(h + ':' + m);
      return el.innerHTML = h + ':' + m;
    };
  })(window);

}).call(this);
