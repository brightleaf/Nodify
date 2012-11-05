Base = require __dirname + '/base'

class CustomCollection extends Base
	slug: "custom_collection"
	prefix: "/custom_collections"

	constructor: (site) ->
		super(site)



module.exports = CustomCollection
