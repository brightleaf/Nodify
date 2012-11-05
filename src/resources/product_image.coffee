BaseChild = require __dirname + '/base_child'
Metafields = require __dirname + '/metafield'

class ProductImage extends BaseChild
	parent: "/products"
	slug: "image"
	child: "/images"

	constructor: (site) ->
		super(site)


module.exports = ProductImage
