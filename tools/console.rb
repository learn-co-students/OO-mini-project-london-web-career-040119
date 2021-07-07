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

crumble.add_ingredients([apple, milk])
soup.add_ingredients([milk, tomato])
ivan.add_recipe_card(crumble, '02/04/2019', 5)
ivan.add_recipe_card(soup, '02/04/2019', 5)
# harriet.add_recipe_card(soup, '15/01/2019', 3)
harriet.add_recipe_card(crumble, '06/09/2018', 4)
harriet.add_recipe_card(pizza, '06/09/2018', 1)
harriet.add_recipe_card(taco, '06/09/2018', 4)
ivan.declare_allery(milk)
harriet.declare_allery(tomato)
harriet.declare_allery(tomato)
harriet.declare_allery(milk)
ivan.declare_allery(tomato)
garfield.declare_allery(tomato)

binding.pry
