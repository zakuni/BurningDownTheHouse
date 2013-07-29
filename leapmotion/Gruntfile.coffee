module.exports = (grunt)->
  grunt.initConfig
    pkg: grunt.file.readJSON 'package.json'
    watch:
      coffee:
        files: ['coffee/**/*.coffee']
        tasks: 'coffee'
      jade:
        files: ['*.jade']
        tasks: 'jade'
    coffee:
      compile:
        files: [
          expand: true
          cwd: 'coffee/'
          src: ['**/*.coffee']
          dest: 'Resources/'
          ext: '.js'
        ]
    jade:
      compile:
        files: [
          expand: true
          cwd: './'
          src: ['*.jade']
          dest: './'
          ext: '.html'
        ]
        options:
          pretty: true

  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-jade'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.registerTask 'default', ['watch']
  return