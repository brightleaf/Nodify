Base = require __dirname + '/base'
Metafields = require __dirname + '/metafield'

class Page extends Base
	slug: "page"
	prefix: "/pages"

	constructor: (site) ->
		@metafields = new Metafields(@prefix, site)
		super(site)
		

	events: (id, params, callback) ->
		[params, callback] = [callback, params] if typeof params is 'function'
		callback new Error 'missing id' unless id?
		url = @resource.queryString "#{@prefix}/#{id}/events", params
		@resource.get url, "events", callback



module.exports = Page