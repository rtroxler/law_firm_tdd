module.exports = {
  content: [
    './app/views/**/*.html.haml',
    './app/helpers/**/*.rb',
    './app/assets/stylesheets/**/*.css',
    './app/javascript/**/*.js'
  ],
  options: {
    // This technically catches a bit more than we need, but it works well enough
    defaultExtractor: content => content.match(/[A-Za-z0-9-_:/]+/g) || []
  },
  plugins: [require('daisyui')]
}
