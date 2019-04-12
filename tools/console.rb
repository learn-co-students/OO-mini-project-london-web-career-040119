require_relative '../config/environment.rb'

crumble = Recipe.new("Crumble")
soup = Recipe.new("Soup")

ivan = User.new("Ivan")
harriet = User.new("Harriet")

tomato = Ingredient.new("Tomato")
apple = Ingredient.new("Apple")

rc1 = RecipeCard.new(crumble, ivan, "02/04/2019", 5)
rc2 = RecipeCard.new(soup, harriet, "15/01/2019", 3)
rc3 = RecipeCard.new(crumble, harriet, "06/09/2018", 4)

crumble.add_ingredients([apple])

binding.pry
