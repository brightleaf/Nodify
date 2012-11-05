Blog = require __dirname + '/resources/blog'
Product = require __dirname + '/resources/product'
Order = require __dirname + '/resources/order'
Resource = require __dirname + '/resource'

class Session

  constructor:(@store_name, @persistent_token)->
    @protocol = 'https'
    @registerOAuthToken()
    @blog = new Blog(@site())
    @product = new Product(@site())
    @order = new Order(@site())


  onRedirectUrl:(url, cb)->
    url.replace /\?code=[\w\d]+/, (code)=>
      temp_token = code.split('=')[1]
      @requestPermanentAccessToken temp_token, (@persistent_token)=>
        @registerOAuthToken()
        process.nextTick ->
          do cb

  requestPermanentAccessToken:(temp_token, cb)->
    params = "client_id=#{@api_key}&client_secret=#{@secret}&code=#{temp_token}"
    Resource.post "#{@site()}/oauth/access_token", 'oauth', params, (err, response)=>
      if err?
        throw err
        return
      response = JSON.parse response
      process.nextTick ->
        cb response.access_token


  site:()->
    "#{@protocol}://#{@store_name}.myshopify.com/admin"

  registerOAuthToken:()->
    if @persistent_token isnt null
      Resource.setOAuthToken @persistent_token

module.exports = Session
