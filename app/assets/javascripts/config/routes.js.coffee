# app/assets/javascripts/config/routes.js.coffee
@app.config ['$stateProvider', '$urlRouterProvider', ($stateProvider, $urlRouterProvider) ->

  $urlRouterProvider
    .otherwise('/404')
  # $urlRouterProvider

  $stateProvider
    .state 'home',
      url: ''
      controller: 'ApplicationCtrl'
    # home
  # $stateProvider
] # config
