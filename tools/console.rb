require_relative '../config/environment.rb'

crumble = Recipe.new('Crumble')
soup = Recipe.new('Soup')
pizza = Recipe.new('Pizza')
taco = Recipe.new('Taco')

ivan = User.new('Ivan')
harriet = User.new('Harriet')
garfield = User.new('Garfield')

tomato = Ingredient.new('Tomato')
apple = Ingredient.new('Apple')
flour = Ingredient.new('Flour')
milk = Ingredient.new('Milk')
cheese = Ingredient.new('Cheese')

crumble.add_ingredients([apple])
ivan.add_recipe_card(crumble, '02/04/2019', 5)
harriet.add_recipe_card(soup, '15/01/2019', 3)
harriet.add_recipe_card(crumble, '06/09/2018', 4)
harriet.add_recipe_card(pizza, '06/09/2018', 1)
harriet.add_recipe_card(taco, '06/09/2018', 4)

binding.pry
