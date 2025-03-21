const execSync = require('child_process').execSync;
const output = execSync('bundle show relay_ui', { encoding: 'utf-8' });

module.exports = {
  content: [
    "./app/**/*.{erb,html,rb,css,js}",
    output.trim() + '/lib/rui/**/*.{rb}'
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}