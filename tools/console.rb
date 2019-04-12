require_relative '../config/environment.rb'

mashed_potato = Recipe.new("Mashed Potato")
jacket_potato = Recipe.new("Jacket Potato")
toast = Recipe.new("Bread")

potatoes = Ingredient.new("Potatoes")
bread_loaf = Ingredient.new("Bread Loaf")
butter = Ingredient.new("Butter")

recipe_ingredient_1 = RecipeIngredient.new(potatoes, mashed_potato)
recipe_ingredient_2 = RecipeIngredient.new(butter, mashed_potato)
recipe_ingredient_3 = RecipeIngredient.new(bread_loaf, toast)

binding.pry

"hi"