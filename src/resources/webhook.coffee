Base = require __dirname + '/base'
Metafields = require __dirname + '/metafield'

class WebHook extends Base
	slug: "webhook"
	prefix: "/webhooks"

	constructor: (site) ->
		@metafields = new Metafields(@prefix, site)
		super(site)
		

module.exports = WebHook