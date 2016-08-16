@app.controller 'RecipeShowCtrl', ['$rootScope', '$stateParams', 'RecipeFactory', ($rootScope, $stateParams, RecipeFactory) ->
  RecipeFactory.show($stateParams.id).then (response) ->
    $rootScope.currentRecipe = response.data
  , (error) ->
    console.error error
  # show
] # RecipeShowController
