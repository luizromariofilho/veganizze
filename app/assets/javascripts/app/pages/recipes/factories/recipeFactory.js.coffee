# app/assets/javascripts/app/pages/recipes/factories/recipeFactory.js.coffee
@app.factory 'RecipeFactory', ['$http', '$q', ($http, $q) ->
  url = '/recipes'
  deferred = $q.defer()

  index = ->
    request = $http(method: 'GET', url: "#{url}.json")
    sendRequest(request)
  # index

  show = (id) ->
    request = $http(method: 'GET', url: "#{url}/#{id}.json")
    sendRequest(request)
  # show

  newRecipe = ->
    title: null
    ingredients: null
    directions: null
  # newRecipe

  create = (body) ->
    request = $http(method: 'POST', data: body, url: "#{url}.json")
    sendRequest(request)
  # create

  update = (id, body) ->
    request = $http(method: 'PUT', data: body, url: "#{url}/#{id}.json")
    sendRequest(request)
  # update

  destroy = (id) ->
    request = $http(method: 'DELETE', url: "#{url}/#{id}.json")
    sendRequest(request)
  # destroy

  sendRequest = (config) ->
    config.then((response) -> deferred.resolve(response)).catch((error) -> deferred.reject(error))
    config
  # sendRequest

  show: show
  index: index
  create: create
  update: update
  destroy: destroy
  newRecipe: newRecipe
] # RecipeFactory
