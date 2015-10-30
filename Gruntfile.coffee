module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-sass'
  grunt.loadNpmTasks 'grunt-contrib-cssmin'
  grunt.initConfig 
    sass:
      dist:
        options: 
          sourceMap: true
        files: [{
          'dist/flex-grid.css': 'src/flex-grid.sass'
        }]
        
    cssmin:
      target:
        files: [{
          expand: true,
          cwd: 'dist/',
          src: ['*.css', '!*.min.css'],
          dest: 'dist/',
          ext: '.min.css'
        }]
        
  grunt.registerTask 'default', [ 'sass', 'cssmin' ]