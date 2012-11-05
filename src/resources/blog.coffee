Base = require __dirname + '/base'
Metafields = require __dirname + '/metafield'

class Blog extends Base
	slug: "blog"
	prefix: "/blogs"

	constructor: (site) ->
		@metafields = new Metafields(@prefix, site)
		super(site)



module.exports = Blog
