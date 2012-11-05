BaseChild = require __dirname + '/base_child'
Metafields = require __dirname + '/metafield'

class Province extends BaseChild
	parent: "/countries"
	slug: "province"
	child: "/provinces"

	constructor: (site) ->
		super(site)


module.exports = Province
