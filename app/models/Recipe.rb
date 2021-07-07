# #allergens should return all of the Ingredients
# in this recipe that are allergens for Users in
# our system.

class Recipe
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def recipe_cards
    RecipeCard.all.select { |rc| rc.recipe == self }
  end

  def users
    recipe_cards.map(&:user)
  end

  def user_count
    users.length
  end

  def self.most_popular
    self.all.max_by(&:user_count)
  end

  def recipe_ingredients
    RecipeIngredient.all.select { |ri| ri.recipe == self }
  end

  def ingredients
    recipe_ingredients.map(&:ingredient).uniq
  end

  def add_ingredients(ingredients)
    ingredients.map { |i| RecipeIngredient.new(self, i) }
  end

#allergens should return all of the Ingredients in this
# recipe that are allergens for Users in our system.

  def allergens
    allergens = users.map(&:allergens).flatten.uniq
    allergens & ingredients
  end

end
