module.exports =

	siteName: 'Gridsome'

	plugins: [
		...(require './localPluginsHelper') [
			'sass-patch'
			use: 'whitelist'
			options: [
				/\.(s?c|sa)ss$/
				/^vuetify/
			]
			'coffeescript'
			'vuetify'
		]
		'gridsome-plugin-pug'
		use: '@gridsome/source-filesystem'
		options:
			path: 'blog/**/*.md'
			typeName: 'Post'
		use: '@gridsome/source-filesystem'
		options:
			path: 'person/'
			typeName: 'Person'
		'gridsome-plugin-netlify-cms'
		# '~/plugins/print-webpack-config'
	]