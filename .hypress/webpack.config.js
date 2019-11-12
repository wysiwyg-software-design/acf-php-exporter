const path = require('path');

module.exports = {
	entry: {
		'public': ['./src/js/index.js', './src/scss/style.scss'],
		'private': ['./src/js/index-private.js', './src/scss/style-private.scss']
	},
	output: {
		path: path.resolve(__dirname, '../src')
	},
	module: {
		rules: [
			{
				test: /.scss$/,
				use: [
					{
						loader: 'file-loader',

						options: {
							name: '[name].css',
							outputPath: './'
						}
					},
					{
						loader: 'extract-loader'
					},
					{
						loader: 'css-loader',
						options: {
							url: false
						}
					},
					{
						loader: 'postcss-loader',
						options: {
							plugins: () => {}
						}
					},
					{
						loader: 'sass-loader'
					}
				]
			}
		]
	},
	performance: { hints: false },
	watchOptions: {
		poll: 1000
	}
};