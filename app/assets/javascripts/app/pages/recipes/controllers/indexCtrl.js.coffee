@app.controller 'RecipesIndexCtrl', ['$scope', '$rootScope', 'RecipeFactory', ($scope, $rootScope, RecipeFactory) ->

  RecipeFactory.index().then (response) ->
    $rootScope.allRecipes = response.data
  , (error) ->
    console.error error
  # index

  $scope.destroyRecipe = (id, index) ->
    confirm = window.confirm ('Are you sure?')

    if confirm
      RecipeFactory.destroy(id).then (success) ->
        alert 'Recipe deleted.'
        $rootScope.allRecipes.splice(index, 1)
      , (error) ->
        console.error
      # destroy
    # if
  # destroyRecipe
] # RecipesIndexCtrl
