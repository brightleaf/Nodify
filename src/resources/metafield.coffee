BaseChild = require __dirname + '/base_child'

class Metafield extends BaseChild
	slug: "metafield"
	child: "/metafields"

	constructor: (@parent, site) ->
		super(site)

module.exports = Metafield