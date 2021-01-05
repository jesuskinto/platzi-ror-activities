const { environment } = require('@rails/webpacker')

const Webpack = require('webpack')
environment.plugins.prepend('Provide', 
new Webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    'window.jQuery': 'jquery',
    Popper: ['popper.js', 'default']
}))

module.exports = environment
