exports.createSession = (shopname, permanent_token) ->
	new (require __dirname + "/session")(shopname, permanent_token)
