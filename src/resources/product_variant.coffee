BaseChild = require __dirname + '/base_child'
Metafields = require __dirname + '/metafield'

class ProductVariant extends BaseChild
	parent: "/products"
	slug: "variant"
	child: "/variants"

	constructor: (site) ->
		super(site)


module.exports = ProductVariant


