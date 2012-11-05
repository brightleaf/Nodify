Base = require __dirname + '/base'
Metafields = require __dirname + '/metafield'

class ProductSearchEngine extends Base
	slug: "product_search_engine"
	prefix: "/product_search_engines"

	constructor: (site) ->
		super(site)
		


module.exports = ProductSearchEngine