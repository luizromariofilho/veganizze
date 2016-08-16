@app.controller 'RecipesEditCtrl', ['$scope', '$rootScope', '$state', '$stateParams', 'RecipeFactory', ($scope, $rootScope, $state, $stateParams, RecipeFactory) ->
  RecipeFactory.show($stateParams.id).then (response) ->
    $rootScope.currentRecipe = response.data
  , (error) ->
    console.error error
  # show

  $scope.commitRecipe = (recipe) ->
    RecipeFactory.update($stateParams.id, recipe).then (success) ->
      alert 'Recipe updated successfully!'
      $state.go 'recipes.index'
    , (error) ->
      console.error error
    # create
  # commitRecipe
] # RecipesEditController
