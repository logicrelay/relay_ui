module.exports = {
  content: [
    "./lib/rui/**/*.rb",
    "./app/javascript/**/*.js"
  ],
  theme: {
    extend: {},
  },
  plugins: [],
  experimental: {
    optimizeUniversalDefaults: true
  },
  prefix: "rui:"
}