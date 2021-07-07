class User
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
    RecipeCard.all.select { |rc| rc.user == self }
  end

  def recipes
    recipe_cards.map(&:recipe)
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(recipe, self, date, rating)
  end

  def top_three_recipes
    recipe_cards.sort_by(&:rating).reverse.first(3).map(&:recipe)
  end

  def most_recent_recipe
    recipes.last
  end

  def declare_allery(ingredient)
    Allergy.new(self, ingredient)
  end

  def allergies
    Allergy.all.select { |a| a.user == self }
  end

  def allergens
    allergies.map(&:ingredient).uniq
  end

end
