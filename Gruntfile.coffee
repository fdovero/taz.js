module.exports = (grunt) ->
  #Project configuration.
  grunt.initConfig
    coffeelint:
      gruntfile: 'Gruntfile.coffee'
      src: 'src/*.coffee'
      options:
        'no_trailing_whitespace':
          'level': 'error'
    coffee:
      compile:
        options:
          join: true
        files:
          'taz.js': 'src/*.coffee'
    watch:
      coffee:
        files: 'src/*.coffee'
        tasks: ['compile']

  # Load the plugin that provides the "lint" task.
  grunt.loadNpmTasks 'grunt-coffeelint'
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  #Default task(s).
  grunt.registerTask 'lint', ['coffeelint']
  grunt.registerTask 'compile', ['coffeelint:src','coffee']
  grunt.registerTask 'default', ['watch']
