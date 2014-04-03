module.exports = (grunt) ->
	grunt.initConfig
		pkg: grunt.file.readJSON 'package.json'
		cfg:
			path:
				src: "frontend/src"
				#build: "frontend/build"
				build: "webapp"
				dist: "webapp"
				test: "frontend/test"

		coffee:
			compile:
				files: [
					{
						expand: true
						cwd: "<%=cfg.path.src%>/js"
						src: ["**/*.coffee"]
						dest: "<%=cfg.path.build%>/js"
						ext: ".js"
					}
				]

		less:
			build:
				options:
					yuicompress: true
				files:[
					{
						expand: true
						cwd: "<%=cfg.path.src%>/css"
						src: ["**/*.less", '!**/*.mixin.less'] # mixin的less文件不参与编译
						dest: '<%=cfg.path.build%>/css'
						ext: ".css"
					}
				]

		cssmin:
			minify:
				files: [
					{
						expand: true
						cwd: '<%=cfg.path.build%>/css'
						src: ['**/*.css', '!**/*.min.css']
						dest: '<%=cfg.path.build%>/css'
						ext: '.css'
					}
				]

		uglify:
			options:
				compress: true
				dot: false
				report: "gzip"
				mangle: {
					except: ['jQuery', 'seajs', 'define', 'modules',  'lib', 'exports', 'require']
				}
				banner: """
					/**Generate at <%=grunt.template.today("yyyy-mm-dd")%>**/
				"""
			build:
				files:[
					{
						expand: true
						cwd: "<%=cfg.path.build%>/js"
						src: ["**/*.js", "!**/*.min.js"]
						dest: "<%=cfg.path.build%>/js"
					}
				]

		copy:
			html:
				files: [
					{
						expand: true
						cwd: "<%=cfg.path.src%>/htmls"
						src: "**/*"
						dest: "<%=cfg.path.build%>/htmls"
					}
				]
			js:
				files: [
					{
						expand: true
						cwd: "<%=cfg.path.src%>/js"
						src: ["**/*.js", "**/*.json", "**/*.map"]
						dest: "<%=cfg.path.build%>/js"
					}
				]
			css:
				files: [
					{
						expand: true
						cwd: "<%=cfg.path.src%>/css"
						src: ["**/*.css"]
						dest: "<%=cfg.path.build%>/css"
					}
				]
			swf:
				files: [
					{
						expand: true
						cwd: "<%=cfg.path.src%>/swf"
						src: ["**/*"]
						dest: "<%=cfg.path.build%>/swf"
					}
				]
			image:
				files: [
					{
						expand: true
						cwd: "<%=cfg.path.src%>/image"
						src: "**"
						dest: "<%=cfg.path.build%>/image"
					}
				]
			lib:
				files: [
					{
						expand: true
						cwd: "<%=cfg.path.src%>/lib"
						src: ["**","!**/*.coffee", "!**/*.less"]
						dest: "<%=cfg.path.build%>/lib"
					}
				]
			view:
				files: [
					{
						expand: true
						cwd: "<%=cfg.path.src%>/WEB-INF/view"
						src: "**"
						dest: "<%=cfg.path.build%>/WEB-INF/view"
					}
				]
			# build:
			# 	files: [
			# 		{
			# 			expand: true
			# 			cwd: "<%=cfg.path.build%>"
			# 			src: "**"
			# 			dest: "<%=cfg.path.dist%>"
			# 		}
			# 	]

		clean:
			build: ["<%=cfg.path.build%>"]
			dist:{
				files:[
					{
						expand: true
						cwd: "<%=cfg.path.dist%>"
						dot: true
						src: [
							"{image,lib,js,css,swf}/**/*"
							"!WEB-INF/classes"
							"!WEB-INF/web.xml"
							"!WEB-INF/webserver-servlet.xml"
							"WEB-INF/view/*"
						]
					}
				]
			}

		watch:
			live:
				files: "<%=cfg.path.src%>/**"
				tasts: ['build']
				options:
					interrupt: true
					debounceDelay: 1000

		require('load-grunt-tasks')(grunt)

		grunt.registerTask 'build', [
			"clean:build", "less:build", "coffee", "copy", "cssmin"
			#, "uglify" # js 压缩
		]
		# grunt.registerTask 'dist', ["build","copy:build"]
		# grunt.registerTask 'dev', ["watch:live"]