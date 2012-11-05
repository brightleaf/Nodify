Base = require __dirname + '/base'

class Theme extends Base
	slug: "theme"
	prefix: "/themes"

	constructor: (site) ->
		super(site)


module.exports = Theme
