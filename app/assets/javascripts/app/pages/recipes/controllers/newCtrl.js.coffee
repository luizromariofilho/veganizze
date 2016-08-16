@app.controller 'RecipesNewCtrl', ['$scope', '$rootScope', '$state', 'RecipeFactory', ($scope, $rootScope, $state, RecipeFactory) ->
  $rootScope.currentRecipe = RecipeFactory.newRecipe() if $rootScope.currentRecipe is null

  $scope.commitRecipe = (recipe) ->
    RecipeFactory.create(recipe).then (success) ->
      $rootScope.currentRecipe = null
      alert 'Recipe created successfully!'
      $rootScope.allRecipes.push success
      $state.go 'recipes.index'
    , (error) ->
      console.error error
    # create
  # commitRecipe
] # RecipesNewCtrl
