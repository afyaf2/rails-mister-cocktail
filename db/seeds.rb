require "json"
require "rest-client"

cocktail_ingredients = RestClient.get "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"

ingredients_id = JSON.parse(cocktail_ingredients)


ingredients_id["drinks"].each do |id|
  ingredient = Ingredient.new(
    name: id["strIngredient1"],
  )
  ingredient.save
end
