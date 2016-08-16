@app.controller 'RecipesCtrl', ['$rootScope', ($rootScope) ->
  $rootScope.currentRecipe ||= null
  $rootScope.allRecipes ||= []
] # RecipesCtrl
