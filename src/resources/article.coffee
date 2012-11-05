BaseChild = require __dirname + '/base_child'
Metafields = require __dirname + '/metafield'

class Article extends BaseChild
	parent: "/blogs"
	slug: "article"
	child: "/articles"

	constructor: (site) ->
		super(site)


module.exports = Article
