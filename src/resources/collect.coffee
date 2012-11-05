Base = require __dirname + '/base'

class Collect extends Base
	slug: "collect"
	prefix: "/collects"

	constructor: (site) ->
		super(site)



module.exports = Collect
