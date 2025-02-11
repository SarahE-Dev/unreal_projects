const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  purge: ['./app/views/**/*.{html.erb,js.erb}', './app/javascript/**/*.{js,jsx,ts,tsx}', './app/assets/stylesheets/**/*.css'],
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
